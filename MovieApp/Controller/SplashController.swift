//
//  SplashController.swift
//  MovieApp
//
//  Created by Talha Saygılı on 16.03.2023.
//

import UIKit
import FirebaseRemoteConfig

class SplashController: UIViewController {
    
    @IBOutlet weak var onboardMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // wait 2 seconds and go to the next screen
        
        if NetworkViewController.shared.isConnected{
            
            print("You are connected")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()){
                self.performSegue(withIdentifier: "OpenLogo", sender: nil)
            }
        
        }
        else{
            print("You are not connected")

            
            // basic setup
            onboardMessage.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
            onboardMessage.text = "You are not connected"
            // center
            onboardMessage.center = self.view.center
            // background
            onboardMessage.backgroundColor = .red
            // number of lines
            onboardMessage.numberOfLines = 1
            //
            onboardMessage.tintColor = .black
            // color
            onboardMessage.textColor = .white
            // text alignment
            onboardMessage.textAlignment = .center
        }
        
        

    }
    

}

