set terminal pdf fname "Times-Roman" fsize 9 monochrome size 3.3,2.1
set output "fake_HDFS.pdf"
set label "DUMMY GRAPH" center at screen 0.5,0.9 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.5 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.65 tc rgb"#cccccc" 
set yrange [0:100000]
#set y2range [0:5]
set xrange [0.5:8.5]
set boxwidth 0.1
#set xtics 1
#set ytics nomirror
#set ytics 1
#set y2tics 1
set xlabel "Number of nameservers"
set ylabel "Throughput (mkdirs/sec)"
#set key top left
#set xtics nomirror out rotate by -90 
plot "fake_HDFS.in" using 1:2 with linespoints title "% of Atomic Renames 0%",\
"" using 1:3 with linespoints title "0.1%",\
"" using 1:4 with linespoints title "1%"
