//
//  ViewController.swift
//  HaidoraProgressHUDManager
//
//  Created by mrdaios on 02/02/2016.
//  Copyright (c) 2016 mrdaios. All rights reserved.
//

import UIKit
import HaidoraProgressHUDManager
import SVProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     
    }

    @IBAction func showHUD(sender: AnyObject) {
//        HUDManager<SVProgressHUD>.showLoadingAnimation()
        
//        HUDManager<SVProgressHUD>.showLoadingAnimation();
        
//        HUDManager<SVProgressHUD1>.showLoadingAnimation();
//        HaidoraProgressHUDManager.Manager.showLoadingAnimation()
//        Manager.showLoadingAnimation()
//        Manager.showLoadingAnimation();
//        Manager.showLoadingAnimation("test")
        print(NSBundle.mainBundle())
        Manager.showLoadingAnimation(nil, image: UIImage(named: "Frameworks/SVProgressHUD.framework/SVProgressHUD.bundle/info@3x"))
    }
}


