//
//  IMXTimer.h
//  IMXBaseCpt
//
//  Created by guyouwen on 2017/12/13.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IMXTimer : NSObject
@property  NSTimeInterval ti;
@property (nullable,weak) id atarget;
@property (nullable,nonatomic, assign) SEL aSelector;
@property (nullable, retain) id userInfo;

+ (nullable IMXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(nullable id)aTarget selector:(nullable SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;
- (void)reStart;
- (void)stop;
- (void)invalidate;
@end
