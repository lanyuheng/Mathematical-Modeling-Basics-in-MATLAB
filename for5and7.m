function om=for5and7(g)
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
        if(g(upmin,k)==0)
            if(k<leftmin2)
                leftmin2=k;
            end
            if(k>rightmax2)
                rightmax2=k;
            end
        end
    end
    z=rightmax2-leftmin2;
    k=z/(rightmax-leftmin);
    if(k>0.5)
        om=1;
    else
        om=0;
    end
end