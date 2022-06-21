//
//  DormViewVC.swift
//  IOSFinalProject
//
//  Created by Collin Bates on 5/10/22.
//

import UIKit

class DormViewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        showReviews()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var currentName: UILabel!
    @IBOutlet weak var currentRating: UILabel!
    @IBOutlet weak var currentDescription: UILabel!
    @IBOutlet weak var reviewsTitle: UILabel!
    @IBOutlet weak var addReview: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentLocation: CGFloat = 0
    let difference: CGFloat = 40
    let difference2: CGFloat = 61
    let xVal1: CGFloat = 90
    let xVal2: CGFloat = 344
    let xVal3: CGFloat = 160
    
    
    func updateLabels(){
        currentName.text = dormName[currentDormView]
        currentDescription.text = dormDescription[currentDormView]
        currentRating.text = String(format: "%.2f" , dormRating[currentDormView]) + " stars"
        currentLocation = reviewsTitle.frame.origin.y + difference2
        imageView.image = dormImage[currentDormView]
    }
    
    func showReviews (){
        var currentLoop = 0
        
        while (currentLoop < reviewAmount[currentDormView]){
            let rating = UILabel(frame: CGRect(x: 0, y: 0, width: 140, height: 21))
            rating.center = CGPoint(x: xVal1, y: currentLocation)
                   
            let year = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 21))
            year.center = CGPoint(x: xVal2, y: currentLocation)
        
            currentLocation = currentLocation + difference
            let comments = UILabel(frame: CGRect(x: 0, y: 0, width: 280, height: 42))
            comments.center = CGPoint(x: xVal3, y: currentLocation)
            comments.numberOfLines = 2
            currentLocation = currentLocation + difference2
            
            
            if( currentDormView == 0){
                rating.text = String(format: "%.2f" , allynReviewRating[currentLoop]) + " stars"
                year.text = String(format: "%2d", allynReviewYear[currentLoop])
                comments.text = allynReviewText[currentLoop]
            }
            
            if( currentDormView == 1){
                rating.text = String(format: "%.2f" , dunbarReviewRating[currentLoop]) + " stars"
                year.text = String(format: "%2d", dunbarReviewYear[currentLoop])
                comments.text = dunbarReviewText[currentLoop]
            }
            
            if( currentDormView == 2){
                rating.text = String(format: "%.2f" , wrightReviewRating[currentLoop]) + " stars"
                year.text = String(format: "%2d", wrightReviewYear[currentLoop])
                comments.text = wrightReviewText[currentLoop]
            }
            
            if( currentDormView == 3){
                rating.text = String(format: "%.2f" , korbReviewRating[currentLoop]) + " stars"
                year.text = String(format: "%2d", korbReviewYear[currentLoop])
                comments.text = korbReviewText[currentLoop]
            }
            
            self.view.addSubview(rating)
            self.view.addSubview(year)
            self.view.addSubview(comments)
            currentLoop += 1
        }
        
       
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
