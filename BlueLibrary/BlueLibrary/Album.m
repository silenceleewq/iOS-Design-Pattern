//
//  Album.m
//  BlueLibrary
//
//  Created by lirenqiang on 2016/11/21.
//  Copyright © 2016年 Eli Ganem. All rights reserved.
//

#import "Album.h"

@interface Album ()

@end

@implementation Album

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist coverUrl:(NSString *)coverUrl year:(NSString *)year
{
    self = [super init];
    
    if (self) {
        _title = title;
        _artist = artist;
        _coverUrl = coverUrl;
        _year = year;
        _genre = @"Pop";
    }
    
    return self;
}

@end
