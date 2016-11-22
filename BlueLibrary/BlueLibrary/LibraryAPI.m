//
//  LibraryAPI.m
//  BlueLibrary
//
//  Created by lirenqiang on 2016/11/21.
//  Copyright © 2016年 Eli Ganem. All rights reserved.
//

#import "LibraryAPI.h"
#import "PersistencyManager.h"
#import "HTTPClient.h"

@interface LibraryAPI ()
{
    PersistencyManager *persistencyManager;
    HTTPClient *httpClient;
    BOOL isOnline;
}
@end

@implementation LibraryAPI

- (instancetype)init
{
    self = [super init];
    if (self) {
        persistencyManager  = [PersistencyManager new];
        httpClient = [HTTPClient new];
        isOnline = NO;
    }
    return self;
}

+ (instancetype)sharedInstance
{
    static LibraryAPI *_sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[LibraryAPI alloc] init];
    });
    return _sharedInstance;
}

- (NSArray *)getAlbums
{
    return [persistencyManager getAlbums];
}

- (void)addAlbum:(Album *)album atIndex:(int)index
{
    [persistencyManager addAlbum:album atIndex:index];
    
    if (isOnline) {
        [httpClient postRequest:@"/api/addAlbum" body:[album description]];
    }
}

- (void)deleteAlbumAtIndex:(int)index
{
    [persistencyManager deleteAlbumAtIndex:index];
//    [persistencyManager deleteAlbumAtindex:index];
    if (isOnline)
    {
        [httpClient postRequest:@"/api/deleteAlbum" body:[@(index) description]];
    }
}
@end
