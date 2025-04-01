set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set output "03_pdos.pdf"
set termoption font "Helvetica-Bold, 12.000"
set xtics font ", 10.00"
set ytics font ", 10.00"
set xrange [-8.9999:7.9999]
set yrange [0:20]
set key box lw 2.111 width 0.5 height 0.2 opaque
set title "PDOS Vs Energy (eV) of S19 system" font "Helvetica-Bold, 14.000"
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"
set ylabel ("PDOS (No. of projected states per eV)") font "Helvetica-Bold, 12.000"
plot 'tot.dat' using ($1-(2.5491)):2 smooth cspline w l lw 2.111 lc rgb "black" t 'sum','s.dat' using ($1-(2.5491)):2 smooth cspline w l lw 2.111 lc rgb "red" title 's-orbital','p.dat' using ($1-(2.5491)):2 smooth cspline w l lw 2.111 lc rgb "green" t 'p-orbital'
unset key
unset multiplot
