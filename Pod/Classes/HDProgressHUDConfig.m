//
//  HDProgressHUDConfig.m
//  Pods
//
//  Created by Dailingchi on 15/12/9.
//
//

#import "HDProgressHUDConfig.h"
#import <Aspects.h>

@interface HDProgressHUDConfig ()

@property (nonatomic, strong, readwrite) UIViewController *currentViewController;

@end

@implementation HDProgressHUDConfig

+ (void)load
{
    [UIViewController aspect_hookSelector:@selector(viewDidLoad)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> info) {
                                 UIViewController *viewController = [info instance];
                                 [HDProgressHUDConfig sharedInstance].currentViewController =
                                     viewController;
                               } error:NULL];
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> info) {
                                 UIViewController *viewController = [info instance];
                                 [HDProgressHUDConfig sharedInstance].currentViewController =
                                     viewController;
                               } error:NULL];
}

static HDProgressHUDConfig *sharedHDProgressHUDConfig = nil;

+ (HDProgressHUDConfig *)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      sharedHDProgressHUDConfig = [[HDProgressHUDConfig alloc] init];
    });
    return sharedHDProgressHUDConfig;
}

@end
