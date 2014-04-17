# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 500, 350 
# set output 'histograms.4.png'
set boxwidth 0.75 absolute
set style fill   solid 1.00 border lt -1
set key outside right top vertical Left reverse noenhanced autotitles columnhead nobox
set key invert samplen 4 spacing 1 width 0 height 0 
set style histogram rowstacked title  offset character 0, 0, 0
set datafile missing '-'
set style data histograms
set style line 1 linetype 1
set style line 2 linetype 1
set style line 3 linetype 1
set xtics scale 0 offset -0.25 rotate by -56.25 font "Helvetica,12"

set xtics  norangelimit font ",8"
set xtics   ()
set yrange [ 0.00000 : * ] noreverse nowriteback
i = 1

plot 'ExtData1' using 3:xtic(2), '' using 4 t col with histogram lt 1 fs solid 0, '' using 5 t col with histogram lt 1 fs pattern 6, '' using 6 t col with histogram lt 1 fs pattern 1, '' using 7 t col with histogram lt 1 fs pattern 2, '' using 8 t col with histogram lt 1 fs pattern 3, '' using 9 t col with histogram lt 1 fs solid 0.25