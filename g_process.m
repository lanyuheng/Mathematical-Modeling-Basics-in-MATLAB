
function g2=g_process(pic)
[x,y,z]=size(pic)
for k=1:z
g2(:,:,k)=255-pic(:,:,k);
g2(:,:,k)=im2bw(g2(:,:,k));
end
