function [] = rrt_run 
    function[] = rect(x,y,l,b)
      hold on
      rectangle('Position',[x,y,l,b],'FaceColor',[0 0.5 0.5])
    end

map = figure;
axis([0,200,0,200]);
set(gca,'XTick',0:10:200)
set(gca,'YTick',10:10:200)
grid ON
rect(0,0,10,200);
rect(10,0,180,10);
rect(190,0,10,200);
rect(10,10,120,120);
rect(130,70,20,60);
rect(170,70,20,60);
rect(10,190,180,10);
rect(10,130,60,10);
rect(70,130,60,20);
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
param.thresh = 30;
param.maxiters = 5000;


P = PlanPathRRT(param,p_start,p_goal);

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
