//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Neil Bergenroth on 8/17/19.
//  Copyright © 2019 Neil Bergenroth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // initialize variables to hold the score for each team
    var homescore: Int? = 0
    var awayscore: Int?
    
    // IB outlets for imageview and labels to show the scores
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblAwayScore: UILabel!
    
    
    // this method fires when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

        // make the edges of the image rounded to make it look more visually appealing
        
        imageView.layer.cornerRadius = 10
        
    }
    
    // this method fires when the away score button is clicked
    @IBAction func awaypressed(_ sender: Any) {
        
        //incrementawayscore()
        
        if let scoretoreport = awayscore {
            
            lblAwayScore.text = "\(scoretoreport)"
            
        }
        
    }
    
    // this method fires when the home score button is clicked
    @IBAction func buttonPressed(_ sender: Any) {
        
        incrementhomescore()
        
        if let scoretoreport = homescore {
            
             lblHomeScore.text = "\(scoretoreport)"
            
        }
    
    }
    
    // this is the function that increments the score for the home team
    func incrementhomescore() {
        
        if let getscore = homescore  {
            
               homescore = getscore - 1
            
        }
        
    }
    
    // this is the function that increments the score for the away team
    func incrementawayscore() {
        
        if let getscore = awayscore  {
            
            awayscore = getscore
            
        }
        
    }

}

