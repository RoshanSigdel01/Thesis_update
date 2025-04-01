set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set output "03_dos.pdf"
set termoption font "Helvetica-Bold, 12.000"
set xtics font "Helvetica-Bold, 10.000"
set ytics font "Helvetica-Bold, 10.000"
set key box lw 2.111 width 0.5 height 0.2 opaque
set xrange [-8.9999:7.9999]
set yrange [0:25]
set title "DOS Vs Energy (eV) of S19 system" font "Helvetica-Bold, 14.000"
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"
set ylabel ("DOS (No. of states per eV)") font "Helvetica-Bold, 12.000"
plot 'dos.dat' using ($1-(2.5491)):2 w l lw 2.111 lc rgb "black" t "Dos"
unset key
unset multiplot
