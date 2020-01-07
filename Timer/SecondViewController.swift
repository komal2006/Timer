//
//  SecondViewController.swift
//  Timer
//
//  Created by komaldeep kaur on 2020-01-06.
//  Copyright © 2020 komaldeep kaur. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var secondLabel: UILabel!
    
    var seconds2 = 1
    override func viewDidLoad()
    {
        super.viewDidLoad()
         secondLabel.text = "\(self.seconds2)"
                
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
        self.seconds2 += 1
        self.performSegue(withIdentifier: "secondVC", sender: self)
      }
            
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
                if segue.identifier == "secondVC"
                {
                   // print("My second Activity")
                    let segueDestination = segue.destination as! ViewController
                    segueDestination.seconds = self.seconds2
                    print(segueDestination.seconds)
                }
                
    }
}



   
    

    
