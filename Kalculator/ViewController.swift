//
//  ViewController.swift
//  Kalculator
//
//  Created by JOGENDRA on 18/05/17.
//  Copyright © 2017 Jogendra Singh. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var resultScreen: UILabel!
    
    var firstNumber = String()
    var secondNumber = String()
    var isTypingNumber: Bool = false
    var operationTapped = String()
    var isOperationTapped : Bool = false
    
    
    @IBAction func numberButton(_ sender: Any) {
        
        if(!isTypingNumber){
            firstNumber = (sender as AnyObject).currentTitle!!;
            resultScreen.text = firstNumber
            isTypingNumber = true
        }
        
        secondNumber = (sender as AnyObject).currentTitle!!
        resultScreen.text = secondNumber
        
        
    }

    @IBAction func operation(_ sender: Any) {
        operationTapped = (sender as AnyObject).currentTitle!!
        
    }

    @IBAction func equal(_ sender: Any) {
        var result : Int
        if(operationTapped == "+"){
        
            result = Int(firstNumber)! + Int(secondNumber)!
            resultScreen.text = String(result)
        }
        if(operationTapped == "-"){
            
            result = Int(firstNumber)! - Int(secondNumber)!
            resultScreen.text = String(result)
        }
        if(operationTapped == "X"){
            
            result = Int(firstNumber)! * Int(secondNumber)!
            resultScreen.text = String(result)
        }
        if(operationTapped == "/"){
            
            result = Int(firstNumber)! / Int(secondNumber)!
            resultScreen.text = String(result)
        }
        
        
    }
    @IBAction func clearAll(_ sender: Any) {
        firstNumber = "0";
        secondNumber = "0";
        isTypingNumber = false;
        resultScreen.text = "0";
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

