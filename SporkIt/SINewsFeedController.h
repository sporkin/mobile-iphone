//
//  SINewsFeedController.h
//  SporkIt
//
//  Created by James Sodini on 12/18/12.
//  Copyright (c) 2012 SporkinIt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SINewsFeedController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *newsFeedTable;

@end
