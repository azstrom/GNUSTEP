
#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>
#include "CalcBrain.h"
#include "CalcFace.h"

int main (void)
{ 
  CalcBrain *brain;
  CalcFace *face;
  NSAutoreleasePool *pool;
  NSApplication *app;
  NSMenu *mainMenu;
  NSMenu *menu;
  NSMenuItem *menuItem;

  pool = [NSAutoreleasePool new];
  app = [NSApplication sharedApplication];
  [app setApplicationIconImage: [NSImage imageNamed: 
					   @"Calculator.app.tiff"]];
  mainMenu = AUTORELEASE ([NSMenu new]);
  // Info
  [mainMenu addItemWithTitle: @"Info..." 
	    action: @selector (orderFrontStandardInfoPanel:) 
	    keyEquivalent: @""];
  // Edit SubMenu
  menuItem = [mainMenu addItemWithTitle: @"Edit" 	
		       action: NULL 
		       keyEquivalent: @""];
  menu = AUTORELEASE ([NSMenu new]);
  [mainMenu setSubmenu: menu forItem: menuItem];
  /*
  [menu addItemWithTitle: @"Cut" 
	action: @selector (cut:) 
	keyEquivalent: @"x"];
  */
  [menu addItemWithTitle: @"Copy" 
	action: @selector (copy:) 
	keyEquivalent: @"c"];
  /* 
  [menu addItemWithTitle: @"Paste" 
	action: @selector (paste:) 
	keyEquivalent: @"v"];
  */
  [menu addItemWithTitle: @"SelectAll" 
	action: @selector (selectAll:) 
	keyEquivalent: @"a"];

  [mainMenu addItemWithTitle: @"Hide" 
	action: @selector (hide:) 
	keyEquivalent: @"h"];  
  [mainMenu addItemWithTitle: @"Quit" 
	    action: @selector (terminate:)
	    keyEquivalent: @"q"];	
  
  [app setMainMenu: mainMenu];
  
  brain = [CalcBrain new];
  face = [CalcFace new]; 
  [brain setFace: face];
  [face setBrain: brain];
  [app setDelegate: face];
  
  [app run];
  return 0;
}

