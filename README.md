# Cream-in-Your-Coffee-Problem-Simulation
Simulates something similar to a drop of cream in a cup of coffee, and the diffusion that occurs over time.

Algorithm:

1. Create a two dimesonal array for a grid and intialize it's elements to zeros.
2. Intialize the postion of cream particles in the center of the coffee, i.e. setting the elements of the center of array to 1.
3. Loop horizontally and vertically on every point in the said grid, and
4. If coffee grid point contains cream particle (i.e. grid(x,y)==1), then apply 2D Random Walker algorithm.
5. However! Here is another if statement. If cream particle move, say to the right, but there is a cream particle already at that point, then no movement occurs.
6. Iterate many times, depending on user defined number of iterations "numIt".
7. Plot

Refernce Used: Computational Physics 2nd Edition - Nicholas J. Giordano and Hisao Nakanishi
