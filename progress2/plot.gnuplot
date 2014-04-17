set boxwidth 0.75 absolute
set style fill   solid 1.00 border lt -1
set key left top vertical Left reverse noenhanced autotitles columnheader nobox
set key invert samplen 4 width 0 height 0 
set style histogram rowstacked title  offset character 0, 0, 0
set datafile missing '-'
set style data histograms
set style histogram rowstacked
set style fill solid

set style line 1 linetype 1
set style line 2 linetype 1
set style line 3 linetype 1


set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0 autojustify
set xtics  norangelimit font ",8"
set xtics   ()

set yrange [ 0.00000 : * ] noreverse nowriteback
i = 1

plot 'ExtData1' using  3:xtic(2) with histogram lt 0.8 fs pattern 1, '' using 4 with histogram lt 0.8 fs pattern 2, '' using 5 with histogram lt 0.5 fs pattern 3, '' using 6 with histogram lt 0.6 fs pattern 4, '' using 7 with histogram lt 1 fs solid 0