set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set output "01_kpoint_vs_total_energy.pdf"
set termoption font "Helvetica-Bold, 12"
set ylabel "Total Energy (Ry)" font "Helvetica-Bold, 12"
set ytics format "%.7f" font "Helvetica-Bold, 10"
set xtics font "Helvetica-Bold, 10"
set xlabel "K-point"  font "Helvetica-Bold, 12"
set title "K-points vs Total Energy (Ry)"  font "Helvetica-Bold, 14"
plot "02_kpoint.dat" using 1:2 w l lw 2.111 lt rgb "black" notitle,"" u 3:4 w lp pt 7 ps 1.5 lc rgb "black" notitle
unset key
unset xtics
unset key
