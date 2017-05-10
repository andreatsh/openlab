#!/usr/bin/gnuplot

set terminal jpeg
set output 'sinc.jpeg'
set contour

set samples 50
set isosamples 50
set pm3d
set surface
set view 60,60,1,1

f(x,y)=sin(sqrt(x*x+y*y))/sqrt(x*x+y*y)
#splot f(x,y)
splot f(x+5,y+5) + f(x-5,y-5)

