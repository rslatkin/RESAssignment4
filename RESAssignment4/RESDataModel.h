//
//  RESDataModel.h
//  RESAssignment4
//
//  Created by Robert Slatkin on 2/24/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RESDataModel : NSObject

@property (nonatomic, weak) NSMutableArray *allURLS;
@property (nonatomic, weak) NSMutableArray *allNames;

+ (instancetype) sharedStore;

@end
