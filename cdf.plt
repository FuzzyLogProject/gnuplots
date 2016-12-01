set terminal postscript eps  color solid enhanced font "Helvetica"
set output 'high_latency.eps'

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

plot "latency/5000/mcs_latency.txt" using 2:1 title "MCS " with lines dt (6, 6) lt 1 lc rgb "#00FF9C" lw 8, \
 "latency/5000/latchfree_latency.txt" using 2:1 title "Latch-free " with lines dt (1,2) lt 1 lc rgb "#FF345C" lw 8, \
 "latency/5000/pthread_latency.txt" using 2:1 title "Pthread " with lines dt (4,2)  lt 1 lc rgb "#008BC4" lw 16, \
 "latency/5000/spinlock_latency.txt" using 2:1 title "TATAS " with lines lt 1 lc rgb "#F8CA0E" lw 16





