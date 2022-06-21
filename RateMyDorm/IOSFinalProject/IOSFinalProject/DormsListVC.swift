//
//  DormsVC.swift
//  IOSFinalProject
//
//  Created by Collin Bates on 5/10/22.
//

import UIKit

class DormsListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dorm1: UILabel!
    
    @IBOutlet weak var dorm2: UILabel!
    
    @IBOutlet weak var dorm3: UILabel!
    
    @IBOutlet weak var dorm4: UILabel!
    

    
    func updateLabels(){
        dorm1.text = dormName[0] + "   " + String(format: "%.2f", dormRating[0])
        dorm2.text = dormName[1] + "   " + String(format: "%.2f", dormRating[1])
        dorm3.text = dormName[2] + "   " + String(format: "%.2f", dormRating[2])
        dorm4.text = dormName[3] + "   " + String(format: "%.2f", dormRating[3])
    }
    
    
    @IBAction func viewDorm1(_ sender: UIButton) {
        currentDormView = 0
    }
    
    @IBAction func viewDorm2(_ sender: UIButton) {
        currentDormView = 1
    }
    
    @IBAction func viewDorm3(_ sender: Any) {
        currentDormView = 2
    }
    
    
    @IBAction func viewDorm4(_ sender: Any) {
        currentDormView = 3
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
