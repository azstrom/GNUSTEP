@class CalcBrain;

@interface CalcFace:NSWindow

{
NSTextField *display;

NSButton * btns;
}
-(void)setBrain:(CalcBrain*)aBrain;

@end
