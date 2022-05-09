//
//  scienceMajor.swift
//  Nano Challenge 1 - Tugash
//
//  Created by Adam Ibnu fiadi on 07/05/22.
//

import UIKit



class scienceMajor: UIViewController {

    @IBOutlet weak var indonesiaBtn: UIButton!
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var chenistryBtn: UIButton!
    @IBOutlet weak var physicsBtn: UIButton!
    @IBOutlet weak var biologyBtn: UIButton!
    @IBOutlet weak var mathBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func englishBtnClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toScienceMajorTaskOrganizer", sender: self)
    }
    
    @IBAction func indonesiaBtnClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toScienceMajorTaskOrganizer", sender: self)
    }
    
    @IBAction func chenistryBtnClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toScienceMajorTaskOrganizer", sender: self)
    }
    
    @IBAction func physicsBtnClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toScienceMajorTaskOrganizer", sender: self)
    }
    
    @IBAction func biologyBtnClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toScienceMajorTaskOrganizer", sender: self)
    }
    
    @IBAction func mathBtnClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toScienceMajorTaskOrganizer", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toScienceMajorTaskOrganizer" {
                let vc = segue.destination as! scienceMajorTaskOrganizer
                vc.scienceSubjectName = "MATH"
             }
        }
    
}
