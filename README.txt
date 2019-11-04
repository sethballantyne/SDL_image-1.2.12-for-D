SDL_image 1.2.12 for D
Created by: Seth Ballantyne  <seth.ballantyne@gmail.com>

This was created for my own use and I've made in publically available
on the off-chance someone else might find it useful. Currently everything
in the SDL documenation has been included, and ONLY that so if it's
not in the docs, it aint here.. yet. I'll add to it over time. This has
only been tested on Windows. You'll also need the SDL binding at
https://github.com/sethballantyne/SDL-1.2.15-for-D,
along with SDL_image.lib, grab it at /lib/x86/SDL.lib. 32-bit only at 
this time. If you want to convert your own for any reason, see below.

to use SDL_image binding in your project:
dmd <your source files> SDL.d SDL_image.d -c
link <your object files> SDL.obj SDL_image.obj SDL.lib SDL_image.lib

to avoid the command prompt window appearing when the resulting binary is 
executed, add /subsystem:windows to the link command line:

link <your object files> SDL.obj SDL_image.obj SDL.lib SDL_image.lib /subsystem:windows

the 32-bit VC++ .lib file was converted to OMF format using comf2omf
that comes with the free version of the Borland compiler. You can find it on 
the Embarcadero website or easier yet, search archive.org; you'll want 
version 5.5. Digital Mars has their own but I've never used it. 

coff2omf SDL_image.lib SDL_image_converted.lib

it'll spit out a converted library as SDL_image_converted.lib.

you can find a converted version of the 32-bit lib for your use at 
/lib/x86/SDL_image.lib.

The code is released under the MIT license; have fun.
