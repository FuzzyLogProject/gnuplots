set terminal pdf fname "Times-Roman" fsize 9 color size 3.3,2.1
set output "fake_causal.pdf"
set label "DUMMY GRAPH" center at screen 0.5,0.8 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.5 tc rgb"#cccccc" 
set label "DUMMY GRAPH" center at screen 0.5,0.65 tc rgb"#cccccc" 
set yrange [0.01:500]
set boxwidth 0.1
#set xrange [1:18.9]
set logscale y
set xlabel "RTT between sites (ms)"
set ylabel "Latency (ms)"
set key top left
set xtics nomirror out rotate by -20 
plot "fake_causal.in" using ($0-0.2):2:xticlabels(1) with boxes title "CausalMap (puts)" lt rgbcolor "black" fs solid 0.15, \
"" using ($0-0.1):3 with boxes title "CRDTMap (puts)" lt rgbcolor "black" fs solid 0.3, \
"" using ($0):4 with boxes title "SLMap (puts)" lt rgbcolor "black" fs solid 0.45, \
"" using ($0+0.1):5 with boxes title "CausalMap (gets)" lt rgbcolor "black" fs solid 0.6, \
"" using ($0+0.2):6 with boxes title "CRDTMap (gets)" lt rgbcolor "black" fs solid 0.75, \
"" using ($0+0.3):7 with boxes title "SLMap (gets)" lt rgbcolor "black" fs solid 0.9
