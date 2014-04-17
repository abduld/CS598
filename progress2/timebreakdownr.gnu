# Time breakdown of all benchmarks

set terminal postscript eps size 2.99in,3in
set output "timebreakdownr.eps"
set key at 15,1.5 font "Helvetica,11" invert
set style histogram rowstacked
set style fill solid
set boxwidth 0.9 absolute
set style data histograms
set style line 1 linetype 1
set style line 2 linetype 1
set style line 3 linetype 1
set xtics scale 0 offset -0.25 rotate by -56.25 font "Helvetica,12"
set yrange [0:1.35]
set ylabel "Scaled execution time"

set rmargin 4

plot newhistogram "MRI-Q" at 1, \
     'timebreakdownr_1.dat'  using 2:xtic(1) t col with histogram lt 1 fs solid 0.67, \
     '' using 3 t col with histogram lt 1 fs solid 0, \
     '' using 4 t col with histogram lt 1 fs solid 0.25, \
     '' using 5 t col with histogram lt 1 fs pattern 6, \
     '' using 6 t col with histogram lt 1 fs solid 1, \
     newhistogram "TPACF" at 4, \
     'timebreakdownr_2.dat' using 2:xtic(1) notitle with histogram lt 1 fs solid 0.67, \
     '' using 3 notitle with histogram lt 1 fs solid 0, \
     '' using 4 notitle with histogram lt 1 fs solid 0.25, \
     '' using 5 notitle with histogram lt 1 fs pattern 6, \
     '' using 6 notitle with histogram lt 1 fs solid 1, \
     newhistogram "SGEMM" at 8, \
     'timebreakdownr_3.dat' using 2:xtic(1) notitle with histogram lt 1 fs solid 0.67, \
     '' using 3 notitle with histogram lt 1 fs solid 0, \
     '' using 4 notitle with histogram lt 1 fs solid 0.25, \
     '' using 5 notitle with histogram lt 1 fs pattern 6, \
     '' using 6 notitle with histogram lt 1 fs solid 1, \
     newhistogram "CUTCP" at 12, \
     'timebreakdownr_4.dat' using 2:xtic(1) notitle with histogram lt 1 fs solid 0.67, \
     '' using 3 notitle with histogram lt 1 fs solid 0, \
     '' using 4 notitle with histogram lt 1 fs solid 0.25, \
     '' using 5 notitle with histogram lt 1 fs pattern 6, \
     '' using 6 notitle with histogram lt 1 fs solid 1




