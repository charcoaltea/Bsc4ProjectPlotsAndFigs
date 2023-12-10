set terminal pdfcairo size 17cm,8cm font 'Times New Roman,'
set output 'dosAndBandPlots.pdf'

dosup='data/Bi2NiCrO6.dos1evup'
dosdn='data/Bi2NiCrO6.dos1evdn'
xr=7.5
yr=12
bandup='data/Bi2NiCrO6.bandsup.dat'
banddn='data/Bi2NiCrO6.bandsdn.dat'
l1 = 0.40567
l2 = 0.6085
l3 = 0.75193
l4 = 1.1822
l5 = 1.53352
l6 = 1.78194
l7 = 1.92537
l8 = 2.21222
l9 = 2.46064
t1 = 1
w1 = 2

set xrange [-xr:xr]
set yrange [-yr:yr]

set arrow from -xr,0 to xr,0 nohead 
set arrow from 0,-yr to 0,yr nohead dashtype 7 
set arrow filled size 0.35,30,90 from -xr+1,yr-3.5 to -xr+1,yr-1 linewidth 2
set arrow filled size 0.35,30,90 from -xr+1,-yr+3.5 to -xr+1,-yr+1 linewidth 2

set multiplot

set key spacing 0.8 width -1.2 at xr*0.95,yr*0.9 font ',5.5' Left
set lmargin 6.45
set bmargin 0
set label 'E_F' at 0,15 font ',10'
set label '(a)' at 7.8,-9 font ',10'
set xtics ('' 0, '' 2, '' 4, '' 6, '' -2, '' -4, '' -6) scale 0.5
set ytics auto font ',8' scale 0.5

#AB1B2X-Dos
set size 0.33, 0.25
set origin 0, 0.74
plot dosup using 1:2 title 'Total-DOS' linetype -1 linecolor '#0000ff' \
linewidth 1 with line, dosdn using 1:($2*-1) title '' linetype -1 linecolor \
'#0000ff' linewidth 1 with line

set yrange [-yr*0.4:yr*0.4]
set key spacing 0.8 width -1.2 at xr*0.95,yr*0.4*0.9 font ',5.5' Left
unset label
set label '(b)' at 7.8,-3.5 font ',10'
set tmargin 0
unset arrow
set arrow from 0,-yr*0.4 to 0,yr*0.4 nohead dashtype 7
set arrow from -xr,0 to xr,0 nohead 
set arrow filled size 0.35,30,90 from -xr+1,yr*0.4-2 to -xr+1,yr*0.4-1 \
linewidth 2
set arrow filled size 0.35,30,90 from -xr+1,-yr*0.4+2 to -xr+1,-yr*0.4+1 \
linewidth 2
unset ytics
set ytics ('0' 0, '2' 2, '4' 4, '-2' -2, '-4' -4) font ',8' scale 0.5

#B1-Dos
set size 0.33, 0.22
set origin 0, 0.52
plot dosup using 1:3 title 'Ni 3d-e_g' linetype -1 linecolor '#0000ff' \
linewidth 1 with line, dosdn using 1:($3*-1) title '' linetype -1 linecolor \
'#0000ff' linewidth 1 with line, \
dosup using 1:4 title 'Ni 3d-t_{2g}' linetype -1 linecolor '#ff0000' \
linewidth 1 with line, dosdn using 1:($4*-1) title '' linetype -1 linecolor \
'#ff0000' linewidth 1 with line, \

unset label
set label '(c)' at 7.8,-3.5 font ',10'

#B2-Dos
set size 0.33, 0.22
set origin 0, 0.30
plot dosup using 1:5 title 'Cr 3d-e_g' linetype -1 linecolor '#0000ff' \
linewidth 1 with line, dosdn using 1:($5*-1) title '' linetype -1 linecolor \
'#0000ff' linewidth 1 with line, \
dosup using 1:6 title 'Cr 3d-t_{2g}' linetype -1 linecolor '#ff0000' \
linewidth 1 with line, dosdn using 1:($6*-1) title '' linetype -1 linecolor \
'#ff0000' linewidth 1 with line, \

unset label
set label '(d)' at 7.8,-3.5 font ',10'
unset lmargin
set lmargin 6.45
unset bmargin
set ylabel 'Density of states (states/eV)' font ',12' offset 1,8
set xlabel 'Energy(eV)' font ',12' offset 0,0.8
set xtics ('0' 0, '2' 2, '4' 4, '6' 6, '-2' -2, '-4' -4, '-6' -6) font ',8' \
offset 0,0.3 scale 0.5

#XDos
set size 0.33, 0.30
set origin 0, 0
plot dosup using 1:($7*6) title 'O 2p ' linetype -1 linecolor '#ff0000' \
linewidth 1 with line, dosdn using 1:($7*-6) title '' linetype -1 linecolor \
'#ff0000' linewidth 1 with line, \

unset xrange
set xrange [0:l9]
yr = 4
unset yrange
set yrange [-yr:yr]
unset arrow
set arrow from 0,0 to l9,0 nohead dashtype 7
set arrow from l1,-yr to l1,yr nohead 
set arrow from l2,-yr to l2,yr nohead 
set arrow from l3,-yr to l3,yr nohead 
set arrow from l4,-yr to l4,yr nohead 
set arrow from l5,-yr to l5,yr nohead 
set arrow from l6,-yr to l6,yr nohead 
set arrow from l7,-yr to l7,yr nohead 
set arrow from l8,-yr to l8,yr nohead 

unset tmargin
set lmargin 4.5
unset xlabel
unset ylabel
unset ytics
set ytics ('0' 0, '1' 1, '2' 2, '3' 3, '4' 4, '-1' -1, '-2' -2, '-3' -3, \
'-4' -4) scale 0.5 font ',8'
unset xtics
set xtics ("Γ" 0, "X" l1, "W" l2, "K" l3, "Γ" l4, "L" l5, "U" l6, "W" l7, \
"L" l8, "K" l9) scale 0.5 font ',8' offset 0,0.25
set xlabel 'Wave vectors' font ',12' offset 0,0.8
set ylabel 'Energy(eV)' font ',12' offset 1,0
unset label
set label 'E_F' at 2.5,0 font ',10'
set label '(e)' at 2.5,-3.8 font ',10'

#spinUp
set size 0.33, 0.99
set origin 0.33, 0
plot bandup using 1:2 title '' linetype -1 linecolor '#0000ff' linewidth 1 \
with line

unset ylabel
set ylabel '→' offset 0.5, 9.5 font ',45'
plot 1/0 title ''
unset ylabel
set ylabel 'Energy(eV)' font ',12' offset 1,0
unset label
set label 'E_F' at 2.5,0 font ',10'
set label '(f)' at 2.5,-3.8 font ',10'

#spinDown
set size 0.33, 0.99
set origin 0.66, 0
plot banddn using 1:2 title '' linetype -1 linecolor '#ff0000' linewidth 1 \
with line

unset ylabel
set ylabel '←' offset 0.5, 9.5 font ',45'
plot 1/0 title ''

unset multiplot
