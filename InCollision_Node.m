function col = InCollision_Node(rob)

global checkcount;
checkcount = checkcount + 1;
col = 0;
center=[rob.xcenter;rob.ycenter];
width=rob.w;
height=rob.l;
coords = [center(1)-(width/2) center(1)-(width/2) center(1)+(width/2)  center(1)+(width/2);...
          center(2)-(height/2) center(2)+(height/2) center(2)+(height/2)  center(2)-(height/2)];
x=rob.p(1); y=rob.p(2);
 if Incollision_Node1(x,y)==1
    return
     if Incollision_Node1(coords(1,1),coords(2,1))==1
        return
       if Incollision_Node1(coords(1,2),coords(2,2))==1
           return
          if Incollision_Node1(coords(1,3),coords(2,3))==1
              return
             if Incollision_Node1(coords(1,4),coords(2,4))==1
                 return
             end
          end
       end
    end
end

    
end