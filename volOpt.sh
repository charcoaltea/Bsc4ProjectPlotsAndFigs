set terminal pdfcairo size 8cm,7cm font 'Times New Roman,'
set output 'volOpt.pdf'

f01 = 'data/Bi2NiCrO6.vol.dat'
f(x) = a1+a2*x+a3*x**2+a4*x**3+a5*x**4

a1 = 1
a2 = 1
a3 = 1
a4 = 1
a5 = 1
x1 = 751.77446
y1 = -92372.51510810
x_min = 865.91818

fit f(x) f01 via a1,a2,a3,a4,a5

set yrange [y1-0.02:y1+0.16]
set xrange [x1-40:x1+280]

set bmargin 3
set xlabel 'Volume (a.u.^3)' offset 0,0.5
set ylabel 'Energy (Ry)' offset 0,0

set key height 1 width -2 top right Left

set xtics offset 0,0.3
set ytics y1-0.005,0.04 offset 0.3,0

set arrow from x_min,y1 to x_min,y1-0.02 nohead dashtype 7 linecolor rgb \
'#0000ff' linewidth 2
set arrow from x_min,y1 to x1-40,y1 nohead dashtype 7 linecolor rgb \
'#0000ff' linewidth 2
set label '-92372.515 Ry' textcolor rgb '#0000ff' at x1-135,y1+0.005 
set label '865.92 a.u.^3' textcolor rgb '#0000ff' at x_min+5,y1-0.013

plot f(x) title 'Curve fitting' with line linetype -1 dashtype 7 linecolor \
rgb '#000000' linewidth 2, f01 using 1:2 title 'Data' with point \
pointtype 26 linecolor rgb '#ff0000' linewidth 4

