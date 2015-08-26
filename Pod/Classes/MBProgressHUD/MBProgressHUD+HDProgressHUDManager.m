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

+ (void)showLoadingAnimation
{
    [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication] keyWindow] animated:YES];
}

+ (void)showLoadingAnimationWithMessage:(NSString *)message
{
    MBProgressHUD *hud =
        [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication] keyWindow] animated:YES];
    hud.labelText = message;
}

+ (void)showLoadingAnimationWithProgress:(CGFloat)progress
{
    MBProgressHUD *hud =
        [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication] keyWindow] animated:YES];
    hud.mode = MBProgressHUDModeDeterminate;
    hud.progress = progress;
}

+ (void)showLoadingAnimationWithProgress:(CGFloat)progress message:(NSString *)message
{
    MBProgressHUD *hud =
        [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication] keyWindow] animated:YES];
    hud.mode = MBProgressHUDModeDeterminate;
    hud.labelText = message;
    hud.progress = progress;
}

+ (void)showSuccessAnimation
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"success" ofType:@"png"]];
    [self showLoadingAnimationWithImage:image message:nil];
}

+ (void)showSuccessAnimationWithMessage:(NSString *)message
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"success" ofType:@"png"]];
    [self showLoadingAnimationWithImage:image message:message];
}

+ (void)showErrorAnimation
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"error" ofType:@"png"]];
    [self showLoadingAnimationWithImage:image message:nil];
}

+ (void)showErrorAnimationWithMessage:(NSString *)message
{
    UIImage *image =
        [UIImage imageWithContentsOfFile:[_imageBundle pathForResource:@"error" ofType:@"png"]];
    [self showLoadingAnimationWithImage:image message:message];
}

+ (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message
{
    MBProgressHUD *hud =
        [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication] keyWindow] animated:YES];
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = [[UIImageView alloc] initWithImage:image];
    hud.labelText = message;
    [hud show:YES];
}

+ (void)hideLoadingAnimation
{
    [self hideAllHUDsForView:[[UIApplication sharedApplication] keyWindow] animated:YES];
}

@end
