function om=different5and7except4(g)
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
        d=downmax;
        k=round((rightmax2+leftmin2)/2);
    while g(d,k)==0
        d=d-1;
    end
    w=downmax-d;
    u=w/(downmax-upmin);
    if(u>0.8)
        om=1;
    elseif (u<0.2)
        om=0;
    else
        om=2;
    end