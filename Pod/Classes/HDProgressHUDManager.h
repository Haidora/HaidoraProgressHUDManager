//
//  HDProgressHUDManager.h
//  Pods
//
//  Created by Dailingchi on 15/8/26.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HaidoraProgressHUDProtocol.h"

/**
 *  a wrapper for Progress hud.
 */
@interface HDProgressHUDManager : NSObject

// config
+ (void)setProgressHUDClass:(Class<HaidoraProgressHUDProtocol>)progressHUDClass;

@end

@interface HDProgressHUDManager (HaidoraProgressHUDProtocol) <HaidoraProgressHUDProtocol>

@end
