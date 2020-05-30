//
//  TabBarViewController.swift
//  Home Work 2.4
//
//  Created by Anzhelika Pikulina on 31/05/2020.
//  Copyright © 2020 Anzhelika Pikulina. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let _ = tabBarController.viewControllers?.first as!
        TabBarViewController
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
