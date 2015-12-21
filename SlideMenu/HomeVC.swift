//
//  HomeVC.swift
//  SlideMenu
//
//  Created by BuiToan on 11/28/15.
//  Copyright © 2015 BuiToan. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBAction func didTapOpenButton(sender: AnyObject) {
        if let drawerController = navigationController?.parentViewController as? KYDrawerController {
            drawerController.setDrawerState(.Opened, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
