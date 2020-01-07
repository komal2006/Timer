//
//  ViewController.swift
//  Timer
//
//  Created by komaldeep kaur on 2020-01-06.
//  Copyright © 2020 komaldeep kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    
   var seconds = 1
    var timer = Timer()
     override func viewDidLoad()
     {
         super.viewDidLoad()
         firstLabel.text = "\(self.seconds)"
     
    
     if(self.seconds > 10)
    {
        timer.invalidate()
        firstLabel.text = "TIME OVER"
        self.dismiss(animated: false, completion: nil)
       // print("Time over")
    }
    else
    {
        let myTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { Mytimer in
                self.seconds += 1
                self.performSegue(withIdentifier: "firstVC", sender: self)
                }
                
            }
        }
        
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "firstVC"
            {
                //print("First Activity ")
                let segueDestination = segue.destination as! SecondViewController
                segueDestination.seconds2 = self.seconds
                print(segueDestination.seconds2)
            }
            
    }


}

