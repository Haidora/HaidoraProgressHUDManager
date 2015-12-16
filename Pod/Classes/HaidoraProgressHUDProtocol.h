//
//  HaidoraProgressHUDProtocol.h
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#ifndef Pods_HaidoraProgressHUDProtocol_h
#define Pods_HaidoraProgressHUDProtocol_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol HaidoraProgressHUDProtocol <NSObject>

@required

// show loading animation
+ (void)showLoadingAnimation;
+ (void)showLoadingAnimationWithMessage:(NSString *)message;
+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message;

+ (void)showLoadingAnimationInView:(UIView *)view;
+ (void)showLoadingAnimationWithMessage:(NSString *)message inView:(UIView *)view;
+ (void)showLoadingAnimationWithImage:(UIImage *)image
                              message:(NSString *)message
                               inView:(UIView *)view;

// hidden
+ (void)hideLoadingAnimation;
+ (void)hideLoadingAnimationInView:(UIView *)view;

@optional

// show loading animation for special
+ (void)showSuccessAnimation;
+ (void)showSuccessAnimationWithMessage:(NSString *)message;
+ (void)showErrorAnimation;
+ (void)showErrorAnimationWithMessage:(NSString *)message;

+ (void)showSuccessAnimationInView:(UIView *)view;
+ (void)showSuccessAnimationWithMessage:(NSString *)message inView:(UIView *)view;
+ (void)showErrorAnimationInView:(UIView *)view;
+ (void)showErrorAnimationWithMessage:(NSString *)message inView:(UIView *)view;

@end

#endif
