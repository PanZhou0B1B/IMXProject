//
//  UIScrollView+Extension.m
//  IMXBaseCpt
//
//  Created by guyouwen on 2017/12/13.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import "UIScrollView+Extension.h"

@implementation UIScrollView (Extension)

//-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
//{
//    // 若为UITableViewCellContentView（即点击了tableViewCell），则不截获Touch事件
//    if ([NSStringFromClass([gestureRecognizer.view class])isEqualToString:@"UITableViewCellContentView"]) {
//        return NO;
//    }
//    return YES;
//}
//-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//    if (gestureRecognizer.state != 0) {
//        return YES;
//    } else {
//        return NO;
//    }
//}
//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
//{
//    CGPoint velocity = [(UIPanGestureRecognizer *)gestureRecognizer velocityInView:self];
//    CGPoint location = [gestureRecognizer locationInView:self];
//
//    NSLog(@"velocity.x:%f----location.x:%d",velocity.x,(int)location.x%(int)[UIScreen mainScreen].bounds.size.width);
//    if (velocity.x > 0.0f&&(int)location.x%(int)[UIScreen mainScreen].bounds.size.width>[UIScreen mainScreen].bounds.size.width-10) {
//        return NO;
//    }
//    return YES;
//}
@end
