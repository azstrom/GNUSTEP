#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcFace.h"
int main (void)
{ 

  CalcFace *face;
  NSAutoreleasePool *pool;
  NSApplication *app;

  pool = [NSAutoreleasePool new];
  app = [NSApplication sharedApplication];
  [app setApplicationIconImage: [NSImage imageNamed: 
					   @"Calculator.app.tiff"]];
  

  face = [[CalcFace alloc]init]; 
 
  [face createFace];

  [pool drain];
  [app run];
  return 0;
}

