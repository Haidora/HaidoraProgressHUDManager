//
//  SVProgressHUD+HDProgressHUDManager.m
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#import "SVProgressHUD+HDProgressHUDManager.h"
#import "HDProgressHUDManager.h"

@implementation SVProgressHUD (HDProgressHUDManager)

+ (void)load
{
    [HDProgressHUDManager setProgressHUDClass:[self class]];
}

// show loading animation
+ (void)showLoadingAnimation
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showLoadingAnimationInView:window];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showLoadingAnimationWithMessage:message inView:window];
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showLoadingAnimationWithImage:image message:message inView:window];
}

+ (void)showLoadingAnimationInView:(UIView *)view
{
    [self show];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    [self showWithStatus:message];
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image
                              message:(NSString *)message
                               inView:(UIView *)view
{
    [self showImage:image status:message];
}

// hidden
+ (void)hideLoadingAnimation
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self hideLoadingAnimationInView:window];
}

+ (void)hideLoadingAnimationInView:(UIView *)view
{
    [self dismiss];
}

+ (void)showSuccessAnimation
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showSuccessAnimationInView:window];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showSuccessAnimationWithMessage:message inView:window];
}

+ (void)showErrorAnimation
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showErrorAnimationInView:window];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showErrorAnimationWithMessage:message inView:window];
}

+ (void)showSuccessAnimationInView:(UIView *)view
{
    [self showSuccessWithStatus:nil];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    [self showSuccessWithStatus:message];
}

+ (void)showErrorAnimationInView:(UIView *)view
{
    [self showErrorWithStatus:nil];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    [self showErrorWithStatus:message];
}

@end
