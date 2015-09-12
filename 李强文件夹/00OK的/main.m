
#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>

int main (void)
{ 

  NSAutoreleasePool *pool;
  NSApplication *app;



  pool = [NSAutoreleasePool new];
  app = [NSApplication sharedApplication];
  [app setApplicationIconImage: [NSImage imageNamed: 
					   @"Calculator.app.tiff"]];
  

  
  [app run];
  return 0;
}

