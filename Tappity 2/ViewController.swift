//
//  ViewController.swift
//  Tappity 2
//
//  Created by Wyatt A. Boyce on 5/29/17.
//  Copyright © 2017 Wyatt A. Boyce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var time: UILabel!
    @IBOutlet var score: UILabel!
    @IBOutlet var highScoreDisplay: UILabel!
    @IBOutlet var endGame: UIAlertAction!
   
    
    var  taps = 0
    var count = 30
    var gameStarted = true
    var highScores = [String()]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            }
    func alert() {
        
    }
    
    func gameHasStarted() {
        if gameStarted == true {
            gameStarted = false
        }
        print(gameStarted)
        let _  = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)  { (timer) in
            self.count -= 1
            self.time.text = String(self.count)
            
            if self.count == 0 {
                timer.invalidate()
                self.taps = 0
                self.count = 30
                self.gameStarted = true
                self.highScores.append(self.score.text!)
                //self.highScoreDisplay.text = self.highScores
            }
        }
    }

    
    @IBAction func buttonTapped(sender: UIButton) {
        taps += 1
        score.text = String(taps)
        if gameStarted == true {
            gameHasStarted()
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

