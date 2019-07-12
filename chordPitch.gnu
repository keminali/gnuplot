# set terminal jpeg
# set output 'alfa_epp_a7.jpg'
 set terminal postscript eps font 20
 set out 'pitch_chord_dis_e387.eps'
# set terminal pdf
# set output 'blade_chord_e387.pdf'
# set terminal X11
set autoscale
unset log
unset label
unset pm3d
set key ins vert
set key samplen 1
set key at graph 1, 0.9
set key spacing 1
set xtic auto
set ytic nomirror
set ytic auto
set y2tic auto
set tics out
set xlabel  "r/R - blade normalized spanwise direction"
set xrange [0.1:1]
set x2range [0.1 : 1] 
# r0 initial pulse
  
set yrange [*:*] 
set ylabel "c/R, normalized chord length"
set y2label "Pitch angle, degree"
set style line 1  linecolor rgb "black"  linewidth 1.000 lt 1 pointtype 6
set style line 2  linecolor rgb "black"  linewidth 2.000 lt 2 pointtype 2
set style line 3  linecolor rgb "black"  linewidth 3.000 lt 3 pointtype 3
set style line 4  linecolor rgb "black"  linewidth 2.000 lt 4 pointtype 4
set style line 5  linecolor rgb "black"  linewidth 1.000 lt 5 pointtype 5
set style line 6  linecolor rgb "black"  linewidth 2.000 lt 6 pointtype 6
set style line 7  linecolor rgb "black"  linewidth 3.000 lt 7  pointtype 7
plot "chord_pitch_e387.dat" using 1:2 t "chord length" ls 1 with lines axis x1y1,\
"chord_pitch_e387.dat" using 1:3 t "pitch angle" ls 2 with lines axis x1y2

