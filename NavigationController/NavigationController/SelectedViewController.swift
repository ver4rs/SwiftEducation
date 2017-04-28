//
//  SelectedViewController.swift
//  NavigationController
//
//  Created by Martin Sekerák on 22.11.15.
//  Copyright © 2015 Martin Sekerák. All rights reserved.
//

import UIKit

class SelectedViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    var colorIndex: Int! = 0
    var color: UIColor!
    
    //var colorArray: Array = ["Blue","Red","Green","Yellow","Purple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        print("Ake:", colorIndex)
        
        
        
        viewColor.backgroundColor = setColorIndex(colorIndex)
    }
    
    func setColorIndex(index: Int) -> UIColor {
        let item = index
        
        switch item {
            case 0: color = UIColor.blueColor()
            case 1:
                color = UIColor.redColor()
            case 2:
                color = UIColor.greenColor()
            case 3:
                color = UIColor.yellowColor()
            case 4:
                color = UIColor.purpleColor()
            default :
                color = UIColor.blackColor()
        }
        return color
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
