//
//  MLListModel.h
//  MyList
//
//  Created by kanewang on 2017/2/10.
//  Copyright © 2017年 shuige. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, MLTargetStatus) {
    
    MLTargetStatusInPorgress = 0,       //进行中
    MLTargetStatusFinished,            //完成
    MLTargetStatusAbandon              //废弃
};

@interface MLTargetModel : NSObject

@property (nonatomic, copy)     NSString    *targetId;
@property (nonatomic, copy)     NSString    *title;
@property (nonatomic, assign)   NSInteger   targetStatus;  //状态
@property (nonatomic, copy)     NSString    *note;
@property (nonatomic, copy)     NSString    *image; //
@property (nonatomic, copy)     NSString    *tag; //标签
//时间相关
@property (nonatomic, copy)     NSString    *createTime;
@property (nonatomic, copy)     NSString    *lastModifiedTime;
@property (nonatomic, copy)     NSString    *startTime;
@property (nonatomic, copy)     NSString    *endTime;
@property (nonatomic, copy)     NSString    *finishTime;

@end
