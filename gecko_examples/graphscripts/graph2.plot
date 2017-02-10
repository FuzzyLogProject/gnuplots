set terminal pdf fname "Times-Roman" fsize 9 color size 3.1,2.0
set output "c:\\temp\\graph2.pdf"
set yrange [0:600]
set boxwidth 0.4
set xrange [1.5:28]
set xlabel "Accessed Address Space"
set ylabel "MB/sec" 1,0
set y2label "Ks of TXes/sec"
set y2range [0:25]
set ytics nomirror
set y2tics 5
set xtics nomirror out rotate by -30 ("16KB" 2, "256KB" 6, "4MB" 10, "64MB" 14, "1GB" 18, "16GB" 22, "256GB" 26)
plot "..\\graphdata\\graph2.in" using 0:2 with boxes title "Tx Throughput" lt rgbcolor "black" fs solid 0, "" using 0:4 with boxes title "Tx Goodput" lt rgbcolor "black" fs solid 1

set output "c:\\temp\\graph2_varygrain.pdf"
set yrange [0:450]
set boxwidth 0.3
#set xrange [1:18.9]
set xlabel "Update Granularity (bytes)"
set ylabel "MB/sec" 1,0
unset xtics
set xtics nomirror out rotate by -30
plot "..\\graphdata\\graph2_varygrain.in" using 0:2:xticlabels(1) with boxes title "Tx Throughput" lt rgbcolor "black" fs solid 0, "" using 0:4 with boxes title "Tx Goodput" lt rgbcolor "black" fs solid 1
