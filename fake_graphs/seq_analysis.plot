set terminal pdf fname "Times-Roman" fsize 9 monochrome size 3.3,2.1
set output "seq_analysis.pdf"
 set datafile separator ","
#set yrange [0.01:500]
set boxwidth 0.1
#set xrange [1:18.9]
set logscale x
set logscale y
set ylabel "Sequencer Speed"
set xlabel "Supported Cluster Size"
set key top left
set xtics nomirror out rotate by -20 
plot "seq_analysis.csv" using 4:2 with linespoints title "100 byte payload",\
"" using 5:2 with linespoints title "512 byte payload",\
"" using 6:2 with linespoints title "1024 byte payload",\
"" using 7:2 with linespoints title "4096 byte payload",\
200000 with lines title "CORFU",\
600000 with lines title "Tango",\
122000000 with lines title "RDMABench"