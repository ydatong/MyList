//
//  MLDBManager.h
//  MyList
//
//  Created by kanewang on 2017/2/10.
//  Copyright © 2017年 shuige. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MLDBManager : NSObject

+ (instancetype)sharedManager;


/**/
- (NSArray <MLTargetModel*> *)fetchAllTargetByStatus:(MLTargetStatus)status;

- (void)updateTargetStatus:(MLTargetStatus)status withTargetId:(NSString*)targetId;

- (void)removeTarget:(NSString*)targetId;

@end
