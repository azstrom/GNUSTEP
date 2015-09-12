#import<Foundation/Foundation.h>

//UI界面需要导入的头文件
#import<AppKit/AppKit.h>

#import"CalcFace.h"
#import"CalcBrain.h"

int main(void)
{
NSAutoreleasePool*pool = [[NSAutoreleasePool alloc]init];
//创建一个应用程序对象
NSApplication *app;
//对这个对象进行初始化
app = [NSApplication sharedApplication];

//创建一个NSImage对象
//NSImage *image = [[NSImage alloc]init];
 
//给这个对象赋值 一个图片
//image = @"Calculator.app.tiff";

//给我们的app 的应用程序对象 加载一个图标
//[app setApplicationIconImage:image];

[app setApplicationIconImage:[NSImage imageNamed:@"Calculator.app.tiff"]];

CalcFace *face = [[CalcFace alloc]init];

CalcBrain*brain = [[CalcBrain alloc]init];

[app setDelegate :face];

//[brain digit:@"main"];

//把界面和逻辑类之间设置关联
[face setBrain: brain];

//让app这个对象运行起来
[app run];
//释放这个内存
[pool drain];
return 0;
}
