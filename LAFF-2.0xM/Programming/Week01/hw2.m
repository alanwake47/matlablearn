a = [-97,-45;30,15];
v = [102,6;20,36
4,18;0,-59
0,-6;-2,-30
1,48;-3,-39
9,35;6,21
-20,-4;1,26
0,31;-12,-2
-98,-8;-9,-13];

for i=1:2:15
    if (a(1,2) < v(i,2)) && (abs(a(1,2)) > abs(v(i,2))) || (a(1,2) > v(i,2)) && (abs(a(1,2)) < abs(v(i,2)))
        a(1,2) = 60 + v(i,2) + a(1,2);
        if a(1,2)>60
            a(1,2) = a(1,2) - 60;
            a(1,1) = v(i,1) + a(1,1);
        else
            a(1,1) = v(i,1) - 1 + a(1,1);
        end
    else
        a(1,2) = v(i,2) + a(1,2);
        if a(1,2) > 60
            a(1,2) = a(1,2) - 60;
            a(1,1) = v(i,1) + a(1,1) +1;
        else
        a(1,1) = v(i,1) + a(1,1);
        end
    end

    if (a(2,2) < v(i+1,2)) && (abs(a(2,2)) > abs(v(i+1,2))) ||  (a(2,2) > v(i+1,2)) && (abs(a(2,2)) < abs(v(i+1,2)))
        a(2,2) = 60 + v(i+1,2) + a(2,2);
        if a(2,2)>60
            a(2,2) = a(2,2) - 60;
            a(2,1) = v(i+1,1) + a(2,1);
        else
            a(2,1) = v(i+1,1) - 1 + a(2,1);
        end
    else
        a(2,2) = v(i+1,2) + a(2,2);
        if a(2,2)>60
            a(2,2) = a(2,2) - 60;
            a(2,1) = v(i+1,1) + a(2,1) +1;
        else
        a(2,1) = v(i+1,1) + a(2,1);
        end
    end
    a
end








