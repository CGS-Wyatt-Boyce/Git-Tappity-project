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
    var ifReset = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            }
    func alert() {
        
    }
    
    @IBAction func reset() {
        ifReset = true
         count = 30
        taps = 0
        gameStarted = true
        highScores.append(score.text!)
        //self.highScoreDisplay.text = self.highScores=
        time.text = String(count)
        print("timer ran \(count) times")
            }
    
   
    
    func gameHasStarted() {
        
        if gameStarted == true {
            gameStarted = false
        }
        print("Has the game not started? \(gameStarted)")
        let _  = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)  { (timer) in
            
            if self.ifReset == true {
                timer.invalidate()
                self.count += 1
                self.ifReset = false
                print("Has it not reset? \(self.ifReset)")
            }
            
            self.count -= 1
            self.time.text = String(self.count)
            
            
            if self.count == 0 {
                timer.invalidate()
                self.reset()
                self.count = 30
                self.time.text = String(self.count)
            }
        }
    }

    @IBAction func startGame() {
        if gameStarted == true {
             gameHasStarted()
        }
    }

    @IBAction func buttonTapped(sender: UIButton) {
        if gameStarted == false {
            taps += 1
            score.text = String(taps)
        }
       
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

