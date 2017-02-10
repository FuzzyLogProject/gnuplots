set terminal pdf fname "Times-Roman" fsize 9 color size 3.1,2.0
set output "c:\\temp\\graph1.pdf"
set yrange [0:600]
set boxwidth 0.4
set xrange [1.5:28]
set xlabel "Accessed Address Space"
set ylabel "MB/sec" 1,0
set y2label "Ks of TXes/sec"
set y2range [0:25]
set ytics nomirror
set y2tics 5
#set xtics nomirror out rotate by -30 ("4KB" 0, "64KB" 4, "1MB" 8, "16MB" 12, "256MB" 16, "4GB" 20, "64GB" 24)
set xtics nomirror out rotate by -30 ("16KB" 2, "256KB" 6, "4MB" 10, "64MB" 14, "1GB" 18, "16GB" 22, "256GB" 26)
plot "..\\graphdata\\graph1.in" using 0:2 with boxes title "Tx Throughput" lt rgbcolor "black" fs solid 0, "" using 0:4 with boxes title "Tx Goodput" lt rgbcolor "black" fs solid 1
