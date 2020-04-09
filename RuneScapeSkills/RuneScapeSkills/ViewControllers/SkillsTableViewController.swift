//
//  SkillsTableViewController.swift
//  RuneScapeSkills
//
//  Created by Clayton Watkins on 4/8/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class SkillsTableViewController: UITableViewController {

    var skills: [Skill] = [
    Skill(name: "Attack", style: "Combat", definition: "Train to increase accuracy"),
    Skill(name: "Strength", style: "Combat", definition: "Train to increase max melee damage"),
    Skill(name: "Defense", style: "Combat", definition: "Train to increase melee defense"),
    Skill(name: "Range", style: "Combat", definition: "Train to increase ranged attack"),
    Skill(name: "Magic", style: "Combat", definition: "Train to increase magic attack"),
    Skill(name: "Prayer", style: "Combat", definition: "Train to use prayer buffs"),
    Skill(name: "Hitpoints", style: "Combat", definition: "Train to increase max HP"),
    Skill(name: "Runecrafting", style: "Skilling", definition: "Train to craft magical runes and kill youself"),
    Skill(name: "Crafting", style: "Skilling", definition: "Train to craft create items, from pottery to armour"),
    Skill(name: "Mining", style: "Skilling", definition: "Train to mine ore"),
    Skill(name: "Smithing", style: "Skilling", definition: "Train to refine ore and smith items"),
    Skill(name: "Fishing", style: "Skilling", definition: "Train to fish from ocean, lakes, and ponds."),
    Skill(name: "Cooking", style: "Skilling", definition: "Train to cook food"),
    Skill(name: "Firemaking", style: "Skilling", definition: "Train to make fires"),
    Skill(name: "Woodcutting", style: "Skilling", definition: "Train to cut different trees"),
    Skill(name: "Agility", style: "Skilling", definition: "Train to incerease run speed and unlock shortcuts"),
    Skill(name: "Herblore", style: "Skilling", definition: "Train to clean herbs and create potions"),
    Skill(name: "Construction", style: "Skilling", definition: "Train to craft items for a player owened house"),
    Skill(name: "Theiving", style: "Skilling", definition: "Train to steal from npcs and market stalls"),
    Skill(name: "Farming", style: "Skilling", definition: "Train to grow crops and herbs"),
    Skill(name: "Fletching", style: "Skilling", definition: "Train to craft arrows"),
    Skill(name: "Slayer", style: "Combat", definition: "Train to fight special monsters and earn points for rewards"),
    Skill(name: "Hunter", style: "Skilling", definition: "Train to capture and hunt animals for items")
    ]
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return skills.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Skills", for: indexPath)
        
        let skillName = skills[indexPath.row]
        cell.textLabel?.text = skillName.name
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SkillInformationSegue"{
            if let skillVC = segue.destination as? SkillsViewController,
                let indexpath = self.tableView.indexPathForSelectedRow
                {
                    skillVC.skillInfo = skills[indexpath.row]
            }
            
        }
    }
    

}
