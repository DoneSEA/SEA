clear
clc

n = 0:255 ;
yn=255*rectpuls(n,256);

plot(n,yn);

fid = fopen('./Square_Wave_Rom.coe','wt');

fprintf(fid,'memory_initialization_radix = 10;\nmemory_initialization_vector = ');

 

for i = 1 : 256

    if mod(i-1,8) == 0 

        fprintf(fid,'\n');

    end

    fprintf(fid,'%4d,',yn(i));

end
