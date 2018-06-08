//
//  main.m
//  IMXProject
//
//  Created by zhoupanpan on 2018/1/15.
//  Copyright © 2018年 panzhow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IMXFuncCpt/IMXAPPLauncherKit.h>
#ifdef DEBUG
//#import <IMXDebugModule/IMXFBPerformanceUtil.h>
#endif
int main(int argc, char * argv[]) {
#ifdef DEBUG
    //[IMXFBPerformanceUtil fbTrackEnableInMain];
#endif
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([IMXEntryAPPDelegate class]));
    }
}
