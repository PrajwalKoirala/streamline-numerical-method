close all;
numberx=200;                       
numbery=200;                               
iteration=10000;                   
dx=2/(numberx-1);                    
dy=2/(numbery-1);                    
x=0:dx:2;                   
y=0:dy:2;                        


p=zeros(numbery,numberx);                 



j=2:numberx-1;
i=2:numbery-1;
for it=1:iteration
    if (mod(it,500)==0)
        fprintf("\n iteration : %d", it)
        contour(x,y,p); colorbar;
        title(['Iteration :  ',num2str(it)])
        drawnow;
    end
    pn=p;
    p(i,j)=((dy^2*(pn(i+1,j)+pn(i-1,j)))+(dx^2*(pn(i,j+1)+pn(i,j-1))))/(2*(dx^2+dy^2));

%   boundary conditions
    p(a)=0;
    p(b)=10;
    p(numberx/2:end,1)= p(numberx/2:end,2);
    p(1,numbery/2:end)= p(2,numbery/2:end); 
end

% figure;
% imagesc(p);
% colorbar;



