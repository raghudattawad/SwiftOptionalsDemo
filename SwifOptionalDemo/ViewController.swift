//
//  ViewController.swift
//  SwifOptionalDemo
//
//  Created by Raghavendra Dattawad on 7/25/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
    
        let  text :String? = nil
        
        
        ///it will crash here because //
        
       // var unwrappedText:String = text!
        
        
        
  //      Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value
     
   
// if u do forcedwrapping like ! means your telling that there is 100% value is there if not it will crash definately //
        

//  For safe unwrapping, you can use an if-let statement, which will not throw an exception or crash if the wrapped value is nil:
  
 /// 1) WAY OF DOING ///
        
        var number:Int?

        //number = 10
        if let unwrappNum = number {
            print("number:\(unwrappNum)")
        }
        else{
            
            print("number has not assigned value")
            
        }
        
   //// 2nd Way using GUARD  ///
        
        ////GUARD /// it is keyword
        
     //   We don’t want the server code to have to deal with nil values or mistakenly send invalid values to the server so we’ll unwrap those input values with guard first.
        
      
        var numberr:Int?
        guard let unwrappedNum = number  else {
            print("hi handle crash using guard")
            return
        }
        print("num:\(unwrappedNum)")
    
    ///one more ///
        
        
        var firstname:String? = "raghu"
        var mYBool:Bool? = false
        
        if let fn = firstname ,fn == "raghu", let bool = mYBool, bool{
            
            print("firstName is bob and myBool was false!")
        }
        
//[Note the use of ! in the print statement to unwrap the optional value.]
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

