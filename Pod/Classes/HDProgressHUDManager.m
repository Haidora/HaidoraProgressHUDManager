//
//  HDProgressHUDManager.m
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#import "HDProgressHUDManager.h"
#import <objc/runtime.h>

static Class<HaidoraProgressHUDProtocol, NSObject> _progressHUDClass = nil;
@implementation HDProgressHUDManager

+ (void)setProgressHUDClass:(Class<HaidoraProgressHUDProtocol, NSObject>)progressHUDClass
{
    Class tempClass = progressHUDClass;
    if ([[[tempClass alloc] init] conformsToProtocol:@protocol(HaidoraProgressHUDProtocol)])
    {
        _progressHUDClass = progressHUDClass;
    }
    else
    {
        NSAssert(NO, @"%@ must conforms to %@", NSStringFromClass(tempClass),
                 NSStringFromProtocol(@protocol(HaidoraProgressHUDProtocol)));
    }
}

@end

@implementation HDProgressHUDManager (HaidoraProgressHUDProtocol)

// show loading animation
+ (void)showLoadingAnimation
{
    [_progressHUDClass showLoadingAnimation];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message
{
    [_progressHUDClass showLoadingAnimationWithMessage:message];
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message
{
    [_progressHUDClass showLoadingAnimationWithImage:image message:message];
}

+ (void)showLoadingAnimationInView:(UIView *)view
{
    [_progressHUDClass showLoadingAnimationInView:view];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    [_progressHUDClass showLoadingAnimationWithMessage:message inView:view];
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image
                              message:(NSString *)message
                               inView:(UIView *)view
{
    [_progressHUDClass showLoadingAnimationWithImage:image message:message inView:view];
}

// hidden
+ (void)hideLoadingAnimation
{
    [_progressHUDClass hideLoadingAnimation];
}

+ (void)hideLoadingAnimationInView:(UIView *)view
{
    [_progressHUDClass hideLoadingAnimationInView:view];
}

+ (void)showSuccessAnimation
{
    [_progressHUDClass showSuccessAnimation];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message
{
    [_progressHUDClass showSuccessAnimationWithMessage:message];
}

+ (void)showErrorAnimation
{
    [_progressHUDClass showErrorAnimation];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message
{
    [_progressHUDClass showErrorAnimationWithMessage:message];
}

+ (void)showSuccessAnimationInView:(UIView *)view
{
    [_progressHUDClass showSuccessAnimationInView:view];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    [_progressHUDClass showSuccessAnimationWithMessage:message inView:view];
}

+ (void)showErrorAnimationInView:(UIView *)view
{
    [_progressHUDClass showErrorAnimationInView:view];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    [_progressHUDClass showErrorAnimationWithMessage:message inView:view];
}

@end
