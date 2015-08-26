//
//  HaidoraProgressHUDProtocol.h
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#ifndef Pods_HaidoraProgressHUDProtocol_h
#define Pods_HaidoraProgressHUDProtocol_h

@protocol HaidoraProgressHUDProtocol <NSObject>

// show loading animation
+ (void)showLoadingAnimation;
+ (void)showLoadingAnimationWithMessage:(NSString *)message;
+ (void)showLoadingAnimationWithProgress:(CGFloat)progress;
+ (void)showLoadingAnimationWithProgress:(CGFloat)progress message:(NSString *)message;

// show loading animation for special
+ (void)showSuccessAnimation;
+ (void)showSuccessAnimationWithMessage:(NSString *)message;
+ (void)showErrorAnimation;
+ (void)showErrorAnimationWithMessage:(NSString *)message;
+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message;

// hidden
+ (void)hideLoadingAnimation;

@end

#endif
