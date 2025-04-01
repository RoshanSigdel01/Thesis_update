for m in {1..6..1} ;do
te=`grep ! 02_kpoint_$m.out | tail -1 | awk '{print $5}'`
sxx=`grep -A1 'l   s' 02_kpoint_$m.out | tail -1 | awk '{print $4}'`
echo "$m $te" >> 02_kpoint.dat
done
