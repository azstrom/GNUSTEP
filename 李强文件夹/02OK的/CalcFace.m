#include<Foundation/Foundation.h>
#include<AppKit/AppKit.h>
#include"CalcFace.h"


@implementation CalcFace: NSWindow
{
}

-(id)init
{
	//创建输入框
	display = [[NSTextField alloc] initWithFrame:NSMakeRect (40, 84, 182, 24)];
	[display setEditable: NO];

	[display setBezeled: YES];
	[display setDrawsBackground: YES];

	[display setAlignment:NSRightTextAlignment];
	
	//创建按键
	
	btn[0] = [[NSButton alloc]initWithFrame: NSMakeRect(77, 3, 34, 24)];
	[ btn[0] setButtonType: NSToggleButton];
	[ btn[0] setTitle:@"0"];
	[ btn[0] setTag:0];
	[ btn[0] setState:NO];
	[ btn[0] setKeyEquivalent:@"0"];
	

 

        btn[1] = [[NSButton alloc]initWithFrame: NSMakeRect(114, 3, 34, 24)];
        [ btn[1] setButtonType: NSToggleButton];
        [ btn[1] setTitle:@"1"];
        [ btn[1] setTag:1];
        [ btn[1] setState:NO];
        [ btn[1] setKeyEquivalent:@"1"];
	

        btn[2] = [[NSButton alloc]initWithFrame: NSMakeRect(151, 3, 34, 24)];
        [ btn[2] setButtonType: NSToggleButton];
        [ btn[2] setTitle:@"2"];
        [ btn[2] setTag:2];
        [ btn[2] setState:NO];
        [ btn[2] setKeyEquivalent:@"2"];



	btn[3] = [[NSButton alloc]initWithFrame: NSMakeRect(188, 3, 34, 24)];
        [ btn[3] setButtonType: NSToggleButton];
        [ btn[3] setTitle:@"0"];
        [ btn[3] setTag:0];
        [ btn[3] setState:NO];
        [ btn[3] setKeyEquivalent:@"0"];


        btn[4] = [[NSButton alloc]initWithFrame: NSMakeRect(114, 30, 34, 24)];
        [ btn[4] setButtonType: NSToggleButton];
        [ btn[4] setTitle:@"4"];
        [ btn[4] setTag:4];
        [ btn[4] setState:NO];
        [ btn[4] setKeyEquivalent:@"4"];


	btn[5] = [[NSButton alloc]initWithFrame: NSMakeRect(151, 30, 34, 24)];
        [ btn[5] setButtonType: NSToggleButton];
        [ btn[5] setTitle:@"5"];
        [ btn[5] setTag:5];
        [ btn[5] setState:NO];
        [ btn[5] setKeyEquivalent:@"5"];



        btn[6] = [[NSButton alloc]initWithFrame: NSMakeRect(188, 30, 34, 24)];
        [ btn[6] setButtonType: NSToggleButton];
        [ btn[6] setTitle:@"6"];
        [ btn[6] setTag:6];
        [ btn[6] setState:NO];
        [ btn[6] setKeyEquivalent:@"6"];



        btn[7] = [[NSButton alloc]initWithFrame: NSMakeRect(114, 57, 34, 24)];
        [ btn[7] setButtonType: NSToggleButton];
        [ btn[7] setTitle:@"7"];
        [ btn[7] setTag:7];
        [ btn[7] setState:NO];
        [ btn[7] setKeyEquivalent:@"7"];


        btn[8] = [[NSButton alloc]initWithFrame: NSMakeRect(151, 57, 34, 24)];
        [ btn[8] setButtonType: NSToggleButton];
        [ btn[8] setTitle:@"8"];
        [ btn[8] setTag:8];
        [ btn[8] setState:NO];
        [ btn[8] setKeyEquivalent:@"8"];

	
        btn[9] = [[NSButton alloc]initWithFrame: NSMakeRect(188, 57, 34, 24)];
        [ btn[9] setButtonType: NSToggleButton];
        [ btn[9] setTitle:@"9"];
        [ btn[9] setTag:9];
        [ btn[9] setState:NO];
        [ btn[9] setKeyEquivalent:@"9"];

        btn[10] = [[NSButton alloc]initWithFrame: NSMakeRect(77, 30, 34, 24)];
        [ btn[10] setButtonType: NSToggleButton];
        [ btn[10] setTitle:@"."];

        [ btn[10] setState:NO];
        [ btn[10] setKeyEquivalent:@"."];


        btn[11] = [[NSButton alloc]initWithFrame: NSMakeRect(77, 57, 34, 24)];
        
	[ btn[11] setButtonType: NSToggleButton];
        [ btn[11] setTitle:@"CL"];

        [ btn[11] setState:NO];
        [ btn[11] setKeyEquivalent:@"s"];



        btn[12] = [[NSButton alloc]initWithFrame: NSMakeRect(3, 30, 34, 24)];

        [ btn[12] setButtonType: NSToggleButton];
        [ btn[12] setTitle:@"+"];

        [ btn[12] setState:NO];
        [ btn[12] setKeyEquivalent:@"+"];



        btn[13] = [[NSButton alloc]initWithFrame: NSMakeRect(40, 30, 34, 24)];

        [ btn[13] setButtonType: NSToggleButton];
        [ btn[13] setTitle:@"-"];

        [ btn[13] setState:NO];
        [ btn[13] setKeyEquivalent:@"-"];



        btn[14] = [[NSButton alloc]initWithFrame: NSMakeRect(3, 57, 34, 24)];

        [ btn[14] setButtonType: NSToggleButton];
        [ btn[14] setTitle:@"*"];

        [ btn[14] setState:NO];
        [ btn[14] setKeyEquivalent:@"*"];



        btn[15] = [[NSButton alloc]initWithFrame: NSMakeRect(40, 57, 34, 24)];

        [ btn[15] setButtonType: NSToggleButton];
        [ btn[15] setTitle:@"/"];

        [ btn[15] setState:NO];
        [ btn[15] setKeyEquivalent:@"/"];




        btn[16] = [[NSButton alloc]initWithFrame: NSMakeRect(3, 84, 34, 24)];

        [ btn[16] setButtonType: NSToggleButton];
        [ btn[16] setTitle:@"CL"];

        [ btn[16] setState:NO];
        [ btn[16] setKeyEquivalent:@"C"];




        btn[17] = [[NSButton alloc]initWithFrame: NSMakeRect(3, 3, 71, 24)];

        [ btn[17] setButtonType: NSToggleButton];
        [ btn[17] setTitle:@"="];

        [ btn[17] setState:NO];
        [ btn[17] setKeyEquivalent:@"="];



	 // Window
  [self initWithContentRect: NSMakeRect (100, 100, 225, 111)
	styleMask: (NSTitledWindowMask | NSMiniaturizableWindowMask)
	backing: NSBackingStoreBuffered
	defer: NO];

  [self setInitialFirstResponder: btn[17]];
  [self setDefaultButtonCell: [btn[17] cell]];
  
  int i;
  for (i = 0; i < 18; i++)
   {
      [[self contentView] addSubview: btn[i]];
      [btn[i] release];
   }
  [[self contentView] addSubview: display];
  [display release];

  [self setTitle: @"Calculator.app"];
  [self center];

  return self;

}

-(void)dealloc{
[super dealloc];
}







-(void)setError{
	[display setStringValue: @"Error"];
}


-(void)applicationDidFinishLaunching: (NSNotification*)aNotification
{
[self orderFront: self];
}



@end







