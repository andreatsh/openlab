#!/usr/bin/gnuplot
#
# Simple gnuplot script to draw an histogram
#

set terminal jpeg enhanced size 1024,640
set output "histo-m2d6n10000.jpeg"

set style data histogram
set style fill solid border -1
set boxwidth 2

set title 'Frequency Histogram Example'
set xlabel 'Dice Faces'
set ylabel 'N'

plot 'm2d6n10000.out' u 2:xticlabel(1) title ''

