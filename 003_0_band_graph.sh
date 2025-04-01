set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.13
set output "03_band_dos.pdf"
set termoption font "Helvetica-Bold, 12.0000"
set multiplot layout 1,2 
unset key 
#set tmargin 2 
set bmargin 4
set origin 0.0,0.0 
set size 0.63,1.0 
set xtics ("R" 1.5000,"{/Symbol:Bold G}" 2.3660,"T" 3.0731) font "Helvetica-Bold, 10.0000"
set ytics font ", 10.000"
set xrange [1.5000:3.0731]
set yrange [-8.9999:7.9999]
set arrow from 1.5000,-8.9999 to 1.5000,7.9999 nohead  lc rgb 'black' dt "."
set arrow from 2.3660,-8.9999 to 2.3660,7.9999 nohead  lw 2.111 lc rgb 'black' dt "-"
set arrow from 3.0731,-8.9999 to 3.0731,7.9999 nohead  lc rgb 'black' dt "."
set ylabel "E-E_f (eV)" font "Helvetica-Bold, 12.0000"
set xlabel "High Symmetric Points" font "Helvetica-Bold, 12.0000"
set label  at  2,-0.4 'Fermi level' font "Helvetica-Bold, 10.0000"
plot "bands.xmgr" using 1:($2-(2.5491)) w l lw 2.111 lc rgb "black" notitle, 0 w l lw 2.111 lc rgb 'red' dt "-"
unset key
unset xtics
unset ytics
unset arrow
unset label
#set tics nomirror
#set border 7
set origin 0.6000,0.0
set size 0.40,1.0
set yrange [-8.9999:7.9999]
set xrange [0:25]
set ytics font ", 10.00"
unset ylabel
set xtics font ", 10.000"
set label  at  10,-0.4 'Fermi level' font "Helvetica-Bold, 10.0000"
set xlabel ("DOS (No. of states per eV)") font "Helvetica-Bold, 12.0000"
plot 'dos.dat' using 2:($1-(2.5491)) w l lw 2 lc rgb "black" , 0 w l lw 2.1 lc rgb 'red' dt "-"
unset key
unset multiplot
