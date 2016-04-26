function[q]=stopping_config(p1,p2)

m = 10;
t = linspace(0,1,m);
q=p2;
for i=2:(m-1)
    p = (1-t(i))*p1 + t(i)*p2;
    col = isvalid_config(p); 
    if col == 0
        q=(1-t(i-1))*p1 + t(i-1)*p2;
        break
    end
end