set terminal postscript eps  color solid enhanced font "Helvetica"
set output 'cdf.eps'

set size 1.5,1
set border lw 3

unset xtics
unset key
set yrange [0:1.2]
set xrange [1000:100000000]
set logscale x
set format x "10^{%L}"
set format y " %2.1f "
set xtics font ",36" offset 0,-1 scale 4
set ytics font ",36" offset -1 scale 4
set ylabel 'Fraction of Requests' font ",36" offset -9
set xlabel 'Serial Phase Latency (cycles)' font ",36" offset 0,-2.5
set key font ",32"
set key at 100000,1

plot "latency/mcs_latency.txt" using 2:1 title "MCS " with linespoints pi 476798 pt 6 ps 4 lt 4 lc rgb "#00FF9C" linewidth 10, \
 "latency/latchfree_latency.txt" using 2:1 title "Latch-free " with linespoints pi 249602 pt 8 ps 4 lt 3 lc rgb "#FF345C" linewidth 10, \
 "latency/pthread_latency.txt" using 2:1 title "Pthread " with linespoints pi 231150 pt 12 ps 4 lt 6 lc rgb "#008BC4" linewidth 10, \
 "latency/spinlock_latency.txt" using 2:1 title "TATAS " with linespoints pi 111012 pt 4 ps 4 lt 8 lc rgb "#F8CA0E" linewidth 10





