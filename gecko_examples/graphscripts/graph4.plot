set terminal pdf fname "Times-Roman" fsize 9 color size 3.1,1.5
set output "c:\\temp\\graph4.pdf"
set yrange [0:600]
set y2range [0:25]
set xlabel "Number of Tail Drives"
set ylabel "MB/sec" 1,0
set ytics nomirror
set y2tics 5
set y2label "Ks of TXes/sec"
set boxwidth 0.2
plot "..\\graphdata\\graph4.in" using 1:2 with boxes notitle lt rgbcolor "black" fs solid 0.5