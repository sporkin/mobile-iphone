//
//  SINewsFeedData.h
//  SporkIt
//
//  Created by James Sodini on 12/18/12.
//  Copyright (c) 2012 SporkinIt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SINewsFeedData : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *dish;
@property (weak, nonatomic) NSString *restaurant;

@property (weak, nonatomic) UIImage *userImage;
@property (weak, nonatomic) UIImage *dishImage;

@end
