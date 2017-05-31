% Author: Nawaf k. Abdullah
% Simulation of cream in coffee problem
% Reference: Computational Physics 2nd Edition - Nicholas J. Giordano and
% Hisao Nakanishi

numIt=input('Enter number of iterations > ');
x=200;
y=200;
grid = zeros(x,y);

for a=90:110
    for b=90:110
        grid(a,b)=1;
    end
end

for n=1:numIt
for i=1:x-1
    for j=1:y-1
        if ( grid(i,j)== 1 )
            grid(i,j)=0;
            
            r=rand(1);
            %Direction possibility #1
            if (r < 0.25)
                if ( grid(i+1,j)==1 )
                    grid(i,j)=1;
                else
                    grid(i+1,j)=1;
                end
                
            %Direction possibility #2
            elseif  (r >= 0.25 && r < 0.50)
                if ( grid(i-1,j)==1 )
                    grid(i,j)=1;
                else
                    grid(i-1,j)=1;
                end
                
            %Direction possibility #3
            elseif (r >= 0.50 && r < 0.75)
                if ( grid(i,j+1)==1 )
                    grid(i,j)=1;
                else
                    grid(i,j+1)=1;
                end
                
            %Direction possibility #4
            else 
               if ( grid(i,j-1)==1 )
                   grid(i,j)=1;
               else
                    grid(i,j-1)=1;
               end
               
            end
        end
    end
end
end

%Plot
surface(grid);