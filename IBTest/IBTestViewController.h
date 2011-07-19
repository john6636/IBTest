//
//  IBTestViewController.h
//  IBTest
//
//  Created by John Chang on 2011/6/17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IBTestViewController : UIViewController
{
    IBOutlet UILabel *ID;
    IBOutlet UILabel *name;
    IBOutlet UILabel *systemName;
    IBOutlet UILabel *systemVersion;
    IBOutlet UILabel *batInfo;
    IBOutlet UIButton *RecBtn;
    UIImage *GitTest;
 //   int Switch;
}
-(IBAction)BtnPush:(id)sender;
-(void)resetScreen;
@end
