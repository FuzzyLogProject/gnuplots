#!/usr/bin/gnuplot
set terminal pdf fname "Times-Roman" fsize 9 color size 3.3,2.1
set output "fake_scaling.pdf"
set label "DUMMY GRAPH" center at screen 0.5,0.8 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.5 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.65 tc rgb"#cccccc" 
set yrange [0:10]
set boxwidth 0.1
#set xrange [1:18.9]
#set logscale x
set xlabel "Workload (% of multi-partition puts)"
set ylabel "Ms of puts/sec"
set key top right
set xtics nomirror out rotate by -20 
plot 1 with line title "CORFU max" lt rgbcolor "black", \
"fake_scaling.in" using ($0-0.2):($3/1000):xticlabels(1) with boxes title "# of AtomicMap servers = 1" lt rgbcolor "black" fs solid 0, \
"" using ($0-0.1):($5/1000) with boxes title "2" lt rgbcolor "black" fs solid 0.2, \
"" using ($0):($7/1000) with boxes title "4" lt rgbcolor "black" fs solid 0.4, \
"" using ($0+0.1):($9/1000) with boxes title "8" lt rgbcolor "black" fs solid 0.6, \
"" using ($0+0.2):($11/1000) with boxes title "16" lt rgbcolor "black" fs solid 0.8, \
"" using ($0+0.3):($13/1000) with boxes title "32" lt rgbcolor "black" fs solid 1
