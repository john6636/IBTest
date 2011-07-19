//
//  IBTestViewController.m
//  IBTest
//
//  Created by John Chang on 2011/6/17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "IBTestViewController.h"

@implementation IBTestViewController
-(IBAction)BtnPush:(id)sender
{
    UIDevice *UIDeviceStudy = [UIDevice currentDevice];
    [ID setText:[UIDeviceStudy uniqueIdentifier]];
    [name setText:[UIDeviceStudy name]];
    [systemName setText:[UIDeviceStudy systemName]];
    [systemVersion setText:[UIDeviceStudy systemVersion]];
    UIDeviceStudy.batteryMonitoringEnabled=YES;
    [batInfo setText:[NSString stringWithFormat:@"%3.1f%%",([UIDeviceStudy batteryLevel]*100)]];
}


-(void)resetScreen
{
    
    [ID setText:@"This is ID field"];
    
    [name setText:@"This is Name field"];
    
    [systemName setText:@"This is SysName field"];
    
    [systemVersion setText:@"This is SysVer field"];
    
    [batInfo setText:@"I am battery life"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    Switch = 0;
    [self resetScreen];
    UIApplication *app = [UIApplication sharedApplication];
    app.applicationSupportsShakeToEdit = YES;
    app.statusBarOrientation = UIInterfaceOrientationPortrait;
    
    //建立一個UIButton給RecBtn handle，並設定UIButton 的Type...
    RecBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [RecBtn setFrame:CGRectMake(0, 0, 100, 40)];
    
    //把RecBtn加入ViewController class 裡，並且提供action的selector id以及觸發的方式。
    [RecBtn addTarget:self action:@selector(BtnPush:) forControlEvents:UIControlEventTouchUpInside];
    
    //在View裡加入RecBtn...
    [self.view addSubview:RecBtn];
    
    [RecBtn setTitle:@"Switch" forState:UIControlStateNormal];
    //app.statusBarHidden = YES;
    //   [ID setTextAlignment:UITextAlignmentCenter];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    UIScreen *screen = [UIScreen mainScreen];
    CGRect screeninfo;
    [self resetScreen];
    [screen applicationFrame];
    screeninfo = [[UIScreen mainScreen] bounds];
    //    screeninfo.size.height;
    switch(interfaceOrientation)
    {
            case UIInterfaceOrientationLandscapeLeft:
                [RecBtn setFrame:CGRectMake((screeninfo.size.height/2)-(100/2), 40*((screeninfo.size.width/40)-2), 100, 40)];
            break;
            case UIInterfaceOrientationLandscapeRight:
                [RecBtn setFrame:CGRectMake((screeninfo.size.height/2)-(100/2), 40*((screeninfo.size.width/40)-2), 100, 40)];
            break;
            case UIInterfaceOrientationPortrait:
               [RecBtn setFrame:CGRectMake((screeninfo.size.width/2)-(100/2), 40*((screeninfo.size.height/40)-2), 100, 40)];
            break;
            case UIInterfaceOrientationPortraitUpsideDown:
                [RecBtn setFrame:CGRectMake((screeninfo.size.width/2)-(100/2), 40*((screeninfo.size.height/40)-2), 100, 40)];
            break;
    }
    return YES;//(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
