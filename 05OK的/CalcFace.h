
#include "CalcTypes.h"

@class CalcBrain;

@interface CalcFace: NSWindow
{  
  NSButton *buttons[16];
  NSTextField *display;
}

// Set the corresponding brain
-(void) setBrain: (CalcBrain *)aBrain;
// Display a number
-(void) setDisplayedNumber: (double)aNumber;
// Tell the user a calculation error occurred
-(void) setError;
// Display the window after launching the app
- (void)applicationDidFinishLaunching: (NSNotification *)aNotification;
@end

