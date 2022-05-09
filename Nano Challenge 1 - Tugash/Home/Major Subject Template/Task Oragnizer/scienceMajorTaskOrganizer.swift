//
//  mathSubjectTaskOrganizer.swift
//  Nano Challenge 1 - Tugash
//
//  Created by Adam Ibnu fiadi on 07/05/22.
//

import UIKit

class scienceMajorTaskOrganizer: UIViewController {


    @IBOutlet weak var scienceSubjectLbl: UILabel!
    
    var scienceSubjectName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scienceSubjectLbl.text = scienceSubjectName
    }
    

}
