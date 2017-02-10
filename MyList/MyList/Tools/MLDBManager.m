//
//  MLDBManager.m
//  MyList
//
//  Created by kanewang on 2017/2/10.
//  Copyright © 2017年 shuige. All rights reserved.
//

#import "MLDBManager.h"

static MLDBManager *manager = nil;

@implementation MLDBManager

+ (instancetype)sharedManager {
    
    if (manager == nil) {
     
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            manager = [[MLDBManager alloc] init];
        });
    }
    return manager;
}

@end
