#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcFace.h"

@implementation CalcFace:NSWindow
-(id)init{

NSLog(@"init is OK");
//初始化输入框对象
display = [[NSTextField alloc]init];
//给输入框设置尺寸
[display setFrame: NSMakeRect(3,84,220,24)];
[display setBezeled: YES];
[display setDrawsBackground: YES];
[display setAlignment: NSRightTextAlignment];

//创建一个按键
 btns = [[NSButton alloc]initWithFrame: NSMakeRect(77,36,34,24)];
//设置标题
[btns setTitle:@"1"];
//设置button样式
[btns setButtonType:NSToggleButton];

[btns setAction:@selector(digit:)];

//styleMask是背景框的属性 nstitledwindowmask是可以被关闭的意思
//nsminiaturizablewindow是可以被缩小的意思
//backing 和defer 是默认参数
[self initWithContentRect: NSMakeRect (100, 100, 225, 111)
        styleMask: (NSTitledWindowMask | NSMiniaturizableWindowMask)
        backing: NSBackingStoreBuffered
        defer: NO];
    
[[self contentView]addSubview: btns];
[[self contentView]addSubview: display];

    
[self orderFront:self];

return self;
}

@end

