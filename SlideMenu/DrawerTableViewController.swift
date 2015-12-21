//
//  DrawerTableViewController.swift
//  SlideMenu
//
//  Created by BuiToan on 11/28/15.
//  Copyright © 2015 BuiToan. All rights reserved.
//

import UIKit

class DrawerTableViewController: UITableViewController {
    override func viewDidLoad() {
               
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if let drawerController = parentViewController as? KYDrawerController {
            let mainNavigation = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("MainNavigation") as! UINavigationController
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("vc") as! UINavigationController
            let setting = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("settingvc") as! UINavigationController
            
            switch indexPath.row {
            case 0:
                drawerController.mainViewController = mainNavigation
                
            case 1:
                drawerController.mainViewController = vc
            case 2:
                drawerController.mainViewController = setting
            default:
               break
            }

            drawerController.setDrawerState(.Closed, animated: true)
        }
    }

}
