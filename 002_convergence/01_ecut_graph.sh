set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set output "02_ecut_vs_total_energy.pdf"
set termoption font "Helvetica-Bold, 12.000"
set ylabel "Total Energy (Ry)" font "Helvetica-Bold, 12.000"
set ytics format "%.2f" font "Helvetica-Bold, 10.000"
set xtics font "Helvetica-Bold, 10.000"
set xlabel "Ecut (Ry)" font "Helvetica-Bold, 12"
set title "Ecut (Ry) vs Total Energy (Ry)"  font "Helvetica-Bold, 14"
plot "01_ecut_vs_etot.dat" using 1:2 w l lw 2.111 lt rgb "black" notitle,"" u 3:4 w lp pt 7 ps 1.5 lc rgb "black" notitle
unset key
unset xtics
unset key
