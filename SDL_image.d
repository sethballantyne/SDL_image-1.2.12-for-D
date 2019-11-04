/*
MIT License
Copyright (c) 2019 Seth Ballantyne
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

 _   _   ___  _____  _   __  _____ _   _  _____  
| | | | / _ \/  __ \| | / / |_   _| | | ||  ___| 
| |_| |/ /_\ \ /  \/| |/ /    | | | |_| || |__   
|  _  ||  _  | |    |    \    | | |  _  ||  __|  
| | | || | | | \__/\| |\  \   | | | | | || |___  
\_| |_/\_| |_/\____/\_| \_/   \_/ \_| |_/\____/  
                                                 
                                                 
______ _       ___   _   _  _____ _____          
| ___ \ |     / _ \ | \ | ||  ___|_   _|         
| |_/ / |    / /_\ \|  \| || |__   | |           
|  __/| |    |  _  || . ` ||  __|  | |           
| |   | |____| | | || |\  || |___  | |           
\_|   \_____/\_| |_/\_| \_/\____/  \_/          
*/

module SDL_image;
import std;
import SDL;

enum SDL_IMAGE_MAJOR_VERSION = 1;
enum SDL_IMAGE_MINOR_VERSION = 2;
enum SDL_IMAGE_PATCHLEVEL	 = 11;

void SDL_IMAGE_VERSION(SDL_version *x)					
{
	pragma(inline, true);									
	x.major = SDL_IMAGE_MAJOR_VERSION;
	x.minor = SDL_IMAGE_MINOR_VERSION;
	x.patch = SDL_IMAGE_PATCHLEVEL;
}

extern(C) const(SDL_version) *IMG_Linked_Version();

enum IMG_InitFlags
{
    IMG_INIT_JPG = 0x00000001,
    IMG_INIT_PNG = 0x00000002,
    IMG_INIT_TIF = 0x00000004,
    IMG_INIT_WEBP = 0x00000008
}

extern(C) int IMG_Init(int flags);
extern(C) void IMG_Quit();

extern(C) SDL_Surface *IMG_LoadTyped_RW(SDL_RWops *src, int freesrc, char *type);
extern(C) SDL_Surface *IMG_Load(const char *file);
extern(C) SDL_Surface *IMG_Load_RW(SDL_RWops *src, int freesrc);

// doesn't do anything in this version of SDL_image, but it's here for
// completeness.
extern(C) int IMG_InvertAlpha(int on);

extern(C) int IMG_isICO(SDL_RWops *src);
extern(C) int IMG_isCUR(SDL_RWops *src);
extern(C) int IMG_isBMP(SDL_RWops *src);
extern(C) int IMG_isGIF(SDL_RWops *src);
extern(C) int IMG_isJPG(SDL_RWops *src);
extern(C) int IMG_isLBM(SDL_RWops *src);
extern(C) int IMG_isPCX(SDL_RWops *src);
extern(C) int IMG_isPNG(SDL_RWops *src);
extern(C) int IMG_isPNM(SDL_RWops *src);
extern(C) int IMG_isTIF(SDL_RWops *src);
extern(C) int IMG_isXCF(SDL_RWops *src);
extern(C) int IMG_isXPM(SDL_RWops *src);
extern(C) int IMG_isXV(SDL_RWops *src);
extern(C) int IMG_isWEBP(SDL_RWops *src);

extern(C) SDL_Surface *IMG_LoadICO_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadCUR_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMGG_LoadBMP_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadGIF_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadJPG_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadLBM_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadPCX_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadPNG_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadPNM_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadTGA_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadTIF_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadXCF_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadXPM_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadXV_RW(SDL_RWops *src);
extern(C) SDL_Surface *IMG_LoadWEBP_RW(SDL_RWops *src);

extern(C) SDL_Surface *IMG_ReadXPMFromArray(char **xpm);

alias IMG_SetError  = SDL_SetError;
alias IMG_GetError = SDL_GetError;
