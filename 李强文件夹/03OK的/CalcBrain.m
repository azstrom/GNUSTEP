/* CalcBrain.m: Brain of Calculator.app
此类用于创建计算器的界面
*/
#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#include "CalcBrain.h"
#include "CalcFace.h"
#include <math.h>

@implementation CalcBrain: NSObject
{

}
//初始化函数，所有变量归零
-(id) init
{
  [super init];
  result = 0;
  enteredNumber = 0;
  operation = none;
  fractionalDigits = 0;

  editing = YES;
  face = nil;
  return self;
}
//销毁函数
-(void) dealloc
{
  if (face) 
    [face release];
  [super dealloc];
}

// 初始化当前页面
-(void) setFace: (CalcFace *)aFace
{
  face = [aFace retain];
//刷新展示页面的数据
  [face setDisplayedNumber: enteredNumber withSeparator: ds
	fractionalDigits: fractionalDigits];
}
// 清除按键
-(void) clear: (id)sender
{
  result = 0;
  enteredNumber = 0;
  operation = none;
  fractionalDigits = 0;
  ds = NO;
  editing = YES;
  [face setDisplayedNumber: 0 withSeparator: NO fractionalDigits: 0];
}
//功能按键
-(void) equal: (id)sender
{
//进行加减乘除四则运算
  switch (operation)
    {
    case none: 
      result = enteredNumber;
      enteredNumber = 0;
      ds = NO;
      fractionalDigits = 0;
      return;
      break;
    case addition:
      result = result + enteredNumber;
      break;
    case subtraction:
      result = result - enteredNumber;
      break;
    case multiplication:
      result = result * enteredNumber;
      break;
    case division:
      if (enteredNumber == 0)
	{
	  [self error];
	  return;
	}
      else 
	result = result / enteredNumber;
      break;
    }
//结果保留7位小数
  [face setDisplayedNumber: result 
	withSeparator: (ceil(result) != result)      
	fractionalDigits: 7];
  enteredNumber = result;
  operation = none;
  editing = NO;
}
//数字按键选择
-(void) digit: (id)sender
{
  if (!editing)
    {
      enteredNumber = 0;
      ds = NO;
      fractionalDigits = 0;
      editing = YES;
    }
//小数分隔
  if (ds)
    {
      enteredNumber = enteredNumber 
	+ ([sender tag] * pow (0.1, 1+fractionalDigits));
      fractionalDigits++;
    }
  else
    {
      enteredNumber = enteredNumber * 10 + ([sender tag]);
      // Check overflow
      if (enteredNumber > pow (10, 15))
	{
	  [self error];
	  return;
	}
    }
  [face setDisplayedNumber: enteredNumber withSeparator: ds
	fractionalDigits: fractionalDigits];
}
//小数分隔
-(void) ds: (id)sender
{
  if (!editing)
    {
      enteredNumber = 0;
      ds = NO;
      fractionalDigits = 0;
      editing = YES;
    }
  if (!ds)
    {
      ds = YES;
      [face setDisplayedNumber: enteredNumber withSeparator: YES
	    fractionalDigits: 0];
    }
}
-(void) operation: (id)sender
{
  if (operation == none)
    {
      result = enteredNumber;
      enteredNumber = 0;
      ds = NO;
      fractionalDigits = 0;
      operation = [sender tag];
    }
  else // operation
    {	 
      [self equal: nil];
      [self operation: sender];
    }
}


-(void) error
{
  result = 0;
  enteredNumber = 0;
  operation = none;
  fractionalDigits = 0;
  ds = NO;
  editing = YES;
  [face setError];
}
@end

