#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#include "CalcFace.h"

@implementation CalcFace: NSWindow
{

}

-(id)init
{

  // Display 
  display = [[NSTextField alloc] initWithFrame: NSMakeRect (3, 84, 220, 24)];
  [display setEditable: NO];
  // [display setScrollable: YES];
  [display setBezeled: YES];
  [display setDrawsBackground: YES];
  [display setAlignment: NSRightTextAlignment];
   

  // Window
  [self initWithContentRect: NSMakeRect (100, 100, 225, 111)
	styleMask: (NSTitledWindowMask | NSMiniaturizableWindowMask)
	backing: NSBackingStoreBuffered
	defer: NO];

 
  [[self contentView] addSubview: display];

  return self;
}




- (void)applicationDidFinishLaunching: (NSNotification *)aNotification
{
  [self orderFront: self];
}
@end


