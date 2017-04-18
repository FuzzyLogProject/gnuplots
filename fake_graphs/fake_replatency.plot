set terminal pdf fname "Times-Roman" fsize 9 color size 3.3,2.1
set output "fake_replatency.pdf"
set multiplot layout 2,1 rowsfirst
set label "DUMMY GRAPH" center at screen 0.5,0.9 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.5 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.65 tc rgb"#cccccc" 
set yrange [0:100]
set xrange [0:2000]
set boxwidth 10
set ylabel " "
unset xtics
set size 1,0.425
plot "fake_replatency.in" using 1:2 with boxes title "Single-Color Appends 1 replica" lt rgbcolor "black" fs solid 0.3, "" using 1:3 with boxes title "2 replicas" lt rgbcolor "black" fs solid 0.6, "" using 1:4 with boxes title "3 replicas" lt rgbcolor "black" fs solid 0.9
set xtics
set xlabel "Latency (microsecs)"
set ylabel "                          % of operations"
#set key top left
#set xtics nomirror out rotate by -90 
set size 1,0.55
plot "fake_replatency.in" using (300+$1):2 with boxes title "Two-Color Appends 1 replica" lt rgbcolor "black" fs solid 0.3, "" using (500+$1):3 with boxes title "2 replicas" lt rgbcolor "black" fs solid 0.6, "" using (800+$1):4 with boxes title "3 replicas" lt rgbcolor "black" fs solid 0.9