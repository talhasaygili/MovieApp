//
//  ViewController.swift
//  MovieApp
//
//  Created by Talha Saygılı on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if NetworkViewController.shared.isConnected{
            print("You are connected")
        }
        else{
            print("You are not connected")
        }
        
        
    }


}

