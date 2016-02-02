//
//  HUDManager.swift
//  Pods
//
//  Created by Dailingchi on 16/2/2.
//
//

import Foundation

public class HUDManager<Element:HUDType> : HUDType {
    
    public typealias E = Element

    public static func showAnimationWith(image: UIImage?, message: NSString?, inView: UIView?) {
        Element.showAnimationWith(image, message: message, inView: inView)
    }
    
    public static func hideAnimation(inView: UIView?) {
        
    }
    
}

