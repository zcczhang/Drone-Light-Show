% code of drwa complicated graph
clear
clc
A=imread('/Users/apple/Desktop/High School/HiMCM/HiMCM 2017 A/Images/dragon.png');
A(find(A<150))=1;
A(find(A>=150))=0;
A=double(A);
A=A(:,:,1);

%imshow(A)
[x,y]=size(A);
B=zeros(x,y);
for i=2:x-1;
    for j=2:y-1;
        if A(i+1,j)==0 | A(i-1,j)==0 | A(i,j+1)==0 | A(i,j-1)==0
        %if A(i+1,j)+A(i-1,j)+A(i,j+1)+A(i,j-1)<3
            B(i,j)=1;
        end
        if A(i,j)==0;
            B(i,j)=0;
        end
    end
end
%imshow(B)
n=sum(sum(B));
zero=find(B(1,:)==1);
zero=zero';
[sizex sizey]=size(zero);
zero_indexs=[ones(sizex,1) zero];
for i=2:x
zero=find(B(i,:)==1);
zero=zero';
[sizex sizey]=size(zero);
zero_indexs=[zero_indexs;i*ones(sizex,1) zero];
end 

distance=zeros(n,n);
for i=1:n
    for j=1:n
        x0=zero_indexs(i,1)-zero_indexs(j,1);
        y0=zero_indexs(i,2)-zero_indexs(j,2);
        distance(i,j)=x0^2+y0^2;
    end
end
distance=distance+eye(n,n)*max(max(distance));
zero_xin=ones(n,2);
zero_xin(1,:)=zero_indexs(1,:);
ymin=1;
for i=2:n
    Dis=distance(ymin,:);
    
    [xmin yminmin]=find(Dis==min(min(Dis)));
    distance(ymin,:)=max(max(distance));
    distance(:,ymin)=max(max(distance));
    ymin=yminmin(1,1);
    zero_xin(i,:)=zero_indexs(ymin,:);
end

shumu=500;
bianhao=linspace(1,n,shumu);
bianhao=round(bianhao);
zero_xinxin=zero_xin(bianhao,:);
tu=zero_xinxin;
plot(tu(:,1),tu(:,2))
C=zeros(x,y);
for i=1:shumu
    qwe=tu(i,1);
    ewq=tu(i,2);
    C(qwe,ewq)=1;
end
imshow(C)