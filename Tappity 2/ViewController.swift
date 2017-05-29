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
    
    var  taps = 0
    var count = 30
    
    
    @IBAction func buttonTapped(sender: UIButton) {
        taps += 1
        score.text = String(taps)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let _  = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false)  { (timer) in
            self.count -= 1
            
            if self.count == 0 {
                timer.invalidate()
                
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

