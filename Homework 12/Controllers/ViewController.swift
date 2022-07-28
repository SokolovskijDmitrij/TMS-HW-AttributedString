//
//  ViewController.swift
//  Homework 12
//
//  Created by Дмитрий Соколовский on 5.05.22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlet
    
    @IBOutlet weak var labelFirst: UILabel!
    
    @IBOutlet weak var labelSecond: UILabel!
    
    @IBOutlet weak var labelThird: UILabel!
    
    @IBOutlet weak var labelFourth: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myAttributeFirst = [NSAttributedString.Key.font: UIFont(name: "swift", size: 26)!, NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue] as [NSAttributedString.Key: Any]
        
        let myStringFirst = NSMutableAttributedString(string: "Games:", attributes: myAttributeFirst)
        
        labelFirst.attributedText = NSAttributedString(attributedString: myStringFirst)
        
        let myAttributeSecond = [NSAttributedString.Key.font: UIFont(name: "Ubuntu", size: 20)!, NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue] as [NSAttributedString.Key: Any]
        
        let myStringSecond = NSMutableAttributedString(string: "Game for Cat", attributes: myAttributeSecond)
        let myRange = NSRange(location: 5, length: 3)
        myStringSecond.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: myRange)
        
        labelSecond.attributedText = NSAttributedString(attributedString: myStringSecond)
        
        let myAttributeThird = [NSAttributedString.Key.font: UIFont(name: "abosanova", size: 20)!, NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue] as [NSAttributedString.Key: Any]
        
        let myStringThird = NSMutableAttributedString(string: "Game with ball", attributes: myAttributeThird)
        let myRangeSecond = NSRange(location: 5, length: 4)
        myStringThird.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: myRangeSecond)
        
        labelThird.attributedText = NSAttributedString(attributedString: myStringThird)
        
        let myShadow = NSShadow()
        myShadow.shadowBlurRadius = 3
        myShadow.shadowOffset = CGSize(width: 3, height: 3)
        myShadow.shadowColor = UIColor.green
        
        let myAttributeFourth = [NSAttributedString.Key.font: UIFont(name: "abosanovabold", size: 20)!, NSAttributedString.Key.shadow: myShadow]
        
        let myStringFourth = NSMutableAttributedString(string: "Car Racing (in progress)", attributes: myAttributeFourth)
        
        labelFourth.attributedText = NSAttributedString(attributedString: myStringFourth)
    }
}

