set terminal pdf fname "Times-Roman" fsize 9 color size 3.1,2.0
set output "c:\\temp\\graph3.pdf"
set yrange [0:150]
set boxwidth 0.2
#set xrange [1:18.9]
set xlabel "Workload"
set ylabel "MB/sec" 1,0
set key top left
set xtics nomirror out rotate by -20 
#("4KB" 0, "64KB" 4, "1MB" 8, "16MB" 12, "256MB" 16, "4GB" 20, "64GB" 24)
plot "..\\graphdata\\graph3.in" using ($0-0.2):2:xticlabels(1) with boxes title "TxFS" lt rgbcolor "black" fs solid 0.2, "" using 0:6 with boxes title "ext2" lt rgbcolor "black" fs solid 0.5, "" using ($0+0.2):7 with boxes title "ext3" lt rgbcolor "black" fs solid 0.8