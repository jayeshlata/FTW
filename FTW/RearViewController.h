//
//  RearViewController.h
//  FTW
//
//  Created by Jayesh Lata on 10/8/15.
//  Copyright © 2015 Jayesh Lata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RearViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) IBOutlet UITableView *rearTableView;
//@property (nonatomic, retain) IBOutlet UIToolbar *rearToolBar;


@end