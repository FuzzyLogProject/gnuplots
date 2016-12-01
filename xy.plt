set terminal postscript eps  color solid enhanced font "Helvetica"
set output 'high_throughput.eps'

set size 1.5,1
set border lw 3

set key at 50,0.45 #vertical maxrows 2
set key font ",33"
set key width -2.5

set object 1 rectangle from 80,0 to 640,1 fillcolor rgb "#CCCCCC" behind
set xtics font ",36" offset 0,-1 scale 4 
set ytics font ",36" offset -1 scale 4
set format y "%2.1f M"
set format x "%2.0f"
set ylabel 'Throughput' font ",36" offset -9
set xrange [0:80]
set yrange [0:0.5]
set xlabel 'Number of Threads' font ",36" offset 0,-2.5
plot "throughput/5000/mcs_out.txt" using 1:2 title "Scalable " with linespoints ps 4 lt 4 lc rgb "#00FF9C" linewidth 10, \
 "throughput/5000/latchfree_out.txt" using 1:2 title "Latch-free " with linespoints ps 4 lt 3 lc rgb "#FF345C" linewidth 10, \
 "throughput/5000/spinlock_out.txt" using 1:2 title "Spinlock " with linespoints ps 4 lt 8 lc rgb "#F8CA0E" linewidth 10


