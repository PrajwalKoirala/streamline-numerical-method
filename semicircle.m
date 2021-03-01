nx=200;                        
ny=200;                      
dx=2/(nx-1);                 
dy=2/(ny-1);                   
x=0:dx:2;                       
y=0:dy:2;                   
[X Y] =  meshgrid(x,y);
z = X.^2 + Y.^2;

a=zeros(ny,nx);                  

% 
z(find(z>3.98)) = 1000;
z(find(z<1.01)) = 900;
a = [find(z == 900)];
b = [find(z == 1000)];
imshow(z/max(max(z)))
clearvars -except b a