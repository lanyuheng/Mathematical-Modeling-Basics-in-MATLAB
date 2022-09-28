function g=cutafter(pic)
[x,y]=size(pic);
s=255*x;
for k=2:y
    u=sum(pic(:,k));
    s=[s,u];
end
m=diff(s);
b=diff(m);
b2=[0,b];
Y=0;Y2=0;
for k=2:y-2;
    z=m(:,k);
    if(s(:,k-1)==255*x)
    if(z~=0)
    if(b2(:,k)==z)
        Y=[Y,k];
    end
    end
    end
    if(s(:,k+1)==255*x)
    if(m(:,k)~=0);
    if(m(:,k)==(-b(:,k)))
        Y2=[Y2,k];
    end
    end
    end
end
[x3,y3]=size(Y)
d=Y2-Y;
dmax=max(d);
for k=1:y3-1
    g(:,:,k)=pic(:,[Y(:,k+1):(Y(:,k+1)+dmax)]);
end
end
    



    
        