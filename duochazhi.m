x=1:5;
y=1:3;
temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];%x*y=5*3 ��������
figure(1); %��һ��ͼ
mesh(x,y,temps);  %��������ͼ
xi=1:0.2:5;  %��ֵ��
yi=1:0.2:3;
zi=interp2(x,y,temps,xi,yi,'cubic');%����ֵ���������ֵ
figure(2);
mesh(xi,yi,zi);
figure(3);
contour(xi,yi,zi,20,'r'); %�ȸ��� ������ ���ص�
[i,j]=find(zi==min(min(zj)));%min��������Сֵ  min��min����������������Сֵ
x=xi(j),y=yi(i),zmin=zi(i,j)
[i,j]=find(zi==max(max(zi)));
x=xi(j),y=yi(i),zmax=zi(i,j)