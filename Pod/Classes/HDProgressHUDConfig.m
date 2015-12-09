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

@property (nonatomic, strong, readwrite) NSMutableArray *viewControllerPrefixs;
@property (nonatomic, strong, readwrite) UIViewController *currentViewController;

@end

@implementation HDProgressHUDConfig

+ (void)load
{
    [UIViewController aspect_hookSelector:@selector(viewDidLoad)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> info) {
                                 UIViewController *viewController = [info instance];
                                 [self configViewController:viewController];
                               } error:NULL];
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> info) {
                                 UIViewController *viewController = [info instance];
                                 [self configViewController:viewController];
                               } error:NULL];
}

+ (void)configViewController:(UIViewController *)viewController
{
    [[HDProgressHUDConfig sharedInstance]
            .viewControllerPrefixs
        enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
          if ([obj isKindOfClass:[NSString class]])
          {
              if ([NSStringFromClass([viewController class]) hasPrefix:obj])
              {
                  [HDProgressHUDConfig sharedInstance].currentViewController = viewController;
                  *stop = YES;
              }
          }
          else
          {
              NSAssert(NO, @"%@ in viewControllerPrefixs must subClass of NSString", obj);
          }
        }];
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

- (NSMutableArray *)viewControllerPrefixs
{
    if (nil == _viewControllerPrefixs)
    {
        _viewControllerPrefixs = [[NSMutableArray alloc] init];
    }
    return _viewControllerPrefixs;
}

@end
