//
//  ViewController.swift
//  Is_it_Prime
//
//  Created by Tina Loh on 6/5/15.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func goButton(sender: AnyObject) {
        
        var number = numberInput.text.toInt()
        
        if number != nil {
            
            var unwrappedNumber = number!
            
            var isPrime = true
            
            if unwrappedNumber == 1 {
                
                isPrime = false
            }
            
            if unwrappedNumber != 2 && unwrappedNumber != 1 {
                
                for var i = 2; i < unwrappedNumber; i++ {
                    
                    if unwrappedNumber % i  == 0 {
                        
                        isPrime = false
                    }
                    
                }
                
            }

        
        
        if isPrime == true {
            
            result.text = "\(unwrappedNumber) is Prime"
            
        } else {
            
            result.text = "\(unwrappedNumber) is Not Prime"
        }
    }
}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

