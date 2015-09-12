#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#include "CalcFace.h"

@implementation CalcFace: NSWindow
{

}

-(id)init
{
  int i;

  // Display 
  display = [[NSTextField alloc] initWithFrame: NSMakeRect (3, 84, 220, 24)];
  [display setEditable: NO];
  // [display setScrollable: YES];
  [display setBezeled: YES];
  [display setDrawsBackground: YES];
  [display setAlignment: NSRightTextAlignment];
  
  // Numbers
  buttons[0] = [[NSButton alloc] initWithFrame: NSMakeRect (77, 30, 34, 24)];
  [buttons[0] setButtonType: NSToggleButton];
  [buttons[0] setTitle: @"0"];
  [buttons[0] setTag: 0];
  [buttons[0] setState: NO];
  [buttons[0] setAction: @selector(digit:)];
  [buttons[0] setKeyEquivalent: @"0"];
  
  buttons[1] = [[NSButton alloc] initWithFrame: NSMakeRect (114, 3, 34, 24)];
  [buttons[1] setButtonType: NSToggleButton];
  [buttons[1] setTitle: @"1"];
  [buttons[1] setTag: 1];
  [buttons[1] setState: NO];
  [buttons[1] setAction: @selector(digit:)];
  [buttons[1] setKeyEquivalent: @"1"];

  buttons[2] = [[NSButton alloc] initWithFrame: NSMakeRect (151, 3, 34, 24)];
  [buttons[2] setButtonType: NSToggleButton];
  [buttons[2] setTitle: @"2"];
  [buttons[2] setTag: 2];
  [buttons[2] setState: NO];
  [buttons[2] setAction: @selector(digit:)];
  [buttons[2] setKeyEquivalent: @"2"];

  buttons[3] = [[NSButton alloc] initWithFrame: NSMakeRect (188, 3, 34, 24)];
  [buttons[3] setButtonType: NSToggleButton];
  [buttons[3] setTitle: @"3"];
  [buttons[3] setTag: 3];
  [buttons[3] setState: NO];
  [buttons[3] setAction: @selector(digit:)];
  [buttons[3] setKeyEquivalent: @"3"];

  buttons[4] = [[NSButton alloc] initWithFrame: NSMakeRect (114, 30, 34, 24)];
  [buttons[4] setButtonType: NSToggleButton];
  [buttons[4] setTitle: @"4"];
  [buttons[4] setTag: 4];
  [buttons[4] setState: NO];
  [buttons[4] setAction: @selector(digit:)];
  [buttons[4] setKeyEquivalent: @"4"];

  buttons[5] = [[NSButton alloc] initWithFrame: NSMakeRect (151, 30, 34, 24)];
  [buttons[5] setButtonType: NSToggleButton];
  [buttons[5] setTitle: @"5"];
  [buttons[5] setTag: 5];
  [buttons[5] setState: NO];
  [buttons[5] setAction: @selector(digit:)];
  [buttons[5] setKeyEquivalent: @"5"];

  buttons[6] = [[NSButton alloc] initWithFrame: NSMakeRect (188, 30, 34, 24)];
  [buttons[6] setButtonType: NSToggleButton];
  [buttons[6] setTitle: @"6"];
  [buttons[6] setTag: 6];
  [buttons[6] setState: NO];
  [buttons[6] setAction: @selector(digit:)];
  [buttons[6] setKeyEquivalent: @"6"];

  buttons[7] = [[NSButton alloc] initWithFrame: NSMakeRect (114, 57, 34, 24)];
  [buttons[7] setButtonType: NSToggleButton];
  [buttons[7] setTitle: @"7"];
  [buttons[7] setTag: 7];
  [buttons[7] setState: NO];
  [buttons[7] setAction: @selector(digit:)];
  [buttons[7] setKeyEquivalent: @"7"];

  buttons[8] = [[NSButton alloc] initWithFrame: NSMakeRect (151, 57, 34, 24)];
  [buttons[8] setButtonType: NSToggleButton];
  [buttons[8] setTitle: @"8"];
  [buttons[8] setTag: 8];
  [buttons[8] setState: NO];
  [buttons[8] setAction: @selector(digit:)];
  [buttons[8] setKeyEquivalent: @"8"];

  buttons[9] = [[NSButton alloc] initWithFrame: NSMakeRect (188, 57, 34, 24)];
  [buttons[9] setButtonType: NSToggleButton];
  [buttons[9] setTitle: @"9"];
  [buttons[9] setTag: 9];
  [buttons[9] setState: NO];
  [buttons[9] setAction: @selector(digit:)];
  [buttons[9] setKeyEquivalent: @"9"];



  buttons[10] = [[NSButton alloc] initWithFrame: NSMakeRect (77, 57, 34, 24)];
  [buttons[10] setButtonType: NSToggleButton];
  [buttons[10] setTitle: @"CL"];
  [buttons[10] setState: NO];
  [buttons[10] setAction: @selector(clear:)]; 
  [buttons[10] setKeyEquivalent: @"CL"];

  buttons[11] = [[NSButton alloc] initWithFrame: NSMakeRect (3, 30, 34, 24)];
  [buttons[11] setButtonType: NSToggleButton];
  [buttons[11] setTitle: @"+"];
  [buttons[11] setTag: addition];
  [buttons[11] setState: NO];
  [buttons[11] setAction: @selector(operation:)];
  [buttons[11] setKeyEquivalent: @"+"];

  buttons[12] = [[NSButton alloc] initWithFrame: NSMakeRect (40, 30, 34, 24)];
  [buttons[12] setButtonType: NSToggleButton];
  [buttons[12] setTitle: @"-"];
  [buttons[12] setTag: subtraction];
  [buttons[12] setState: NO];
  [buttons[12] setAction: @selector(operation:)];
  [buttons[12] setKeyEquivalent: @"-"];

  buttons[13] = [[NSButton alloc] initWithFrame: NSMakeRect (3, 57, 34, 24)];
  [buttons[13] setButtonType: NSToggleButton];
  [buttons[13] setTitle: @"*"];
  [buttons[13] setTag: multiplication];
  [buttons[13] setState: NO];
  [buttons[13] setAction: @selector(operation:)];
  [buttons[13] setKeyEquivalent: @"*"];

  buttons[14] = [[NSButton alloc] initWithFrame: NSMakeRect (40, 57, 34, 24)];
  [buttons[14] setButtonType: NSToggleButton];
  [buttons[14] setTitle: @"/"];
  [buttons[14] setTag: division];
  [buttons[14] setState: NO];
  [buttons[14] setAction: @selector(operation:)];
  [buttons[14] setKeyEquivalent: @"/"];


  buttons[15] = [[NSButton alloc] initWithFrame: NSMakeRect (3, 3, 108, 24)];
  [buttons[15] setButtonType: NSToggleButton];
  [buttons[15] setTitle: @"="];
  [buttons[15] setState: NO];
  [buttons[15] setAction: @selector(equal:)];
  [buttons[15] setKeyEquivalent: @"="];

  // Window
  [self initWithContentRect: NSMakeRect (100, 100, 225, 111)
	styleMask: (NSTitledWindowMask | NSMiniaturizableWindowMask)
	backing: NSBackingStoreBuffered
	defer: NO];

  [self setInitialFirstResponder: buttons[15]];
  [self setDefaultButtonCell: [buttons[15] cell]];
  
  for (i = 0; i < 16; i++)
    {
      [[self contentView] addSubview: buttons[i]];

    }
  [[self contentView] addSubview: display];

  return self;
}


-(void) setBrain: (CalcBrain *)aBrain
{
  int i;

  for (i = 0; i < 16; i++)
    [buttons[i] setTarget: aBrain];
}

//刷新展示页面的数据
-(void) setDisplayedNumber: (double)aNumber
{
  
    [display setStringValue: [NSString stringWithFormat: @"%.2f", aNumber]];
}



- (void)applicationDidFinishLaunching: (NSNotification *)aNotification
{
  [self orderFront: self];
}
@end


