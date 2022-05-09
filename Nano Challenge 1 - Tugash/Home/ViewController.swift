//
//  ViewController.swift
//  Nano Challenge 1 - Tugash
//
//  Created by Adam Ibnu fiadi on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var halfCircle: UIView!
    @IBOutlet weak var segmentedControlBtnBg: UIView!
    @IBOutlet weak var segmentedControlBtn: UISegmentedControl!
    
    
    @IBOutlet weak var scienceMajor: UIView! {
        didSet{
            scienceMajor.isHidden = false
        }
    }
    @IBOutlet weak var socialMajor: UIView! {
        didSet {
            socialMajor.isHidden = true
        }
    }
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Logo Container
        halfCircle.layer.cornerRadius = halfCircle.frame.width / 2
        
        //Segmented Control Container
        segmentedControlBtnBg.layer.cornerRadius = 10
        segmentedControlBtnBg.layer.masksToBounds = true
        
        //Segmented Control border
        segmentedControlBtn.layer.borderWidth = 3.0
        segmentedControlBtn.layer.borderColor = UIColor.white.cgColor
        
        //Segmented Control Text font
        segmentedControlBtn.font(name: "Bungee-Regular", size: 20)
        
        //Segmented Control Text Color
        segmentedControlBtn.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.90, blue: 0.86, alpha: 1.00)], for: UIControl.State.selected)
        
    }
    
    @IBAction func switchMajor(_ sender: UISegmentedControl) {
        switch segmentedControlBtn.selectedSegmentIndex {
        case 0:
            scienceMajor.isHidden = false
            socialMajor.isHidden = true
            break
        case 1:
            scienceMajor.isHidden = true
            socialMajor.isHidden = false
            break
        default:
            break
        }
        
        
    }
    

    
    
}

extension UISegmentedControl {
    func font(name:String?, size:CGFloat?) {
        let attributedSegmentFont = NSDictionary(object: UIFont(name: name!, size: size!)!, forKey: NSAttributedString.Key.font as NSCopying)
        setTitleTextAttributes(attributedSegmentFont as [NSObject : AnyObject] as [NSObject : AnyObject] as? [NSAttributedString.Key : Any], for: .normal)
    }
}


