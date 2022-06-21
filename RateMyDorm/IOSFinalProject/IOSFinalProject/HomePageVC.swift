//
//  mainScreenVC.swift
//  IOSFinalProject
//
//  Created by Collin Bates on 5/10/22.
//

import UIKit

class HomePageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        findTop()
        changeLabels()
        // Do any additional setup after loading the view.
    }
    
    var launchScreenVC: LaunchScreenVC?
    var currentTopIndex = 0
    
    @IBOutlet weak var topName: UILabel!
    
    @IBOutlet weak var topRating: UILabel!
    
    @IBOutlet weak var topDescription: UILabel!
    @IBOutlet weak var topImage: UIImageView!
    
    func findTop(){
        var topRating = 0.0
        var i = 0
        for rating in dormRating {
            if(rating > topRating){
                topRating = rating
                currentTopIndex = i
            }
            i += 1
        }
    }
    
    func changeLabels(){
        topName.text = dormName[currentTopIndex]
        topDescription.text = dormDescription[currentTopIndex]
        topRating.text = String(format: "%.2f" , dormRating[currentTopIndex]) + " stars"
        topImage.image = dormImage[currentTopIndex]
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
