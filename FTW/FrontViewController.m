//
//  FrontViewController.m
//  FTW
//
//  Created by Jayesh Lata on 10/8/15.
//  Copyright © 2015 Jayesh Lata. All rights reserved.
//

#import "FrontViewController.h"
#import "SWRevealViewController.h"

@interface FrontViewController()

// Private Methods:
- (IBAction)pushExample:(id)sender;

@end

@implementation FrontViewController

#pragma mark - View lifecycle


- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.title = NSLocalizedString(@"Front View", nil);
    [self.navigationController setNavigationBarHidden:YES];
    
    // navigation controller and stuff, to be avoided for now
    SWRevealViewController *revealController = [self revealViewController];
    [self.navigationController.navigationBar addGestureRecognizer:revealController.panGestureRecognizer];
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
        style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    self.navigationItem.leftBarButtonItem = revealButtonItem;
}


#pragma mark - Example Code

- (IBAction)pushExample:(id)sender
{
	UIViewController *stubController = [[UIViewController alloc] init];
	stubController.view.backgroundColor = [UIColor whiteColor];
	[self.navigationController pushViewController:stubController animated:YES];
}

@end