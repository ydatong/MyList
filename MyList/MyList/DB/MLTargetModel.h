//
//  MLListModel.h
//  MyList
//
//  Created by kanewang on 2017/2/10.
//  Copyright © 2017年 shuige. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, MLTargetModelType) {
    
    MLTargetModelTypeInPorgress = 0,       //进行中
    MLTargetModelTypeFinished,            //完成
    MLTargetModelTypeAbandon              //废弃
    
};

@interface MLTargetModel : NSObject

@end
