//
//  LogoViewController.swift
//  MovieApp
//
//  Created by Talha Saygılı on 16.03.2023.
//

import UIKit
import Firebase

class LogoViewController: UIViewController {
    
    @IBOutlet weak var logoLabel: UILabel!
    func updateLogo(){
        let logoName = RemoteConfig.remoteConfig().configValue(forKey: "logo").stringValue
        
        if let logoValue = logoName{
            logoLabel.text = logoValue
            logoLabel.font = UIFont(name: "ArialRoundedMTBold", size: 40)
            logoLabel.textColor = UIColor(red: 102/256, green: 171/256, blue: 179/256, alpha: 1)
        }
    }

    func setupRemoteConfigDefaults(){
        let defaultValues = [
            "logo": "Default" as NSObject]
        RemoteConfig.remoteConfig().setDefaults(defaultValues)
    }
    
    func fetchRemoteConfig(){
        // Remove this before prod
        RemoteConfig.remoteConfig().fetch(withExpirationDuration: 0){(status, error) in
            guard error == nil else{
                print("Something went wrong")
                return
            }
            print("We got it")
            RemoteConfig.remoteConfig().activate()
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRemoteConfigDefaults()
        fetchRemoteConfig()
        updateLogo()
        print("Logo Printed")

        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){
            self.performSegue(withIdentifier: "ToSearchScreen", sender: nil)
        }
    }
    
    
    

    

}
