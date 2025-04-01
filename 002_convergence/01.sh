for ecutwfc in 20 30 40 50 60 70 80 90 100 110 120 130 140; do
etot= grep -e 'kinetic-energy cutoff' -e ! 01_ecut_$ecutwfc.out| \
awk '/kinetic-energy/{ecut=$(NF-1)}/!/{print ecut,$(NF-1) }' >> 01_ecut_vs_etot.dat
done
