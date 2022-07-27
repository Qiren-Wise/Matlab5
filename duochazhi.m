x=1:5;
y=1:3;
temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];%x*y=5*3 三行五列
figure(1); %第一个图
mesh(x,y,temps);  %曲线网格图
xi=1:0.2:5;  %插值点
yi=1:0.2:3;
zi=interp2(x,y,temps,xi,yi,'cubic');%带插值点的立方插值
figure(2);
mesh(xi,yi,zi);
figure(3);
contour(xi,yi,zi,20,'r'); %等高线 像树轮 不重叠
[i,j]=find(zi==min(min(zj)));%min（）列最小值  min（min（））所有列中最小值
x=xi(j),y=yi(i),zmin=zi(i,j)
[i,j]=find(zi==max(max(zi)));
x=xi(j),y=yi(i),zmax=zi(i,j)