@class CalcFace;

@interface CalcBrain:NSObject
{

CalcFace *face;

}
-(void)digit :(id)sender;

-(void)setFace :(CalcFace*)aFace;

@end
