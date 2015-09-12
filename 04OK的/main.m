#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcBrain.h"
#import"CalcFace.h"
int main (void)
{ 

  CalcFace *face;
  NSAutoreleasePool *pool;
  NSApplication *app;
  CalcBrain*brain;


  pool = [NSAutoreleasePool new];
  app = [NSApplication sharedApplication];
  [app setApplicationIconImage: [NSImage imageNamed: 
					   @"Calculator.app.tiff"]];
  

  face = [[CalcFace alloc]init]; 
  brain=[[CalcBrain alloc]init];
 
  [app setDelegate: face];

  [face setBrain :brain];
 
  [brain setFace :face];
 
  [app run];
  return 0;
}

