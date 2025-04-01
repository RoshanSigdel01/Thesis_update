set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2
set output "01_dos.pdf"
set termoption font "Helvetica-Bold, 12.000"
set xzeroaxis
set multiplot
set origin 0,0
set size 1,1

set xtics font "Helvetica-Bold, 10.000"
set ytics font "Helvetica-Bold, 10.000"
set key box lw 2.111 width 0.5 height 0.2 opaque
set xrange [-5.688:4.012]
set yrange [0:2500]
set title "DOS Vs Energy (eV) of S19 Q24 A475 system" font "Helvetica-Bold, 14.000"
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"

set arrow 1 from 2.4,0 to -0.1,1520  lc rgb "black" lw 1.111
set arrow 2 from 4.012,0 to 2.8,1520  lc rgb "black" lw 1.111

set ylabel ("DOS (No. of states per eV)") font "Helvetica-Bold, 12.000"
plot 'dos.dat' using ($1-(-2.5068)):2 w l lw 2.111 lc rgb "black" t "Dos"

unset key
unset xtics
unset ytics
unset arrow
unset label
unset title
unset xlabel
unset ylabel

set origin 0.598,0.55
set size 0.30,0.30
set title "Zoomed Region" font "Helvetica-Bold, 9.000"
set xrange[2.4:4.012]
set yrange[0:200]


replot
unset multiplot
