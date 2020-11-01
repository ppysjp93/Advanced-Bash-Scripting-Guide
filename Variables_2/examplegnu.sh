#!/bin/bash
# Output a png called barchart.png. You
# could instead leave out the output filename
# here and redirect the output to a file
# like ./myconfig.gnu > barchart.png.set terminal pngset output "barchart.png"

gnuplot -p << EOF

set style fill solid
set boxwidth 0.4

set title "Number of Marbles in each Slot"
set ylabel "Number of Marbles"
set xlabel "Slot Number"

set xtics rotate

set xrange [0:21]

set yrange [0:100]

set grid

plot  "$1" \
      with boxes \
      linecolor rgb "#00FF00"
pause 30
reread

EOF
