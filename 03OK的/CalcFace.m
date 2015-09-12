#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcFace.h"

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
  

  btns[0]  = [[NSButton alloc] initWithFrame: NSMakeRect(77,30,34,24)];  
  [btns[0] setTitle:@"0"];
  [btns[0] setState:NO]; 
  [btns[0] setAction:@selector(digit:)];
	
   btns[1]  = [[NSButton alloc] initWithFrame: NSMakeRect(114,3,34,24)];
  [btns[1] setTitle:@"1"];
  [btns[1] setState:NO];
  [btns[1] setAction:@selector(digit:)];


  btns[2]  = [[NSButton alloc] initWithFrame: NSMakeRect(151,3,34,24)];
  [btns[2] setTitle:@"2"];
  [btns[2] setState:NO];
  [btns[2] setAction:@selector(digit:)];


  btns[3]  = [[NSButton alloc] initWithFrame: NSMakeRect(188,3,34,24)];
  [btns[3] setTitle:@"3"];
  [btns[3] setState:NO];
  [btns[3] setAction:@selector(digit:)];

  btns[4]  = [[NSButton alloc] initWithFrame: NSMakeRect(114,30,34,24)];
  [btns[4] setTitle:@"4"];
  [btns[4] setState:NO];
  [btns[4] setAction:@selector(digit:)];

  btns[5]  = [[NSButton alloc] initWithFrame: NSMakeRect(151,30,34,24)];
  [btns[5] setTitle:@"5"];
  [btns[5] setState:NO];
  [btns[5] setAction:@selector(digit:)];

   btns[6]  = [[NSButton alloc] initWithFrame: NSMakeRect(188,30,34,24)];
  [btns[6] setTitle:@"6"];
  [btns[6] setState:NO];
  [btns[6] setAction:@selector(digit:)];


  btns[7]  = [[NSButton alloc] initWithFrame: NSMakeRect(114,57,34,24)];
  [btns[7] setTitle:@"7"];
  [btns[7] setState:NO];
  [btns[7] setAction:@selector(digit:)];


  btns[8]  = [[NSButton alloc] initWithFrame: NSMakeRect(151,57,34,24)];
  [btns[8] setTitle:@"8"];
  [btns[8] setState:NO];
  [btns[8] setAction:@selector(digit:)];

  btns[9]  = [[NSButton alloc] initWithFrame: NSMakeRect(188,57,34,24)];
  [btns[9] setTitle:@"9"];
  [btns[9] setState:NO];
  [btns[9] setAction:@selector(digit:)];

  
   btns[10]  = [[NSButton alloc] initWithFrame: NSMakeRect(77,57,34,24)];
  [btns[10] setTitle:@"CL"];
  [btns[10] setState:NO];
  [btns[10] setAction:@selector(digit:)];


  btns[11]  = [[NSButton alloc] initWithFrame: NSMakeRect(3,30,34,24)];
  [btns[11] setTitle:@"+"];
  [btns[11] setState:NO];
  [btns[11] setAction:@selector(digit:)];


  btns[12]  = [[NSButton alloc] initWithFrame: NSMakeRect(40,30,34,24)];
  [btns[12] setTitle:@"-"];
  [btns[12] setState:NO];
  [btns[12] setAction:@selector(digit:)];

  btns[13]  = [[NSButton alloc] initWithFrame: NSMakeRect(3,57,34,24)];
  [btns[13] setTitle:@"*"];
  [btns[13] setState:NO];
  [btns[13] setAction:@selector(digit:)];


 btns[14]  = [[NSButton alloc] initWithFrame: NSMakeRect(40,57,34,24)];
  [btns[14] setTitle:@"/"];
  [btns[14] setState:NO];
  [btns[14] setAction:@selector(digit:)];

   btns[15]  = [[NSButton alloc] initWithFrame: NSMakeRect(3,3,108,24)];
  [btns[15] setTitle:@"="];
  [btns[15] setState:NO];
  [btns[15] setAction:@selector(digit:)];


 
// [self setInitiaFristResponder: btns[15]];
 [self setDefaultButtonCell: [btns[15] cell]];



  // Window
  [self initWithContentRect: NSMakeRect (100, 100, 225, 111)
	styleMask: (NSTitledWindowMask | NSMiniaturizableWindowMask)
	backing: NSBackingStoreBuffered
	defer: NO];

 
//  [[self contentView] addSubview: display];

int i ;
for(i =0;i<16;i++)
{

 [[self contentView] addSubview: btns[i]];

}
  [[self contentView] addSubview: display];
 
   return self;
}

-(void)setBrain :(CalcBrain*)aBrain{

//NSLog(@"set ok");
int i = 0;
for(i;i<16;i++){

[btns[i] setTarget: aBrain];

}


}
-(void)setDisplay :(NSString*)number{

    if ([number isEqualToString: @"clear"]) {

        
        [display setStringValue:@""];

        return;
    }



NSString*temp = display.stringValue;

[display setStringValue:[NSString stringWithFormat:@"%@%@",temp,number]];

//NSLog(@"input is %@",number);





}

- (void)applicationDidFinishLaunching: (NSNotification *)aNotification
{
  [self orderFront: self];
}

@end


