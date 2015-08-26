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

+ (void)showLoadingAnimation
{
    [self show];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message
{
    [self showWithStatus:message];
}

+ (void)showLoadingAnimationWithProgress:(CGFloat)progress
{
    [self showProgress:progress];
}

+ (void)showLoadingAnimationWithProgress:(CGFloat)progress message:(NSString *)message
{
    [self showProgress:progress status:message];
}

+ (void)showSuccessAnimation
{
    [self showSuccessWithStatus:nil];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message
{
    [self showSuccessWithStatus:message];
}

+ (void)showErrorAnimation
{
    [self showErrorWithStatus:nil];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message
{
    [self showErrorWithStatus:message];
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message
{
    [self showImage:image status:message];
}

+ (void)hideLoadingAnimation
{
    [self dismiss];
}

@end
