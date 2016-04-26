function col = InCollision_Edge(rob,p1,p2,res)

col = 0;
d = norm(p1 - p2);
m = ceil(d/res);
t = linspace(0,1,m);
for i=2:(m-1)
    p = ceil((1-t(i))*p1 + t(i)*p2); %calculate configuration
    rob.p = p;
    col = is_valid_configuration(rob); 
    if col == 1
        return;
    end
end