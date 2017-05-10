#!/usr/bin/gnuplot
#
# Gnuplot example script
# Linear fit of a fictious amount of data collected during the charge-to-mass
# ratio of the electron experiment.

set terminal svg
set output 'em.svg'

set title "An example graph"
set xlabel "m/e"
set ylabel "B^2R^2"

f(x) = a + x*d
a = 1
d = 1

fit f(x) 'datalab.dat' u 1:2:4 yerror via a,d
plot 'datalab.dat' u 1:2:4 w yerrorbars pt 9 ps 0.8 , f(x) title ''

