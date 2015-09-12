
#include "CalcTypes.h"

@class CalcBrain;

@interface CalcFace: NSWindow
{  
  NSButton *buttons[18];
  NSTextField *display;
}
// Set the corresponding brain
-(void) setBrain: (CalcBrain *)aBrain;
// Display a number
-(void) setDisplayedNumber: (double)aNumber 
             withSeparator: (BOOL)displayDecimalSeparator
          fractionalDigits: (int)fractionalDigits;
// Tell the user a calculation error occurred
-(void) setError;
// Display the window after launching the app
- (void)applicationDidFinishLaunching: (NSNotification *)aNotification;
@end

