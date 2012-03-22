//
//  ViewController.m
//  Callout
//
//  Created by slim on 3/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CalloutView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(IBAction) btnClicked:(id)sender
{
    NSLog(@"[%@].%@ ", [self class],NSStringFromSelector(_cmd));

    CalloutView * callout = [[CalloutView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];

    [callout showFromAnchorPoint:[sender bounds] inView:sender animated:YES];
}
@end
