#import<Foundation/Foundation.h>
#import<AppKit/AppKit.h>
#import"CalcFace.h"
//#import"face.h"

int main (void)
{ 
//  face*ff;
  CalcFace *faces;
  NSAutoreleasePool *pool;
  NSApplication *app;

  pool = [NSAutoreleasePool new];
  app = [NSApplication sharedApplication];
  [app setApplicationIconImage: [NSImage imageNamed: 
					   @"Calculator.app.tiff"]];
  

  faces = [[CalcFace alloc]init]; 
 
  [faces createFace];

//ff = [[face alloc]init];




//        NSString * temp = @"http://img3.imgtn.bdimg.com/it/u=2926150112,1710769259&fm=21&gp=0.jpg";
//        NSURL *url = [NSURL URLWithString:temp];

//	NSData *data = [NSData dataWithContentsOfURL:url]; 
	//imageWithData:
//	[app setApplicationIconImage: [NSImage imageWithUrl:data]];

//        NSString *str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
//	NSLog(@"%@",str);        




  [pool drain];
  [app run];
  return 0;
}

