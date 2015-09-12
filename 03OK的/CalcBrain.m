#import<Foundation/Foundation.h>
#import"CalcBrain.h"
//#import"CalcFace.m"
@implementation CalcBrain
{}
-(id)init{
//self = [super init];
return self;
}
-(void)digit :(id)sender
{
//NSLog(@"digit %@",[sender title]);

NSLog(@"%@",[sender title]);
    //判断如果点击了清空按键，就清空输入框
    if ([[sender title] isEqualToString: @"CL"]) {
            
	NSLog(@"11111111111111111111111111");
	[face setDisplay:@"clear"];

        return;
    }



[face setDisplay:[sender title]];



}

-(void)setFace :(CalcFace*)aFace
{

NSLog(@"set face ok");

face = [aFace retain];

}

@end
