//
//  SHMediaManager.h
//  LoongsCity
//
//  Created by 查斯图 on 2018/3/30.
//  Copyright © 2018年 xiaoxiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SHMediaManager : NSObject

+ (void)cropWithVideoUrlStr:(NSURL *)videoUrl start:(CGFloat)startTime end:(CGFloat)endTime completion:(void (^)(NSURL *outputURL, Float64 videoDuration, BOOL isSuccess))completionHandle;

@end
