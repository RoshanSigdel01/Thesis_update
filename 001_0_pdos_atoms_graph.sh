set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set output "01_pdos_atoms.pdf"
set termoption font "Helvetica-Bold, 12.000"
set xzeroaxis
set multiplot
set origin 0,0
set size 1,1
set xtics font ", 10.00"
set ytics font ", 10.00"
set xrange [-5.688:4.012]
set yrange [0:700]
set key box lw 2.111 width 0.5 height 0.2 opaque
set title "PDOS Vs Energy (eV) of S19 Q24 A475 system" font "Helvetica-Bold, 14.000"
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"

set arrow 1 from 2.4,0 to -1.9,515  lc rgb "black" lw 1.111
set arrow 2 from 4.012,0 to 0.9,515  lc rgb "black" lw 1.111


set ylabel ("PDOS (No. of states per eV)") font "Helvetica-Bold, 12.000"
plot 'c.dat' using ($1-(-2.5068)):2  w l lw 2.111 lc rgb "black" t 'Carbon','n.dat' using ($1-(-2.5068)):2  w l lw 2.111 lc rgb "red" title 'Nitrogen','h.dat' using ($1-(-2.5068)):2  w l lw 2.111 lc rgb "green" t 'Hydrogen','o.dat' using ($1-(-2.5068)):2  w l lw 2.111 lc rgb "dark-turquoise" t 'Oxygen'


unset key
unset xtics
unset ytics
unset arrow
unset label
unset title
unset xlabel
unset ylabel

set origin 0.429,0.65
set size 0.30,0.25
set title "Zoomed Region" font "Helvetica-Bold, 9.000"
set xrange[2.4:4.012]
set yrange[0:20]


replot
unset multiplot
