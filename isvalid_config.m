function col=isvalid_config(p)
    col=0;
    center=[p(1);p(2)];
    width=30;
    height=10;
    coords = [center(1)-(width/2) center(1)-(width/2) center(1)+(width/2)  center(1)+(width/2);...
          center(2)-(height/2) center(2)+(height/2) center(2)+(height/2)  center(2)-(height/2)];
    theta = p(3)*(pi/180);
    R = [cos(theta) sin(theta);...
    -sin(theta) cos(theta)];
    coords = R*(coords-repmat(center,[1 4]))+repmat(center,[1 4]);
    
    x=p(1); y=p(2);
    if (10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70)
        x=coords(1,1); y=coords(2,1);
        if (10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70)
            x=coords(1,2); y=coords(2,2);
            if (10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70)
                x=coords(1,3); y=coords(2,3);
                if (10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70)
                    x=coords(1,4); y=coords(2,4);
                    if (10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70)
                        if ~(edge_collision(coords))
                            col=1;
                        end
                    end
                end
            end
        end
    end
end
                