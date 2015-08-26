//
//  HDViewController.m
//  HaidoraProgressHUDManager
//
//  Created by mrdaios on 08/26/2015.
//  Copyright (c) 2015 mrdaios. All rights reserved.
//

#import "HDViewController.h"
#import <HaidoraProgressHUDManager.h>
#import <HaidoraProgressHUDManager/MBProgressHUD+HDProgressHUDManager.h>

@interface HDViewController ()

@end

@implementation HDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [HDProgressHUDManager showLoadingAnimation];
    dispatch_after(
        dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
          [HDProgressHUDManager hideLoadingAnimation];
          [HDProgressHUDManager showLoadingAnimationWithMessage:@"1"];
          dispatch_after(
              dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)),
              dispatch_get_main_queue(), ^{
                [HDProgressHUDManager hideLoadingAnimation];
                [HDProgressHUDManager showLoadingAnimationWithProgress:0.5];
                dispatch_after(
                    dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)),
                    dispatch_get_main_queue(), ^{
                      [HDProgressHUDManager hideLoadingAnimation];
                      [HDProgressHUDManager showLoadingAnimationWithProgress:0.6 message:@"ok"];
                      dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)),
                                     dispatch_get_main_queue(), ^{
                                       [HDProgressHUDManager hideLoadingAnimation];
                                     });
                    });
              });
        });

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(15 * NSEC_PER_SEC)),
                   dispatch_get_main_queue(), ^{
                     [HDProgressHUDManager setProgressHUDClass:[MBProgressHUD class]];
                     [HDProgressHUDManager hideLoadingAnimation];
                     [HDProgressHUDManager showSuccessAnimationWithMessage:@"1"];
                     dispatch_after(
                         dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)),
                         dispatch_get_main_queue(), ^{
                           [HDProgressHUDManager hideLoadingAnimation];
                           [HDProgressHUDManager showErrorAnimation];
                           dispatch_after(
                               dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)),
                               dispatch_get_main_queue(), ^{
                                 [HDProgressHUDManager hideLoadingAnimation];
                                 [HDProgressHUDManager showErrorAnimationWithMessage:@"error"];
                               });
                         });
                   });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
