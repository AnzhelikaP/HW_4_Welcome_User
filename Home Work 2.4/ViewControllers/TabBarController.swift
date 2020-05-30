//
//  TabBarController.swift
//  Home Work 2.4
//
//  Created by Anzhelika Pikulina on 30/05/2020.
//  Copyright © 2020 Anzhelika Pikulina. All rights reserved.
//

import UIKit

class TabBarController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let tabBarController = segue.destination as! UITabBarController let destinationVC = tabBarController.viewControllers?.first as!
            DestinationViewController
       
        }
        // Do any additional setup after loading the view.
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
