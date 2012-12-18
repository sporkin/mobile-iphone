//
//  SINewsFeedController.m
//  SporkIt
//
//  Created by James Sodini on 12/18/12.
//  Copyright (c) 2012 SporkinIt. All rights reserved.
//

#import "SINewsFeedCell.h"
#import "SINewsFeedController.h"
#import "SINewsFeedData.h"

@interface SINewsFeedController () {
    NSArray *feed;
}

- (NSArray *)fakeData;

@end

@implementation SINewsFeedController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    feed = [self fakeData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return feed.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"feeder";
    
    SINewsFeedCell *current = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!current) {
        current = [[SINewsFeedCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    SINewsFeedData *data = [feed objectAtIndex:indexPath.row];
    
    if (data == nil) {
        NSLog(@"Error reading row %d when data has %d rows", indexPath.row, feed.count);
    }
    
    NSLog(@"Reading index %d for data %@", indexPath.row, data.description);
    
    current.description.text = [[feed objectAtIndex:indexPath.row] description];
//    current.userImage.image  = [[feed objectAtIndex:indexPath.row] userImage];
//    current.mainImage.image  = [[feed objectAtIndex:indexPath.row] dishImage];
        
    return current;
}

- (NSArray *)fakeData {
    NSMutableArray *data = [[NSMutableArray alloc] init];
    
    for (NSUInteger index = 0; index < 5; index++) {
        SINewsFeedData *current = [[SINewsFeedData alloc] init];
        
        current.name = [NSString stringWithFormat:@"User %d", index];
        current.restaurant = [NSString stringWithFormat:@"Restaurant %d", index];
        current.dish = [NSString stringWithFormat:@"Dish %d", index];
        current.dishImage = [UIImage imageNamed:@"demo.jpg"];
        current.userImage = [UIImage imageNamed:@"user"];
        
        [data addObject:current];
    }
    
    return data;
}

@end
