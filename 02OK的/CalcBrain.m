#import<Foundation/Foundation.h>

@implementation CalcBrain:NSObject
{
}
-(id)init{
self = [super init];
NSLog(@" brain init ok");
return self;
}

-(void)digit :(id)sender
{

NSLog(@"click it");

}

@end
