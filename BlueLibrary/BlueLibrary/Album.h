//
//  Album.h
//  BlueLibrary
//
//  Created by lirenqiang on 2016/11/21.
//  Copyright © 2016年 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Album : NSObject

@property (nonatomic, copy, readonly) NSString *title, *artist, *genre, *coverUrl, *year;

- (instancetype)initWithTitle:(NSString *)title artist: (NSString *)artist coverUrl: (NSString *)coverUrl year: (NSString *)year;

@end
