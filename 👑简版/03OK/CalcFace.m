#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcFace.h"

@implementation CalcFace: NSWindow
{

}

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


// [self setDefaultButtonCell: [btns[15] cell]];


int i ;
for(i =0;i<16;i++)
{

 [[self contentView] addSubview: btns[i]];

}
  [[self contentView] addSubview: display];
   input =YES; 



}

-(void)digit :(id)sender
{
    
    //在输入的时候 判断是否存在多种符号的情况，如果存在，清除输入框
    int r = 1;
    r =  [self judgeStr :[sender title]];
    //如果返回的是0 说明输入的数据存在两个运算符号，如果存在两个运算符需清空输入框
    if (r ==0) {
        display.stringValue = @"";
        return;
    }
    if ([[sender title] isEqualToString: @"="]) {
        input = NO;
        if ([display.stringValue rangeOfString:@"+"].location != NSNotFound) {
            
            NSArray*arr = [display.stringValue componentsSeparatedByString:@"+"];
            NSLog(@"以加号为分隔符 分割得到的元素1 = %@ 元素2 = %@",[arr objectAtIndex:0],[arr objectAtIndex:1]);
            double a = [[arr objectAtIndex:0] doubleValue];
            double b = [[arr objectAtIndex:1] doubleValue];
            a = a +b;
            //把int类型的数据赋值给nsstring字符串
            NSString *result = [NSString stringWithFormat:@"%.2f",a];
            [display setStringValue:result];
            return;
            
        }
        if ([display.stringValue rangeOfString:@"-"].location != NSNotFound) {
            
            NSArray*arr = [display.stringValue componentsSeparatedByString:@"-"];
            NSLog(@"以加号为分隔符 分割得到的元素1 = %@ 元素2 = %@",[arr objectAtIndex:0],[arr objectAtIndex:1]);
            double a = [[arr objectAtIndex:0] doubleValue];
            double b = [[arr objectAtIndex:1] doubleValue];
            a = a -b;
            //把int类型的数据赋值给nsstring字符串
            NSString *result = [NSString stringWithFormat:@"%.2f",a];
            
            
            [display setStringValue:result];
            
            
            return;
            
        }        
        if ([display.stringValue rangeOfString:@"*"].location != NSNotFound) {
            
            NSArray*arr = [display.stringValue componentsSeparatedByString:@"*"];
            NSLog(@"以加号为分隔符 分割得到的元素1 = %@ 元素2 = %@",[arr objectAtIndex:0],[arr objectAtIndex:1]);
            double a = [[arr objectAtIndex:0] doubleValue];
            double b = [[arr objectAtIndex:1] doubleValue];
            a = a *b;
            //把int类型的数据赋值给nsstring字符串
            NSString *result = [NSString stringWithFormat:@"%.2f",a];
            
            
            [display setStringValue:result];
            
            return;
        }
        if ([display.stringValue rangeOfString:@"/"].location != NSNotFound) {
            
            NSArray*arr = [display.stringValue componentsSeparatedByString:@"/"];
            NSLog(@"以加号为分隔符 分割得到的元素1 = %@ 元素2 = %@",[arr objectAtIndex:0],[arr objectAtIndex:1]);
            double a = [[arr objectAtIndex:0] doubleValue];
            double b = [[arr objectAtIndex:1] doubleValue];
            a = a /b;
            //把int类型的数据赋值给nsstring字符串
            NSString *result = [NSString stringWithFormat:@"%.2f",a];
            
            
            [display setStringValue:result];
            
            return;
            
        }
    }
    
    if(input == NO){
        
        [display setStringValue:[sender title]];
        input = YES;
        return;
    }
    NSString*temp = display.stringValue;
    
    [display setStringValue:[NSString stringWithFormat:@"%@%@",temp,[sender title]]];
}



-(int)judgeStr :(NSString*)str{
    
    if ([str rangeOfString:@"+"].location != NSNotFound) {
        
        if ([display.stringValue rangeOfString:@"+"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"-"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"*"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"/"].location != NSNotFound) {
            return 0;
        }
        
    }
    if ([str rangeOfString:@"-"].location != NSNotFound) {
        if ([display.stringValue rangeOfString:@"+"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"-"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"*"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"/"].location != NSNotFound) {
            return 0;
        }
    }
    if ([str rangeOfString:@"*"].location != NSNotFound) {
        if ([display.stringValue rangeOfString:@"+"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"-"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"*"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"/"].location != NSNotFound) {
            return 0;
        }
    }
    if ([str rangeOfString:@"/"].location != NSNotFound) {
        if ([display.stringValue rangeOfString:@"+"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"-"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"*"].location != NSNotFound) {
            return 0;
        }
        if ([display.stringValue rangeOfString:@"/"].location != NSNotFound) {
            return 0;
        }
    }
    return 1;
    
}


@end


