#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcFace.h"
@implementation CalcFace: NSWindow
-(id)init
{
// Window
  [self initWithContentRect: NSMakeRect (100, 100, 225, 111)
	styleMask: (NSTitledWindowMask | NSMiniaturizableWindowMask)
	backing: NSBackingStoreBuffered
	defer: NO];
[self orderFront: self];
 return self;
}

-(void)createFace{

  display = [[NSTextField alloc] initWithFrame: NSMakeRect (3, 84, 220, 24)];
  [display setEditable: NO];
  [display setAlignment: NSRightTextAlignment];
  

  btns[0]  = [[NSButton alloc] initWithFrame: NSMakeRect(77,30,34,24)];  
  [btns[0] setTitle:@"0"];
  [btns[0] setState:NO]; 
  [btns[0] setAction:@selector(digit:)];
	
    
 [[self contentView] addSubview: btns[i]];

  [[self contentView] addSubview: display];

}

-(void)digit :(id)sender
{
    
    [display setStringValue:[sender title]];

}

@end


