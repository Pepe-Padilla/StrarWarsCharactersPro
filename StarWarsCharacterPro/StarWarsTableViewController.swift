//
//  StarWarsTableViewController.swift
//  StarWarsCharacterPro
//
//  Created by Pepe Padilla on 15/13/05.
//  Copyright (c) 2015 maxeiware. All rights reserved.
//

import UIKit

class StarWarsTableViewController: UITableViewController, StarWarsTableViewControllerDelegate, AnyObject {
    
    var delegate : StarWarsTableViewControllerDelegate?
    
    let sectionRebel = 0
    let sectionImperial = 1
    
    let universe : StarWarsUniverse = StarWarsUniverse()
    var genesis = false
    
    
    
    // MARK: - Utils
    func universeGenesis() {
        if !genesis {
            universe.fillUniverse()
        }
        genesis = true
    }
    
    // MARK: - Life cycle
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        universeGenesis()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == sectionRebel {
            return "Rebels"
        } else {
            return "Imperials"
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == sectionRebel {
            return universe.rebels.count
        } else {
            return universe.imperial.count
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let idCell : String = "StarWarsCell"
        
        var cell : UITableViewCell! = (tableView.dequeueReusableCellWithIdentifier(idCell) as? UITableViewCell)
        
        if(cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,reuseIdentifier:idCell)
        }
        
        var aSWCharacter : StarWarsCharacter;
        if indexPath.section == sectionRebel {
            aSWCharacter = universe.rebels[indexPath.row]
        } else {
            aSWCharacter = universe.imperial[indexPath.row]
        }
        
        cell.textLabel?.text = aSWCharacter.characterName
        cell.detailTextLabel?.text = aSWCharacter.alias
        cell.imageView?.image = aSWCharacter.photoCharacter

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var aSWCharacter : StarWarsCharacter;
        
        if indexPath.section == sectionRebel {
            aSWCharacter = universe.rebels[indexPath.row]
        } else {
            aSWCharacter = universe.imperial[indexPath.row]
        }
        
        if delegate != nil {
            delegate?.starWarsTableViewController(self, didChangeCharacter: aSWCharacter)
        }
        
        // Notification
        var nc : NSNotificationCenter = NSNotificationCenter.defaultCenter()
        var dict : NSDictionary = ["StarWarsCharacter" : aSWCharacter]
        var n : NSNotification = NSNotification(name: "StarWarsCharacterDidChange", object: self, userInfo: dict as [NSObject : AnyObject])
        nc.postNotification(n)
        
        // default
        var coords = [indexPath.section, indexPath.row]
        var def : NSUserDefaults = NSUserDefaults.standardUserDefaults()
        def.setObject(coords, forKey: "LastStarWarsCharacter")
        def.synchronize()
        
        
    }
    
    // MARK: - StarWarsTableViewControllerDelegate
    func starWarsTableViewController(swtvc: StarWarsTableViewController, didChangeCharacter: StarWarsCharacter) {
        
        var aSWCharacter = didChangeCharacter
        
        var charVC : CharacterViewController = CharacterViewController(nibName: "CharacterViewController", bundle: nil)
        charVC.aSWCharacter = aSWCharacter
        
        navigationController?.pushViewController(charVC, animated: true)
    }

}


protocol StarWarsTableViewControllerDelegate {
    func starWarsTableViewController(swtvc: StarWarsTableViewController, didChangeCharacter: StarWarsCharacter)
}




