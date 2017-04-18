set terminal pdf fname "Times-Roman" fsize 9 color size 3.3,2.1
set output "fake_netpart.pdf"
set multiplot layout 2,1 rowsfirst
set label "DUMMY GRAPH" center at screen 0.5,0.9 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.5 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.65 tc rgb"#cccccc" 
set yrange [0:1000]
set boxwidth 0.2
set ylabel " "
unset xtics
set size 1,0.425
set arrow from 1000,0 to 1000,1000 nohead lt 2
set arrow from 3000,0 to 3000,1000 nohead lt 2
set object 1 rect from 1000,0 to 3000,1000 fc rgb "black" fs solid 0.2
plot "fake_netpart.in" using 1:2 with linespoints title "CAPMap" lt rgbcolor "black"
set xtics
set xlabel "Time Elapsed (ms)"
set ylabel "                          Throughput (Ks of puts/sec)"
#set key top left
#set xtics nomirror out rotate by -90 
set size 1,0.55
plot "fake_netpart.in" using 1:3 with linespoints title "SLMap" lt rgbcolor "black"
