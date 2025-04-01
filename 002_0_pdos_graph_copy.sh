# Set terminal and output settings
set terminal pdfcairo color enhanced
set encoding iso_8859_15
set termoption font "Helvetica-Bold, 12.000"
set border lw 2.111
# Specify the output file with full path in a different folder
set output "/media/roshan/FACE365CCE36117D/Thesis/figures/02_pdos_copy.pdf"

# Set up multiplot layout
set multiplot layout 1,2
unset key 
set bmargin 4

# First plot settings
set origin 0.0,0.0 
set size 0.54,1.0
set ylabel offset 1,0
set xtics font ", 10.000"
set ytics font ", 10.000"
set xtics format "%.0f"
set ytics format "%.0f"
set xrange [-4.999:3.999]
set yrange [0:1200]
set key box lw 2.111 width 0.5 height 0.2 opaque
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"
set arrow 1 from 2.4,0 to -1,630  lc rgb "black" lw 1.111
set arrow 2 from 3.999,0 to 3.15,630  lc rgb "black" lw 1.111
set ylabel ("PDOS (No. of states per eV)") font "Helvetica-Bold, 12.000"
plot 'tot.dat' using ($1-(-2.7223)):2 w l lw 2.111 lc rgb "black" t 'sum','s.dat' using ($1-(-2.7223)):2 w l lw 2.111 lc rgb "red" title 's-orbital','p.dat' using ($1-(-2.7223)):2 w l lw 2.111 lc rgb "green" t 'p-orbital'

# Zoomed region for the first plot
unset key
unset xtics
unset ytics
unset arrow
unset label
unset title
unset xlabel
unset ylabel
set origin 0.25,0.38
set size 0.25,0.30
set title offset 0,-0.5
set title "Zoomed Region" font "Helvetica-Bold, 9.000"
set xrange[2.4:3.999]
set yrange[0:60]
replot
unset title

# Second plot settings
set origin 0.48000,0.0
set size 0.54,1.0
set xtics font ", 10.000"
set ytics font ", 10.000"
set xtics format "%.0f"
set ytics format "%.0f"
set ylabel offset 1,0
set xrange [-4.999:3.999]
set yrange [0:800]
set key box lw 2.111 width 0.5 height 0.2 opaque
set xlabel ("E-E_f (eV)") font "Helvetica-Bold, 12.000"
set arrow 1 from 2.4,0 to -1.4,432  lc rgb "black" lw 1.111
set arrow 2 from 3.999,0 to 3.13,432  lc rgb "black" lw 1.111
set ylabel ("PDOS (No. of states per eV)") font "Helvetica-Bold, 12.000"
plot 'c.dat' using ($1-(-2.7223)):2  w l lw 2.111 lc rgb "black" t 'Carbon','n.dat' using ($1-(-2.7223)):2  w l lw 2.111 lc rgb "red" title 'Nitrogen','h.dat' using ($1-(-2.7223)):2  w l lw 2.111 lc rgb "green" t 'Hydrogen','o.dat' using ($1-(-2.7223)):2  w l lw 2.111 lc rgb "dark-turquoise" t 'Oxygen'
# Zoomed region for the second plot
unset key
unset xtics
unset ytics
unset arrow
unset label
unset title
unset xlabel
unset ylabel
set origin 0.73,0.40
set size 0.25,0.30
set title offset 0,-0.5
set title "Zoomed Region" font "Helvetica-Bold, 9.000"
set xrange[2.4:3.999]
set yrange[0:30]
replot


# Finish multiplot
unset multiplot

