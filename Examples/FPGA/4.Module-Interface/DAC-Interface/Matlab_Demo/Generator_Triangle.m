clear
clc
%Generating a triangular wave
n = -127:128 ;
yn=256*tripuls(n,256)-1;
%Draw a triangle wave waveform and verify the waveform
plot(n,yn);
%Create a new .coe file named Triangle_Wave_Rom.coe
fid = fopen('./Triangle_Wave_Rom.coe','wt');
%Enter the .coe file start file header into the file:
%memory_initialization_radix = 10
%memory_initialization_vector =
fprintf(fid,'memory_initialization_radix = 10;\nmemory_initialization_vector = ');

 
%Output 256 waveform sample points to a .coe file
for i = 1 : 256

    %Wrap processing, no need
    if mod(i-1,8) == 0 

        fprintf(fid,'\n');

    end
    %Considering the 8-bit ADC, the value cannot exceed 255, and cannot be lower than zero.
    if yn(i)<0
        fprintf(fid,'%4d,',0);
    else
        fprintf(fid,'%4d,',yn(i));
    end
end
