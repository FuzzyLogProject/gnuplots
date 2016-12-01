set terminal postscript eps color solid enhanced font "Helvetica"
set output 'multiplot.eps'

set size 1.5,2.3
set border lw 3
set multiplot layout 2,1

set key at 60,0.45 #vertical maxrows 2
set key font ",40"
set key width -2.5

set label 1 "(a) Scalability (80 cores)" at 35,.55 font ",40"
set object 1 rectangle from 80,0 to 640,1 fillcolor rgb "#CCCCCC" behind
set origin 0,1.2
set size 1.5,1
set xtics font ",40" offset 0,-1 scale 4 
set ytics font ",40" offset -1 scale 4
set format y "%2.1f M"
set format x "%2.0f"
set ylabel 'Throughput' font ",40" offset -9
set xrange [10:640]
set logscale x
set xtics ("10" 10, "20" 20, "40" 40, "80" 80, "160" 160, "320" 320, "640" 640)
set yrange [0:0.5]
set xlabel 'Number of Threads' font ",40" offset 0,-2.5
plot "throughput/mcs_out.txt" using 1:2 title "MCS " with linespoints pt 6 ps 4 lt 4 lc rgb "#00FF9C" linewidth 10, \
 "throughput/latchfree_out.txt" using 1:2 title "Latch-free " with linespoints pt 8 ps 4 lt 3 lc rgb "#FF345C" linewidth 10, \
     "throughput/pthread_out.txt" using 1:2 title "Pthread " with linespoints pt 12 ps 4 lt 6 lc rgb "#008BC4" linewidth 10, \
           "throughput/spinlock_out.txt" using 1:2 title "TATAS " with linespoints pt 4 ps 4 lt 8 lc rgb "#F8CA0E" linewidth 10

unset xtics
unset key
set origin 0,0
set size 1.5,1
set yrange [0:1.2]
set xrange [1000:100000000]
set logscale x
set format x "10^{%L}"
set format y " %2.1f "
set xtics font ",40" offset 0,-1 scale 4
set ytics font ",40" offset -1 scale 4
set ylabel 'Fraction of Requests' font ",40" offset -9
set xlabel 'Serial Phase Latency (cycles)' font ",40" offset 0,-2.5
set key font ",40"
set key at 200000,1

unset label 1
set label 1 "(b) Latency CDF (80 threads)" at 20000,1.3 font ",40"

plot "latency/mcs_latency.txt" using 2:1 title "MCS " with linespoints pi 476798 pt 6 ps 4 lt 4 lc rgb "#00FF9C" linewidth 10, \
 "latency/latchfree_latency.txt" using 2:1 title "Latch-free " with linespoints pi 249602 pt 8 ps 4 lt 3 lc rgb "#FF345C" linewidth 10, \
 "latency/pthread_latency.txt" using 2:1 title "Pthread " with linespoints pi 231150 pt 12 ps 4 lt 6 lc rgb "#008BC4" linewidth 10, \
 "latency/spinlock_latency.txt" using 2:1 title "TATAS " with linespoints pi 111012 pt 4 ps 4 lt 8 lc rgb "#F8CA0E" linewidth 10





