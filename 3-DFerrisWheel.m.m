n1=36;  % num of inner and outer circles of wheel
n2=11;  % num for wheel 'foot'
m=1:12; % num for middle line
n=6;    % num for each line
n3=5    % num for bearing
% 'foot'
xxx=[];
yyy=[];



x = linspace (0,0.35,2*n2) ;
y= -6*x ;
y0=-y;
z0=-2*y0/3.^0.5+0.1;

plot3(x,y0,z0,'.','MarkerSize',30);
xxx=[xxx x];
yyy=[yyy y0];
 hold on
x = linspace (-0.35,0,2*n2) ;
y= 6*x ;
y0=-y;
z0=-2*y0/3.^0.5+0.1;
plot3(x,y0,z0,'.','MarkerSize',30);
xxx=[xxx x];
yyy=[yyy y0];
 hold on 
 
 % Circles
alpha=linspace(0,2*pi,n1);
R=2;                 
x=R*cos(alpha); 
y=R*sin(alpha); 
y0=-y;
z0=-2*y0/3.^0.5;
 plot3(x,y0,z0,'.','MarkerSize',25) 
axis equal
xxx=[xxx x];
yyy=[yyy y0];
hold on
% middle lines
x0=[];
y0=[];
for i=1:n
x=sin(2*pi/12*m)*i*2/7;
y=cos(2*pi/12*m)*i*2/7;
x0=[x0 x];
y0=[y0 y];
end
y0=-y0;
z0=-2*y0/3.^0.5;
plot3(x0,y0,z0,'.','MarkerSize',12)
xxx=[xxx x0];
yyy=[yyy y0];
hold on
% inner circles
alpha=linspace(0,2*pi,n1);
R=1.9;                 
x=R*cos(alpha); 
y=R*sin(alpha); 
y0=-y;
z0=-2*y0/3.^0.5;
plot3(x,y0,z0,'.','MarkerSize',25) 
axis equal
xxx=[xxx x];
yyy=[yyy y0];
hold on



