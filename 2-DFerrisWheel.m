% 2-D Ferris Wheel
alpha=0:pi/30:2*pi;    
 R=2;                 
 x=R*cos(alpha);
 y=R*sin(alpha);
 plot(x,y,'.','MarkerSize',20)
 axis equal
hold on
alpha=0:pi/30:2*pi;    
R=1.9;                 
x=R*cos(alpha);
y=R*sin(alpha);
plot(x,y,'.','MarkerSize',20)
axis equal
m=1:12;
x0=[];
y0=[];
for i=1:6
x=sin(2*pi/12*m)*i*2/7;
y=cos(2*pi/12*m)*i*2/7;
x0=[x0 x];
y0=[y0 y];
end
plot(x0,y0,'.','color',[0 191 255]/255,'MarkerSize',12)
XY=[x0;y0]';
hold on
x = linspace (-0.35,0,10) ;
y = 6*x ;
plot (x,y,'.','color',[2/3 0 1],'MarkerSize',25) ;
hold on
x = linspace (0,0.35,10) ;
y= -6*x ;
plot (x,y,'.','color',[2/3 0 1],'MarkerSize',25) ;
hold on
x=0;y=0;plot(x,y,'MarkerSize',50)