#include<Foundation/Foundation.h>
#include<AppKit/AppKit.h>
#include"CalcFace.h"


@implementation CalcFace: NSWindow
{
}

-(id)init
{
	//创建输入框
	display = [[NSTextField alloc] initwiFrame:NSMakeRect (40, 84, 182, 24)];
	[display setEditable:NO];

	[display setBezeled:YES];
	[display setDrasBackground:YES];

	[display setAlignment:NSRightTextAlignment];
	
	//创建按键
	
	btn[0] = [[NSButton alloc]initWithFrame: NSMakeRect(77, 3, 34, 24)];
	[ btn[0] setButtonType: NSToggleButton];
	[ btn[0] setTitle:@"0"];
	[ btn[0] setTag:0];
	[ btn[0] setState:NO];
	[ btn[0] setKeyEquivalent:@"0"];
	

	

}

@end







