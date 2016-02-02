//
//  HUDType.swift
//  Pods
//
//  Created by Dailingchi on 16/2/2.
//
//

import Foundation
import UIKit

public protocol HUDType {

    static func showAnimationWith(image: UIImage?, message: NSString?, inView: UIView?)
    static func hideAnimation(inView: UIView?)
    
}

public extension HUDType {
    
//    + (void)showLoadingAnimation;
//    + (void)showLoadingAnimationWithMessage:(NSString *)message;
//    + (void)showLoadingAnimationWithImage:(UIImage *)image message:(NSString *)message;

    final static func showLoadingAnimation( message: String? = NSLocalizedString("Loading...", comment: ""), image: UIImage? = nil ,inView: UIView? = nil) {
        showAnimationWith(image, message: message, inView: inView)
    }
}