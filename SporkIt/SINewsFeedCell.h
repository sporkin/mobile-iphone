//
//  SINewsFeedCell.h
//  SporkIt
//
//  Created by James Sodini on 12/18/12.
//  Copyright (c) 2012 SporkinIt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SINewsFeedCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UILabel *description;

@end
