#set terminal svg  font "Arial"enhanced size 700, 600
#set output "multiplt1.svg"
 set terminal jpeg
 set output 'multiplt1.jpg'
# eps 
set terminal postscript eps font 10 size 7.5in, 6in
set out 'multiplt1.eps'


#set style line 1  linecolor rgb "black"  linewidth 1.000 lt 1 pointtype 1 ps 0.5
#set style line 2  linecolor rgb "black"  linewidth 2.000 lt 2 pointtype 3 ps 0.

set style line 1  linecolor rgb "black"  linewidth 1.000 lt 1 pointtype 1 ps 0.5
set style line 2  linecolor rgb "red"  linewidth 2.000 lt 2 pointtype 3 ps 0.5
set style line 3  linecolor rgb "blue"  linewidth 3.000 lt 3 pointtype 5 ps 0.5
set style line 4  linecolor rgb "green"  linewidth 2.000 lt 4 pointtype 7 ps 0.5
set style line 5  linecolor rgb "pink"  linewidth 1.000 lt 5 pointtype 9 ps 0.5
set style line 6  linecolor rgb "black"  linewidth 2.000 lt 6 pointtype 11 ps 0.5
set style line 7  linecolor rgb "black"  linewidth 3.000 lt 7  pointtype 13 ps 0.5
set style line 8  linecolor rgb "black"  linewidth 2.000 lt 8  pointtype 15 ps 0.5

set size 1.0, 0.5
set origin 0.0, 0.0
set multiplot

set grid
unset key
set angles radians
set samples 250

#####################  -- figure 1
set xtic auto
set ytic auto
set size 0.5, 0.5
set origin 0.0, 0.0
set title "(a)"
set xlabel "$U_r$"
set ylabel "A/D"
set label 1 "Damping =.1,.2,.3,.4,.5,.707,1.0,2.0" at .14,17
set xrange [*:*]
set yrange [*:*]

plot  "amp.txt"  using 1:8 t "0.0"  ls 1 with linespoints,\
"amp.txt"  using 1:2 t "0.005"      ls 2 with linespoints,\
"amp.txt"  using 1:3 t "0.25"       ls 3 with linespoints,\
"amp.txt"  using 1:4 t "0.50"       ls 4 with linespoints,\
"amp.txt"  using 1:5 t "0.75"       ls 5 with linespoints,\
"amp.txt"  using 1:6 t "1.0"        ls 6 with linespoints,\
"amp.txt"  using 1:7 t "2.0"        ls 7 with lines
#######################  -- figure 2
set xtic auto
set ytic auto
set size 0.5,0.5
set origin 0.5,0.0
set title "(b)"
set label 1 ""
set xlabel "$U_r$"
set ylabel "frequency" 
set xrange [*:*]
set yrange [*:*]
plot  "fre.txt"  using 1:2 title "0.005"  ls 1 with linespoints

unset multiplot
