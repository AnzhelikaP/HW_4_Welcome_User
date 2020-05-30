//
//  WelcomeViewController.swift
//  Home Work 2.4
//
//  Created by Anzhelika Pikulina on 30/05/2020.
//  Copyright © 2020 Anzhelika Pikulina. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUser: UILabel!
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUser.text = "Welcome, Anzhelika" + userName
        
        gradient()
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

extension WelcomeViewController {
   
 
    // MARK: - GRADIENT на фоне
    private func gradient() {
        let color1 = UIColor(red: 200/255, green: 26/255, blue: 100/255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 100/255, green: 26/255, blue: 200/255, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
