//
//  MBProgressHUD+HDProgressHUDManager.m
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#import "MBProgressHUD+HDProgressHUDManager.h"
#import "HDProgressHUDManager.h"

static NSBundle *_imageBundle = nil;

@implementation MBProgressHUD (HDProgressHUDManager)

+ (void)load
{
    NSBundle *bundle = [NSBundle bundleForClass:[HDProgressHUDManager class]];
    NSURL *url =
        [bundle URLForResource:@"HaidoraProgressHUDManager_MBProgressHUD" withExtension:@"bundle"];
    _imageBundle = [NSBundle bundleWithURL:url];

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
    [MBProgressHUD showHUDAddedTo:view animated:YES];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image
                              message:(NSString *)message
                               inView:(UIView *)view
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = [[UIImageView alloc] initWithImage:image];
    hud.labelText = message;
    [hud show:YES];
}

// hidden
+ (void)hideLoadingAnimation
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self hideLoadingAnimationInView:window];
}

+ (void)hideLoadingAnimationInView:(UIView *)view
{
    [self hideHUDForView:view animated:YES];
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
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"success" ofType:@"png"]];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showLoadingAnimationWithImage:image message:nil inView:window];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"success" ofType:@"png"]];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showLoadingAnimationWithImage:image message:nil inView:window];
}

+ (void)showErrorAnimationInView:(UIView *)view
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"error" ofType:@"png"]];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [self showLoadingAnimationWithImage:image message:nil inView:window];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message inView:(UIView *)view
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"error" ofType:@"png"]];
    [self showLoadingAnimationWithImage:image message:message inView:view];
}

@end
