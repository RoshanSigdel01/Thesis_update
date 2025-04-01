set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2
set output "dos_0005.pdf"
set termoption font "Helvetica-Bold, 8.5"
set xrange [-25.260:5.080]
set yrange [0:12000]
#set xtics 0,5,3
set title "DOS Vs Energy (eV)"
set xlabel ("Energy (eV) (E-E_f (ev))") font "Helvetica-Bold, 8.5"
set ylabel ("DOS (No. of states per eV)") font "Helvetica-Bold, 8.5"
#set ylabel ("E-E_f (ev)")
plot 'dos_0005.dat' using ($1-(-2.7223)):2 w l lw 1.5 notitle
unset key
unset multiplot
