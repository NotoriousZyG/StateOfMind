//
//  ViewController.swift
//  stateOfMind
//
//  Created by Roman Parajuli on 2/11/15.
//  Copyright (c) 2015 Roman Parajuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var moodArray = ["Happy","Sad","Love","cool","Clone","Expecting","Broke","Peace","HIGH","LIMITLESS","Tired","Drunk","Vomit","Curious","Anxious","Fear"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        var backGroundColor = UIColor.blackColor()
        
        switch row {
        case 0,4,6,10,12,14,16:
            backGroundColor = UIColor.yellowColor()
        case 1:
            backGroundColor = UIColor.blackColor()
        case 8:
            backGroundColor = UIColor.redColor()
        case 7:
            backGroundColor = UIColor.blueColor()
        case 2,3,9,11,13,15:
            backGroundColor = UIColor.greenColor()
        case 5:
            backGroundColor = UIColor.lightGrayColor()
        default:
            backGroundColor = UIColor.brownColor()
            
        
    }
        self.view.backgroundColor = backGroundColor
    
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

