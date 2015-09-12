
#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#include "CalcBrain.h"
#include "CalcFace.h"

int main (void)
{ 
  CalcBrain *brain;
  CalcFace *face;
  NSAutoreleasePool *pool;
  NSApplication *app;



  pool = [NSAutoreleasePool new];
  app = [NSApplication sharedApplication];
  [app setApplicationIconImage: [NSImage imageNamed: 
					   @"Calculator.app.tiff"]];
  
  brain = [CalcBrain new];
  face = [CalcFace new]; 
  [brain setFace: face];
  [face setBrain: brain];
  [app setDelegate: face];
  
  [app run];
  return 0;
}

