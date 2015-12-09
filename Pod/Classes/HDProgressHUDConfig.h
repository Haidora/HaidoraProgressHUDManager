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
@property (nonatomic, strong, readonly) UIViewController *currentViewController;

@end
