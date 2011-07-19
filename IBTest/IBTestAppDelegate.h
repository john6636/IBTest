//
//  IBTestAppDelegate.h
//  IBTest
//
//  Created by John Chang on 2011/6/17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IBTestViewController;

@interface IBTestAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) IBTestViewController *viewController;

@end
