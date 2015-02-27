//
//  RESDataModel.m
//  RESAssignment4
//
//  Created by Robert Slatkin on 2/24/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import "RESDataModel.h"

@interface RESDataModel ()

@property (nonatomic) NSMutableArray *urls;
@property (nonatomic) NSMutableArray *names;

@end

@implementation RESDataModel



+ (instancetype)sharedStore
{
    static RESDataModel *sharedStore = nil;
    
    //Do I need to create a shared store?
    if(!sharedStore){
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

- (instancetype)initPrivate
{
    self = [super init];
    
    if (self) {
        
        _names = [[NSMutableArray alloc] init];
        //Add items
        [_names addObject:@"Google"];
        [_names addObject:@"CNN"];
        [_names addObject:@"Facebook"];
        [_names addObject:@"Amazon"];
        [_names addObject:@"Yahoo!"];
        
        
        _urls = [[NSMutableArray alloc] init];
        //Add items
        [_urls addObject:@"http://www.google.com"];
        [_urls addObject:@"http://www.cnn.com"];
        [_urls addObject:@"http://www.facebook.com"];
        [_urls addObject:@"http://www.amazon.com"];
        [_urls addObject:@"http://www.yahoo.com"];

    }
    
    return self;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use + [RESDataModel sharedStore]" userInfo:nil];
    
    return nil;
}

- (NSMutableArray *)allNames
{
    return self.names;
}

- (NSMutableArray *)allURLS
{
    return self.urls;
}

@end
