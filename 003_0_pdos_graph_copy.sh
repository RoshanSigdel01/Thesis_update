# Set the output size, terminal, encoding, and other settings
set size 1,1
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set border lw 2.111
set termoption font "Helvetica-Bold, 12.000"

# Specify the output file with full path in a different folder
set output "/media/roshan/FACE365CCE36117D/Thesis/figures/03_pdos_copy.pdf"

# Set up multiplot layout
set multiplot layout 1,2
unset key 
set bmargin 4
set origin 0.0,0.0 
set size 0.54,1.0

# Customize first plot
set ylabel offset 1,0
set xtics format "%.2f" font "Helvetica-Bold, 10.000"
set ytics format "%.2f" font "Helvetica-Bold, 10.000"
set xrange [-6.9999:6.9999]
set yrange [0:18]
set key box lw 2.111 width 0.5 height 0.2 opaque
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"
set ylabel ("PDOS (No. of projected states per eV)") font "Helvetica-Bold, 12.000"
plot 'tot.dat' using ($1-(2.5491)):2 smooth cspline w l lw 2.111 lc rgb "black" t 'sum','s.dat' using ($1-(2.5491)):2 smooth cspline w l lw 2.111 lc rgb "red" title 's-orbital','p.dat' using ($1-(2.5491)):2 smooth cspline w l lw 2.111 lc rgb "green" t 'p-orbital'
unset key

# Customize second plot
set origin 0.48000,0.0
set size 0.54,1.0
set xtics format "%.2f" font "Helvetica-Bold, 10.000"
set ytics format "%.2f" font "Helvetica-Bold, 10.000"
set ylabel offset 2,0
set xrange [-6.9999:6.9999]
set yrange [0:12]
set key box lw 2.111 width 0.5 height 0.2 opaque
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"
set ylabel ("PDOS (No. of states per eV)") font "Helvetica-Bold, 12.000"
plot 'c.dat' using ($1-(2.5491)):2  smooth cspline w l lw 2.111 lc rgb "black" t 'Carbon','n.dat' using ($1-(2.5491)):2  smooth cspline w l lw 2.111 lc rgb "red" title 'Nitrogen','h.dat' using ($1-(2.5491)):2  smooth cspline w l lw 2.111 lc rgb "green" t 'Hydrogen','o.dat' using ($1-(2.5491)):2  smooth cspline w l lw 2.111 lc rgb "dark-turquoise" t 'Oxygen'
unset key

# Finish multiplot
unset multiplot

