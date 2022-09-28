function om=for1(g)
[x,y]=size(g);
upmin=460;
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
        h=downmax-upmin;
        d=rightmax-leftmin;
        k=h/d;
        if(k>=2)
            om=1;
        else
            om=0;
        end
end
    
    
    
    
                