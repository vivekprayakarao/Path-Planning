function hdl = drawRectangleonImageAtAngle(x,y,width, height,angle)
% To draw a rectangle at a given pixel location (center) with any width and
% height rotated at an angle
% Input: 
% img - image (gray scale or color)
% center - the pixel location of the center of rectangle 2x1 vector
% width - width of rectangle in pixels
% height - height of rectangle in pixels
% angle - rotation angle of rectangle in degrees
% output: 
% hdl = handle to figure

% Sudarshan Ramenahalli, Johns Hopkins University (sudarshan@jhu.edu)
center(1)=x;
center(2)=y;
hdl = []; hold on;
theta = angle*(pi/180);
if theta == pi/2 
    coords = [center(1)-(width/2) center(1)-(width/2) center(1)+(width/2)  center(1)+(width/2);...
        center(2)-(height/2) center(2)+(height/2) center(2)+(height/2)  center(2)-(height/2)]
    
    rectangle('Position',[x,y,width,height],'FaceColor',[0 0.5 0.5])
end
if theta == 0
    coords = [center(1)-(width/2) center(1)-(width/2) center(1)+(width/2)  center(1)+(width/2);...
        center(2)-(height/2) center(2)+(height/2) center(2)+(height/2)  center(2)-(height/2)]
    
    rectangle('Position',[x,y,height,width],'FaceColor',[0 0.5 0.5])
end
