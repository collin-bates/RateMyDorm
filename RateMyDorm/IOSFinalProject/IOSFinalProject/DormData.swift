//
//  DormData.swift
//  IOSFinalProject
//
//  Created by Collin Bates on 5/10/22.
//

import Foundation
import UIKit

let dormName = [ "Allyn Hall", "Dunbar Hall", "Wright Hall", "Korb Hall"]

let dormDescription = [
    "Located in Eastway, Allyn is a CO-ED dorm that consists of both single and double rooms. The single rooms feature a half bathroom. Two options for double rooms are available: one with and without a private bathroom. Allyn houses first year students",
    "Dunbar is a CO-ED dorm that consists of double rooms. Dunbar houses first year to upperclass students, and is home to the Business Learning Community",
    "Located in the Tri-Towers, Wright hall is a CO-ED dorm consisting of double rooms and houses first year and upper class students. Wright hall is also home to the College of Arts and Sciences and the Computer Science Living Learning Communities. ",
    "Located across from Eastway, Korb is a CO-ED dorm consisting of two-person double rooms and houses the LGBTQIA Living-Learning community"
]

let allynImage = #imageLiteral(resourceName: "allyn")
let dunbarImage = #imageLiteral(resourceName: "allyn")
let wrightImage = #imageLiteral(resourceName: "wright")
let korbImage = #imageLiteral(resourceName: "korb")

let dormImage = [ allynImage, dunbarImage, wrightImage, korbImage]

var dormRating = [ 3.3, 2.0, 3.0, 4.0 ]

var reviewAmount = [ 3, 1, 1, 1]

var allynReviewYear = [2019, 2020, 1765]

var dunbarReviewYear = [2018]

var wrightReviewYear = [2020]

var korbReviewYear = [2016]

var allynReviewRating = [5.0, 2.0, 3.0]

var dunbarReviewRating = [2.0]

var wrightReviewRating = [3.0]

var korbReviewRating = [4.0]

var allynReviewText = ["I lived there", "food was aight", "superb location, but terrible bathrooms"]

var dunbarReviewText = ["It had no AC"]

var wrightReviewText = ["Just another dorm"]

var korbReviewText = ["Loved it"]

var currentDormView = 0
