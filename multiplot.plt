set terminal postscript eps  color solid enhanced font "Helvetica"
set output 'high_contention.eps'

set size 1.5,2.5
set border lw 3
set multiplot layout 2,1

set key at 40,0.45 #vertical maxrows 2
set key font ",33"
set key width -2.5

set label 1 "(a) Scalability" at 30,.53 font ",33"
set origin 0,1.25
set size 1.5,1
set xtics font ",36" offset 0,-1 scale 4 
set ytics font ",36" offset -1 scale 4
set format y "%2.1f M"
set format x "%2.0f"
set ylabel 'Throughput' font ",36" offset -9
set xrange [0:80]
set yrange [0:0.5]
set xlabel 'Number of Threads' font ",36" offset 0,-2.5
plot "throughput/5000/mcs_out.txt" using 1:2 title "MCS " with linespoints ps 4 lt 4 lc rgb "#00FF9C" linewidth 10, \
 "throughput/5000/latchfree_out.txt" using 1:2 title "Latch-free " with linespoints ps 4 lt 3 lc rgb "#FF345C" linewidth 10, \
     "throughput/5000/pthread_out.txt" using 1:2 title "Pthread " with linespoints ps 4 lt 1 lc rgb "#008BC4" linewidth 10, \
           "throughput/5000/spinlock_out.txt" using 1:2 title "TATAS " with linespoints ps 4 lt 8 lc rgb "#F8CA0E" linewidth 10

unset key
set origin 0,0
set size 1.5,1
set yrange [0:1.2]
set xrange [1000:100000000]
set logscale x
set format x "10^{%L}"
set format y " %2.1f "
set xtics font ",36" offset 0,-1 scale 4
set ytics font ",36" offset -1 scale 4
set ylabel 'Fraction of Requests' font ",36" offset -9
set xlabel 'Serial Phase Latency (cycles)' font ",36" offset 0,-3
set key font ",32"
set key at 100000,1

unset label 1
set label 1 "(b) Latency CDF" at 60000,1.26 font ",33"


plot "latency/5000/mcs_latency.txt" using 2:1 title "MCS " with lines lt 1 lc rgb "#00FF9C" lw 4, \
 "latency/5000/latchfree_latency.txt" using 2:1 title "Latch-free " with lines dt (1,2) lt 1 lc rgb "#FF345C" lw 4, \
 "latency/5000/pthread_latency.txt" using 2:1 title "Pthread " with lines dt (2,3)  lt 1 lc rgb "#008BC4" lw 12, \
 "latency/5000/spinlock_latency.txt" using 2:1 title "TATAS " with lines lt 1 lc rgb "#F8CA0E" lw 12





