function col=edge_col(coords)
    col=0;
    m=10;
    t = linspace(0,1,m);
    p1=[coords(1,1),coords(2,1)];
    p2=[coords(1,2),coords(2,2)];
    for i=2:(m-1)
        p = (1-t(i))*p1 + t(i)*p2;
        col = isvalid_point(p);
        if col == 1
            return
        end
    end
    p1=[coords(1,2),coords(2,2)];
    p2=[coords(1,3),coords(2,3)];
    for i=2:(m-1)
        p = (1-t(i))*p1 + t(i)*p2;
        col = isvalid_point(p);
        if col == 1
            return
        end
    end
    p1=[coords(1,3),coords(2,3)];
    p2=[coords(1,4),coords(2,4)];
    for i=2:(m-1)
        p = (1-t(i))*p1 + t(i)*p2;
        col = isvalid_point(p);
        if col == 1
            return
        end
    end
    p1=[coords(1,4),coords(2,4)];
    p2=[coords(1,1),coords(2,1)];
    for i=2:(m-1)
        p = (1-t(i))*p1 + t(i)*p2;
        col = isvalid_point(p);
        if col == 1
            return
        end
    end
end
