
#include "CalcTypes.h"
@class CalcFace;

@interface CalcBrain: NSObject
{
  CalcFace *face;
  double result;
  double enteredNumber;
  calcOperation operation;
  int fractionalDigits;
  BOOL decimalSeparator;
  BOOL editing;
}
// Set the corresponding face
-(void) setFace: (CalcFace *)aFace;
// The various buttons 
-(void) clear: (id)sender;
-(void) equal: (id)sender;
-(void) digit: (id)sender;
-(void) decimalSeparator: (id)sender;
-(void) operation: (id)sender;
-(void) squareRoot: (id)sender;
// Jump here on calculation errors
-(void) error;
@end

