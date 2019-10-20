#set terminal svg  font "Arial"enhanced size 700, 600
#set output "multiplt1.svg"
# set terminal jpeg
# set output 'multiplt1.jpg'
# eps 
set terminal postscript eps font 10 size 7.5in, 6in color
set out 'amp_fre_vs_ur.eps'

set key ins vert maxrows 3
set key samplen 1
set key horiz center top
#set key at graph 1, 0.9
set key spacing 1

set style line 1  linecolor rgb "black"   linewidth 2.0 lt 1 pointtype 1 ps 1
set style line 2  linecolor rgb "red"     linewidth 2.0 lt 2 pointtype 3 ps 1
set style line 3  linecolor rgb "green"   linewidth 2.0 lt 3 pointtype 5 ps 1
set style line 4  linecolor rgb "blue"    linewidth 2.0 lt 4 pointtype 6 ps 1
set style line 5  linecolor rgb "yellow"  linewidth 2.0 lt 5 pointtype 7 ps 1
set style line 6  linecolor rgb "brown"   linewidth 2.0 lt 6 pointtype 11 ps 1
set style line 7  linecolor rgb "black"   linewidth 2.0 lt 7 pointtype 13 ps 1
set style line 8  linecolor rgb "pink"    linewidth 2.0 lt 8 pointtype 15 ps 1

########### multiplot
# figure size
set size 1.0, 0.5
set origin 0.0, 0.0
# set grid
set multiplot




#####################  -- figure 1
set xtic auto
set ytic auto
set size 0.5, 0.5
set origin 0.0, 0.0
set title "(a)"
set xlabel "U_r"
set ylabel "A/D"
set datafile missing "--"
set xrange [2:14]
set yrange [*:1.2]
set arrow 1 from 2.0,0.5 to 14,0.5 nohead dt "."  # horizontal line
plot   "amp.txt"  using 1:2 t "Khalak,1997"  ls 8 with points,\
"amp.txt"  using 3:10 t "0.0"  ls 1 with linespoints,\
"amp.txt"  using 3:4 t "0.005"      ls 2 with linespoints,\
"amp.txt"  using 3:5 t "0.25"       ls 3 with linespoints,\
"amp.txt"  using 3:6 t "0.50"       ls 4 with linespoints,\
"amp.txt"  using 3:7 t "0.75"       ls 5 with linespoints,\
"amp.txt"  using 3:8 t "1.0"        ls 6 with linespoints,\
"amp.txt"  using 3:9 t "2.0"        ls 7 with linespoints

#######################  -- figure 2
set xtic auto
set ytic auto
set size 0.5,0.5
set origin 0.5,0.0
set title "(b)"
set label 1 ""
set xlabel "U_r"
set ylabel "f^*" 
set xrange [2:14]
set yrange [*:*]
set datafile missing "--"
plot  "fre.txt"  using 1:2 t "Khalak,1997"  ls 8 with points,\
"fre.txt"  using 3:10 t "0.0"  ls 1 with linespoints,\
"fre.txt"  using 3:4 t "0.005"      ls 2 with linespoints,\
"fre.txt"  using 3:5 t "0.25"       ls 3 with linespoints,\
"fre.txt"  using 3:6 t "0.50"       ls 4 with linespoints,\
"fre.txt"  using 3:7 t "0.75"       ls 5 with linespoints,\
"fre.txt"  using 3:8 t "1.0"        ls 6 with linespoints,\
"fre.txt"  using 3:9 t "2.0"        ls 7 with linespoints
unset multiplot
