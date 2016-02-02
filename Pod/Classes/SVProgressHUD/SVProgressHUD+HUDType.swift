//
//  SVProgressHUD+HUDType.swift
//  Pods
//
//  Created by Dailingchi on 16/2/2.
//
//

import Foundation
import SVProgressHUD;

public typealias Manager = HUDManager<SVProgressHUD>

extension SVProgressHUD: HUDType {

    public static func showAnimationWith(image: UIImage?, message: NSString?, inView: UIView?)
    {
        if let _ = image , let _ = message {
            self.showImage(image, status: message as! String)
        }
        else if let aImage = image {
            self.showImage(aImage, status: "")
        }
        else if let aMessage = message {
            self.showWithStatus(aMessage as String)
        }
        else {
            self.show()
        }
    }
    
    public static func hideAnimation(inView: UIView?) {
        
    }
}