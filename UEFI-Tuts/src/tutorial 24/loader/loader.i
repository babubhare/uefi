# 0 "loader/loader.c"
# 1 "E:\\wf\\src\\uefi\\UEFI-Tuts\\src\\tutorial 24//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "loader/loader.c"



# 1 "loader/stdint.h" 1
# 33 "loader/stdint.h"
typedef int bool;



typedef __builtin_va_list va_list;







typedef float float_t;
typedef double double_t;

typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;

typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;

typedef int8_t int_fast8_t;
typedef int64_t int_fast64_t;

typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;

typedef uint8_t uint_fast8_t;
typedef uint64_t uint_fast64_t;

typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
# 5 "loader/loader.c" 2
# 16 "loader/loader.c"
typedef struct GRAPHICS_COLOR_PIXEL
{
    uint8_t Blue;
    uint8_t Green;
    uint8_t Red;
    uint8_t Alpha;
} GRAPHICS_COLOR_PIXEL;

typedef struct BLOCKINFO
{
 int32_t MagicNumber;
    uint64_t* BaseAddress;
    uint64_t BufferSize;
    uint32_t ScreenWidth;
    uint32_t ScreenHeight;
    uint32_t PixelsPerScanLine;
} BLOCKINFO;

GRAPHICS_COLOR_PIXEL* SetGraphicsColor(uint32_t color);
void CreateBufferFilledBox(uint32_t xPos, uint32_t yPos, uint32_t w, uint32_t h, GRAPHICS_COLOR_PIXEL* gc, BLOCKINFO* bli);

void main(int32_t argc, BLOCKINFO* bi)
{
 BLOCKINFO* biStruct = bi;

 if(biStruct->MagicNumber == 31337)
 {
  GRAPHICS_COLOR_PIXEL* GraphicsColor = SetGraphicsColor(0xffffa500);
  CreateBufferFilledBox(1, 1, 150, 150, GraphicsColor, biStruct);
 } else {
  GRAPHICS_COLOR_PIXEL* GraphicsColor = SetGraphicsColor(0xff00ff00);
  CreateBufferFilledBox(1, 1, 150, 150, GraphicsColor, biStruct);
 }

 while(1){__asm__ ("hlt");}
}

GRAPHICS_COLOR_PIXEL* SetGraphicsColor(uint32_t color)
{
    GRAPHICS_COLOR_PIXEL* GColor = ((void*)0);
    GColor->Alpha = color >> 24;
    GColor->Red = color >> 16;
    GColor->Green = color >> 8;
    GColor->Blue = color;
    return GColor;
}

void CreateBufferFilledBox(uint32_t xPos, uint32_t yPos, uint32_t w, uint32_t h, GRAPHICS_COLOR_PIXEL* gc, BLOCKINFO* bli)
{
    uint32_t x;
    uint32_t y = yPos;
    uint32_t width = xPos + w;
    uint32_t height = yPos + h;

    for(y = yPos; y <= height; y++)
    {
        for(x = xPos; x <= width; x++)
        {
            *(x + (y * bli->PixelsPerScanLine) + (uint32_t*)(bli->BaseAddress)) = *(uint32_t*)gc;
        }
    }
}
