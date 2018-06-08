//
//  IMXTimer.m
//  IMXBaseCpt
//
//  Created by guyouwen on 2017/12/13.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import "IMXTimer.h"

@implementation IMXTimer
{
    BOOL isValid;
    BOOL yesOrNo;
}

- (id)init{
    self = [super init];
    isValid = YES;
    yesOrNo = YES;
    return self;
}
+ (nullable IMXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(nullable id)aTarget selector:(nullable SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo{
    IMXTimer *timer = [[IMXTimer alloc]init];
    timer.ti = ti;
    timer.atarget = aTarget;
    timer.aSelector = aSelector;
    timer.userInfo = userInfo;
    if (yesOrNo) {
        [timer repeatSelector];
    }else{
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(ti * NSEC_PER_SEC));
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [aTarget performSelectorOnMainThread:aSelector withObject:userInfo waitUntilDone:NO];
        });
    }
    return timer;
}

-(void)repeatSelector{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.ti * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        if (yesOrNo) {
            [self.atarget performSelectorOnMainThread:self.aSelector withObject:self.userInfo waitUntilDone:NO];
        }
        if (isValid) {
            [self repeatSelector];
        }
    });
}
- (void)reStart{
    yesOrNo = YES;
}
- (void)stop{
    yesOrNo = NO;
}
- (void)invalidate{
    isValid = NO;
}
@end

