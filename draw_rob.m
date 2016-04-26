function [handle]=draw_rob(rob)
center=[rob.x;rob.y];
hold on;


width=rob.l;
height=rob.w;
theta = rob.the*(pi/180);
coords = [center(1)-(width/2) center(1)-(width/2) center(1)+(width/2)  center(1)+(width/2);...
          center(2)-(height/2) center(2)+(height/2) center(2)+(height/2)  center(2)-(height/2)];
R = [cos(theta) sin(theta);...
    -sin(theta) cos(theta)];
rot_coords = R*(coords-repmat(center,[1 4]))+repmat(center,[1 4]);
axis([0,200,0,200]);
handle=patch([rot_coords(1,1),rot_coords(1,2),rot_coords(1,3),rot_coords(1,4)], [rot_coords(2,1),rot_coords(2,2),rot_coords(2,3),rot_coords(2,4)],'yellow');       
plot(rob.x,rob.y,'.r');