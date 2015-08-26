//
//  HDProgressHUDManager.m
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#import "HDProgressHUDManager.h"
#import <objc/runtime.h>

static Class<HaidoraProgressHUDProtocol> _progressHUDClass = nil;
@implementation HDProgressHUDManager

+ (void)setProgressHUDClass:(Class<HaidoraProgressHUDProtocol>)progressHUDClass
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

+ (void)showLoadingAnimation
{
    [_progressHUDClass showLoadingAnimation];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message
{
    [_progressHUDClass showLoadingAnimationWithMessage:message];
}

+ (void)showLoadingAnimationWithProgress:(CGFloat)progress
{
    [_progressHUDClass showLoadingAnimationWithProgress:progress];
}

+ (void)showLoadingAnimationWithProgress:(CGFloat)progress message:(NSString *)message
{
    [_progressHUDClass showLoadingAnimationWithProgress:progress message:message];
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

+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message
{
    [_progressHUDClass showLoadingAnimationWithImage:image message:message];
}

+ (void)hideLoadingAnimation
{
    [_progressHUDClass hideLoadingAnimation];
}

@end
