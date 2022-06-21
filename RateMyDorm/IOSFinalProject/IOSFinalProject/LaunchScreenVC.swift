//
//  ViewController.swift
//  IOSFinalProject
//
//  Created by Collin Bates on 5/10/22.
//

import UIKit

class LaunchScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//navigation
    
    @IBAction func getStarted(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as!HomePageVC
        dest.launchScreenVC = self
    }
}

