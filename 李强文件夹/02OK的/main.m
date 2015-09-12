#include<Foundation/Foundation.h>
#include<AppKit/AppKit.h>
#include"CalcFace.h"

int main(void){

	NSAutoreleasePool *pool;
	NSApplication *app;
	
	CalcFace*face;


	pool = [NSAutoreleasePool new];
	app = [NSApplication sharedApplication];
	[app setApplicationIconImage: [NSImage imageNamed:
						@"Calculator.app.tiff"]];





	face = [CalcFace new];
	[app setDelegate:face];

	[app run];

	return 0;

}
