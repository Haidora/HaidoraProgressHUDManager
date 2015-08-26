//
//  HDProgressHUDManager.h
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#import <Foundation/Foundation.h>
#import "HaidoraProgressHUDProtocol.h"

/**
 *  a wrapper for Progress hud.
 */
@interface HDProgressHUDManager : NSObject

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

// config
+ (void)setProgressHUDClass:(Class<HaidoraProgressHUDProtocol>)progressHUDClass;

@end
