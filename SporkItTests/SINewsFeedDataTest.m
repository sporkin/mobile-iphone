//
//  SINewsFeedDataTest.m
//  SporkItTests
//
//  Created by James Sodini on 12/18/12.
//  Copyright (c) 2012 SporkinIt. All rights reserved.
//

#import "SINewsFeedDataTest.h"
#import "SINewsFeedData.h"

@implementation SINewsFeedDataTest

- (void)testReturnsDescriptionWhenDataPresent {
    SINewsFeedData *data = [[SINewsFeedData alloc] init];
    
    data.name = @"John Doe";
    data.restaurant = @"Restaurant";
    data.dish = @"Dish";
    
    NSString *expect = @"John Doe had Dish at Restaurant";
    STAssertTrue([expect isEqualToString:data.description], @"'%@' != '%@'", expect, data.description);
}

@end
