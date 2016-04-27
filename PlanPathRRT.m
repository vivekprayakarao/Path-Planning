function P = PlanPathRRT(param,p_start,p_goal)

global iterations
P = [];
rrt = {};
rrt = AddNode(rrt,p_start,0);
iter = 1;
qs=p_start;
while norm(qs-p_goal)>param.thresh %&& iter <= param.maxiters
    
    x=0;
    y=0;
    th=0;
    a = 0;
    b = 200;
    p=[x;y;th];
    p(1) = (b-a)*rand(1) + a;
    p(2) = (b-a)*rand(1)+ a;
    p(3) = 180*rand(1);
 
    mindist=norm(rrt{1}.p-p);
    imin=1;
    l=rrt{1}.p;
        for i=2:length(rrt)
            dist = norm(rrt{i}.p-p);
            if (dist < mindist)
                mindist = dist;
                imin = i;
                l = rrt{i}.p;
            end
        end

   qs=stopping_config(l,p);
   if qs~=l
       rrt = AddNode(rrt,qs,imin); % add p to T with parent l
       dist = norm(qs-p_goal);
   
  %  fprintf('Nodes:   %d, Distance: %.1f, Iterations: %d/1000\n',length(rrt),dist,iter)
       plot([qs(1);rrt{imin}.p(1)],[qs(2);rrt{imin}.p(2)],'m','LineWidth',1);
       if (dist < 2*param.thresh)
           qs=stopping_config(qs,p_goal);
           iterations = iter
        % add qgoal to T with parent q and exit with success
            rrt = AddNode(rrt,p_goal,length(rrt));
        % construct Q here:
            i = length(rrt);
            P(:,1) = rrt{i}.p;
            while 1
                i = rrt{i}.iPrev;
                if i == 0
                    return
                end
                P = [rrt{i}.p P];
            end
       end
   end

    iter = iter + 1;
end
iterations = iter - 1

function rrt = AddNode(rrt,p,iPrev)
node.p = p;
node.iPrev = iPrev;
rrt{end+1} = node;