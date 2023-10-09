set terminal pngcairo size 1000,1000

set output 'fcc.png'

set zrange [-1:10]
set xrange [-9:9]
set yrange [-9:9]
set view 80,345,1.2

set xlabel ''
set ylabel ''
set zlabel ''

unset border
unset xtics
unset ytics
unset ztics

a=0
b=0
c=0
d=5
e=d*0.85
f=e*0.5
g=f*0.43
h=d*0.5

#VIEW 90,0,n
#TOP
set arrow from a,b,e+e to d,b,e+e nohead
#LEFTSIDE
set arrow from b,a,c to -f,-f,f nohead 
set arrow from -f,-f,f to -f-f,b,f+f nohead
set arrow from -f-f,b,f+f to -f,-f,e+e-f nohead
set arrow from -f,-f,e+e-f to b,a,e+e nohead
#RIGHTSIDE
set arrow from d,b,c to f+d,-f,f nohead
set arrow from d+f,-f,f to f+d+f,b,f+f nohead
set arrow from f+d+f,b,f+f to d+f,-f,e+e-f nohead
set arrow from f+d,-f,e+e-f to d,b,e+e nohead
#BOTTOM
set arrow from a,b,c to d,b,c nohead

#MIDLINELEFT
set arrow from -f-f,b,f+f to -f-f,d,f+f nohead
#MIDLINERIGHT
set arrow from f+d+f,b,f+f to f+d+f,d,f+f nohead dt 8 lw 4

#VIEW 90,0,n
#TOP
set arrow from a,d,e+e to d,d,e+e nohead
#LEFTSIDE
set arrow from b,d,c to -f,f+d,f nohead
set arrow from -f,d+f,f to -f-f,d,f+f nohead
set arrow from -f-f,d,f+f to -f,d+f,e+e-f nohead
set arrow from -f,f+d,e+e-f to b,d,e+e nohead
#RIGHTSIDE
set arrow from d,d,c to f+d,f+d,f nohead dt 8 lw 4
set arrow from d+f,f+d,f to f+d+f,d,f+f nohead dt 8 lw 4
set arrow from f+d+f,d,f+f to d+f,f+d,e+e-f nohead dt 8 lw 4
set arrow from f+d,f+d,e+e-f to d,d,e+e nohead dt 8 lw 4
#BOTTOM
set arrow from a,d,c to d,d,c nohead dt 8 lw 4

#VIEW 90,90,n
#TOP
set arrow from d,a,e+e to d,d,e+e nohead
#LEFTSIDE
set arrow from d+f,-f,f to d,-f-f,f+f nohead
set arrow from d,-f-f,f+f to d+f,-f,e+e-f nohead
#RIGHTSIDE
set arrow from f+d,d+f,f to d,f+d+f,f+f nohead dt 8 lw 4
set arrow from d,f+d+f,f+f to f+d,d+f,e+e-f nohead dt 8 lw 4
#BOTTOM
set arrow from d,a,c to d,d,c nohead dt 8 lw 4

#MIDLINELEFT
set arrow from d,-f-f,f+f to b,-f-f,f+f nohead
#MIDLINERIGHT
set arrow from d,f+d+f,f+f to b,f+d+f,f+f nohead dt 8 lw 4 

#VIEW 90,90,n
#TOP
set arrow from b,a,e+e to b,d,e+e nohead
#LEFTSIDE
set arrow from -f,-f,f to b,-f-f,f+f nohead
set arrow from b,-f-f,f+f to -f,-f,e+e-f nohead
#RIGHTSIDE
set arrow from -f,d+f,f to b,f+d+f,f+f nohead dt 8 lw 4
set arrow from b,f+d+f,f+f to -f,d+f,e+e-f nohead dt 8 lw 4
#BOTTOM
set arrow from b,a,c to b,d,c nohead

#AXIS
set arrow filled size 0.2,30,90 from f,-f,f to f,-f-f,f-g lw 3
set label at f-0.4*g,-f-f,f-g-0.4*g '   b_3' font ',15'
set arrow filled size 0.2,30,90 from -f,f,e+e-f to -f-f,f,e+e-f+g lw 3
set label at -f-f-g,f,e+e-f+g+0.5*g 'b_2' font ',15'
set arrow filled size 0.2,30,90 from d+f,f,e+e-f to d+f+f,f,e+e-f+g lw 3
set label at d+f+f,f,e+e-f+g+0.5*g 'b_1' font ',15'
set label at -e,d,d+d 'Brillioun zone of FCC latice' font 'Times New Roman, 30'
#set label at d,d,d+d 's v u 3 ª' font 'Preeti, 30'

#PATH
set label at f-g,f,f+f '{/Symbol G}' font ',25'
set arrow filled size 0.1,45,90 from f,f,f+f to f+d,-f,f+f lw 4 lc 7
set label at f+d+g*0.5,-f,f+f 'X' font ',25'
set arrow filled size 0.1,45,90 from f+d,-f,f+f to d,-f-f,f+f lw 4 lc 9
set label at d-g,-f-f,f+f-g*0.5 'W' font ',25'
set arrow filled size 0.1,45,90 from d,-f-f,f+f to d*0.5,-f-f,f+f lw 4 lc 7
set label at d*0.5,-f-f,f+f-g*0.5 'K' font ',25'
set arrow filled size 0.1,45,90 from d*0.5,-f-f,f+f to f,f,f+f lw 4 lc 9
set arrow filled size 0.1,45,90 from f,f,f+f to d*0.5,-f,e+e-f lw 4 lc 7
set label at d*0.5,-f,e+e-f+g*0.5 'L' font ',25'
set arrow filled size 0.1,45,90 from d*0.5,-f,e+e-f to f*0.5+d,-f-f*0.5,\
e+f*0.5 lw 4 lc 9
set label at f*0.5+d-g*0.5,-f-f*0.5,e+f*0.5+g*0.5 'U' font ',25'
set arrow filled size 0.1,45,90 from f*0.5+d,-f-f*0.5,e+f*0.5 to d,-f-f,f+f \
lw 4 lc 7
set arrow filled size 0.1,45,90 from d,-f-f,f+f to d*0.5,-f,e+e-f lw 4 lc 9
set arrow filled size 0.1,45,90 from d*0.5,-f,e+e-f to d*0.5,-f-f,f+f lw 4 lc 7
set label at a-d-e,b,c-g 'Path: {/Symbol G} - X - W - K - {/Symbol G} - L - U\
- W - L - K' font 'Times New Roman, 30'

splot 1/0 title ''
