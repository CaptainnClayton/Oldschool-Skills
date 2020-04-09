//
//  SkillsViewController.swift
//  RuneScapeSkills
//
//  Created by Clayton Watkins on 4/8/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var SkillType: UITextView!
    @IBOutlet weak var SkillDefinition: UITextView!
    
    var skillInfo: Skill?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    

    func updateView(){
        if let skill = skillInfo{
            title = skill.name
            SkillType.text = skill.style
            SkillDefinition.text = skill.definition
        }
    }

}
