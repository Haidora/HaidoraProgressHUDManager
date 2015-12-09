//
//  HDProgressHUDConfig.h
//  Pods
//
//  Created by Dailingchi on 15/12/9.
//
//

#import <Foundation/Foundation.h>

@interface HDProgressHUDConfig : NSObject

+ (HDProgressHUDConfig *)sharedInstance;

// default is NO
@property (nonatomic, assign) BOOL showInWindow;

/**
 *  ViewController前缀(为了区分自定义的VC和第三方VC),默认为空.Array会自动创建
 */
@property (nonatomic, strong, readonly) NSMutableArray *viewControllerPrefixs;

@property (nonatomic, strong, readonly) UIViewController *currentViewController;

@end
