function om=lastfor0and3and6and8and9(g,g1)
[x,y]=size(g);
upmin=819;
downmax=0;
leftmin=819;
rightmax=0;
    for m=1:x
        for n=1:y
            if(g(m,n)==0)
              if(m<upmin)
                  upmin=m;
              end
                    if(m>downmax)
                        downmax=m;
                    end
                        if(n<leftmin)
                            leftmin=n;
                        end
                            if(n>rightmax)
                                rightmax=n;
                            end
                                
            end
        end
    end
            leftmin2=819;
        rightmax2=1;
    for k=1:y
        if(g(downmax,k)==0)
            if(k<leftmin2)
                leftmin2=k;
            end
            if(k>rightmax2)
                rightmax2=k;
            end
        end
    end
   z=rightmax2+leftmin2;
   l3=round(z/2);
   h=downmax-upmin;
   d=round(h*0.35);
   l1=upmin+d;
   l2=downmax-d;
   a=diff(g1(l1,:));
   b=diff(g1(l2,:));
   g2=g1(:,l3)';
   c=diff(g2);
   upsum=sum((a==1));
   downsum=sum((b==1));
   midsum=sum((c==1));
   k=(upsum/downsum)*(upsum+downsum)+midsum;
   switch k
       case 6
           om=0;
       case 5
           om=3;
       case 4.5
           om=6;
       case 7
           om=8;
       case 9
           om=9;
   end
end


  
   
   