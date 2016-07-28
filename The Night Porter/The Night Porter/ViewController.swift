//
//  ViewController.swift
//  The Night Porter
//
//  Created by Navnit Anuth on 28/07/2016.
//  Copyright © 2016 Navnit Anuth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackground(sender: AnyObject) {
        view.backgroundColor = UIColor.darkGrayColor()
        
        // get all the subviews 
        
        let allSubViews = view.subviews
        
        for eachView in allSubViews{
            if eachView is UILabel {
                let myLabel = eachView as! UILabel
                myLabel.textColor = UIColor.lightGrayColor()
            }
        }
    }
    
    @IBAction func restoreBackground(sender: AnyObject) {
        
        view.backgroundColor = UIColor.whiteColor()
        
        // get all the subviews
        
        let allSubViews = view.subviews
        
        for eachView in allSubViews{
            if eachView is UILabel {
                let myLabel = eachView as! UILabel
                myLabel.textColor = UIColor.blackColor()
            }
        }
    }
    
    @IBAction func funkyBackground(sender: AnyObject) {
        
        view.backgroundColor = UIColor.blueColor()
        
        // get all the subviews
        
        let allSubViews = view.subviews
        
        for eachView in allSubViews{
            if eachView is UILabel {
                let myLabel = eachView as! UILabel
                myLabel.textColor = UIColor.yellowColor()
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

    // Outlet
    @IBOutlet weak var basicLabel: UILabel!

    @IBAction func changeLabel(sender: AnyObject) {
        basicLabel.text = "This Label's Value has Changed"
        basicLabel.adjustsFontSizeToFitWidth = true
    }
}

