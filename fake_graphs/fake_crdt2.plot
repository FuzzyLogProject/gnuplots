set terminal pdf fname "Times-Roman" fsize 9 color size 3.3,2.1
set output "fake_crdt2.pdf"
set label "DUMMY GRAPH" center at screen 0.5,0.9 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.5 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.65 tc rgb"#cccccc" 
set yrange [0:2]
set y2range [0:5]
set xrange [0:4]
set boxwidth 0.1
#set arrow from 1000,0 to 1000,1000 nohead lt 2
#set arrow from 3000,0 to 3000,1000 nohead lt 2
#set object 1 rect from 1000,0 to 3000,1000 fc rgb "black" fs solid 0.2
set xtics 1
set ytics nomirror
set ytics 1
set y2tics 1
set xlabel "Time Elapsed (secs)"
set ylabel "Throughput (Ms of puts/sec)"
set y2label "Staleness (Ms of missing puts)"
#set key top left
set xtics nomirror out rotate by -90 
plot "fake_crdt2.in" using ($1/1000):($3/1000) with boxes title "Staleness in # of puts (right y-axis)" lt rgbcolor "black" fs solid 0.1 axes x1y2,\
"" using ($1/1000):($2/1000) with linespoints title "CRDTMap puts/sec (left y-axis)" lt rgbcolor "black"
