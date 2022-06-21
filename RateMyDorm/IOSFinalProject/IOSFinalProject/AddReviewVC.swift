//
//  AddReviewVC.swift
//  IOSFinalProject
//
//  Created by Collin Bates on 5/11/22.
//

import UIKit

class AddReviewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var currentDorm: UILabel!
    
    @IBOutlet weak var yearInput: UITextField!
    @IBOutlet weak var reviewInput: UITextField!
    @IBOutlet weak var commentInput: UITextField!
    @IBOutlet weak var errorText: UILabel!
    
    func updateLabel(){
        currentDorm.text = dormName[currentDormView]
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        
        let newYear: Int? = Int(yearInput.text!)
        let newReview: Double? = Double(reviewInput.text!)
        
        if( newYear == nil || newYear! < 0){
            errorText.text = "Please put a number greater than 0 in the year section"
        }else if ( newReview == nil || newReview! < 1 || newReview! > 5){
            errorText.text = "Please put a number between 1-5 in the rating section"
        }else{
            errorText.text = ""
            var sum = 0.0
            var currentLoops = 0
            
            if( currentDormView == 0){
                allynReviewYear.append(newYear!)
                allynReviewRating.append(newReview!)
                allynReviewText.append(commentInput.text!)
                reviewAmount[currentDormView] += 1
                
                while( currentLoops < reviewAmount[currentDormView]){
                    sum += allynReviewRating[currentLoops]
                    
                    currentLoops += 1
                }
            }
            
            if( currentDormView == 1){
                dunbarReviewYear.append(newYear!)
                dunbarReviewRating.append(newReview!)
                dunbarReviewText.append(commentInput.text!)
                reviewAmount[currentDormView] += 1
                
                while( currentLoops < reviewAmount[currentDormView]){
                    sum += dunbarReviewRating[currentLoops]
                    
                    currentLoops += 1
                }
            }
            
            if( currentDormView == 2){
                wrightReviewYear.append(newYear!)
                wrightReviewRating.append(newReview!)
                wrightReviewText.append(commentInput.text!)
                reviewAmount[currentDormView] += 1
                
                while( currentLoops < reviewAmount[currentDormView]){
                    sum += wrightReviewRating[currentLoops]
                    
                    currentLoops += 1
                }
            }
            
            if( currentDormView == 3){
                korbReviewYear.append(newYear!)
                korbReviewRating.append(newReview!)
                korbReviewText.append(commentInput.text!)
                reviewAmount[currentDormView] += 1
                
                while( currentLoops < reviewAmount[currentDormView]){
                    sum += korbReviewRating[currentLoops]
                    
                    currentLoops += 1
                }
            }
            
            dormRating[currentDormView] = sum / Double(reviewAmount[currentDormView])
            self.performSegue(withIdentifier: "Dorm View", sender: nil)

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
