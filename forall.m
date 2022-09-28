clc;clear;
d=dir('D:\项目管理\Z-归档的项目\项目\编程\2017-07 MATLAB\MATLAB训练\专题一图像数字识别\编程\*.png');
answer=99;
a=imread(d(1).name);
A=a(:,:,1);
g=cutafter(A);
g1=g_process(g);
[x,y,z]=size(g);
for k=1:z
    om=for1(g(:,:,k));
    if(om==1)
        answer=[answer,1];
    else
        answer=[answer,99];
    end
end
answer=answer([2:z+1]);
for k=1:z
    if(answer(1,k)==99)
        om=for2(g(:,:,k));
        if(om==1)
            answer(1,k)=2;
        end
    end
    if(answer(1,k)==99)
        om=different5and7except4(g(:,:,k));
        if(om==1)
            answer(1,k)=4;
        end
    end
    if(answer(1,k)==99)
        om=for5and7(g(:,:,k));
        if(om==1)
            om=different5and7except4(g(:,:,k));
            if(om==0)
                answer(1,k)=5;
            else if(om==2)
                    answer(1,k)=7;
                end
            end
        end
    end
    if(answer(1,k)==99)
        om=lastfor0and3and6and8and9(g(:,:,k),g1(:,:,k));
        switch om
            case 0
                answer(1,k)=0;
            case 3
                answer(1,k)=3;
            case 6
                answer(1,k)=6;
            case 8
                answer(1,k)=8;
            case 9
                answer(1,k)=9;
        end
    end
end
if(z==1)
answer=answer(:,1);
else
    answer=answer(:,1:z);
end
        
    
            
            
