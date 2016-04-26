function col=edge_collision(coords)
    col=0;
    d=10;
    X=linspace(coords(1,1),coords(1,2),d); Y=linspace(coords(2,1),coords(2,2),d);
    for i=2:d-1
        x=X(i); y=Y(i);
        if ~((10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70))
            col=1;
            return
        end
    end
    X=linspace(coords(1,2),coords(1,3),d); Y=linspace(coords(2,2),coords(2,3),d);
    for i=2:d-1
        x=X(i); y=Y(i);
        if ~((10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70))
            col=1;
            return
        end
    end
    X=linspace(coords(1,3),coords(1,4),d); Y=linspace(coords(2,3),coords(2,4),d);
    for i=2:d-1
        x=X(i); y=Y(i);
        if ~((10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70))
            col=1;
            return
        end
    end

    X=linspace(coords(1,4),coords(1,1),d); Y=linspace(coords(2,4),coords(2,1),d);
    for i=2:d-1
        x=X(i); y=Y(i);
        if ~((10<x && x<70 && 140<y && y<190) || (70<=x && x<=130 && 150<y && y<170) || (130<x && x<190 && 130<y && y<190) || (150<x && x<170 && 70<=y && y<=130) || (130<x && x<190 && 10<y && y<70))
            col=1;
            return
        end
    end
end

        
        