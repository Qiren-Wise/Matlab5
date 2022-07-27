x=0:2:24;
y=[12 9 9 10 18 24 28 27 25 20 18 15 13];%与x一一对应 数目相同
x1=13;
y1=interp1(x,y,x1,'spline') %interp1是一维 三次插值
xi=0:1/3600:24
yi=interp1(x,y,xi,'spline');
plot(x,y,'*',xi,yi)