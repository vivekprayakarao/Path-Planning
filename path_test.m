function [] = path_test 
    function h = rect(x,y,l,b)

    hold on
    rectangle('Position',[x,y,l,b],'FaceColor',[0 0.5 0.5])
    end

map = figure;
axis([0,200,0,200]);
set(gca,'XTick',0:10:200)
set(gca,'YTick',10:10:200)
grid ON
%obst=zeros(200,200);
%obst(1:10,1:200)=1;
rect(0,0,10,200);
%obst(11:190,1:10)=1;
rect(10,0,180,10);
%obst(191:200,1:200)=1;
rect(190,0,10,200);
%obst(11:130,11:130)=1;
%obst(11:70,130:135)=1;
%obst(11:70,185:190)=1;
%obst(131:150,130:135)=1;
%obst(171:190,130:135)=1;
%obst(131:190,185:190)=1;
%obst(71:130,151:155)=1;
%obst(71:130,165:170)=1;
rect(10,10,120,120);
%obst(131:150,71:130)=1;
rect(130,70,20,60);
%obst(171:190,71:130)=1;
rect(170,70,20,60);
%obst(11:190,191:200)=1;
rect(10,190,180,10);
rect(10,130,60,10);
%obst(71:130,131:150)=1;
rect(70,130,60,20);
%obst(71:130,171:190)=1;
rect(70,170,60,20);
p_start = [30;160;90];
p_goal = [160;30;0];

rob.x=30;
rob.y=160;
rob.l = 30;
rob.w = 10;
rob.the=90;

handle=draw_rob(rob);

% Parameters
param.res = 0.5;
param.thresh = 30;
param.maxiters = 5000;
param.smoothiters = 150;


P = PlanPathRRT1(rob,param,p_start,p_goal);

drawnow
for i=2:length(P)
    delete(handle)
    rob.x=P(1,i); rob.y=P(2,i); rob.the=P(3,i);
    handle=draw_rob(rob);
    drawnow
    pause(0.1)
    plot([P(1,i);P(1,i-1)],[P(2,i);P(2,i-1)],'r','LineWidth',1);
end

end
