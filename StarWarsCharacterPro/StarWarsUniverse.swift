//
//  StarWarsUniverse.swift
//  StarWarsCharacterPro
//
//  Created by Pepe Padilla on 15/09/05.
//  Copyright (c) 2015 maxeiware. All rights reserved.
//

import Foundation
import UIKit

class StarWarsUniverse {
    
    static let rebelSection = 0
    static let imperialSection = 1
    
    var rebels : Array <StarWarsCharacter> = []
    var imperial : Array <StarWarsCharacter> = []
    
    func fillUniverse() {
        // Obi Wan Kenobi
        let obi : StarWarsCharacter = StarWarsCharacter(
            characterName: "Obi Wan Kenobi",
            photoCharacter: UIImage(named: "ObiWan.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("obiwan", ofType: "mp3")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Obi-Wan_Kenobi")!)
        
        // Minch Yoda
        let yoda : StarWarsCharacter = StarWarsCharacter(
            characterName: "Minch Yoda",
            alias: "Yoda",
            photoCharacter: UIImage(named: "yoda.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("yoda", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Obi-Wan_Kenobi")!)
        
        // Luke Skywalker
        let luke : StarWarsCharacter = StarWarsCharacter(
            characterName: "Luke Skywalker",
            photoCharacter: UIImage(named: "Luke.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("luke", ofType: "mp3")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Luke_Skywalker")!)
        
        // Chewbacca
        let chewie : StarWarsCharacter = StarWarsCharacter(
            characterName: "Chewbacca",
            alias: "Chewie",
            photoCharacter: UIImage(named: "chewbacca.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("chewbacca", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Chewbacca")!)
        
        
        // R2-D2
        let r2 : StarWarsCharacter = StarWarsCharacter(
            characterName: "R2-D2",
            alias: "R2",
            photoCharacter: UIImage(named: "R2-D2.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("r2-d2", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/R2-D2")!)

        // C-3PO
        let c3po : StarWarsCharacter = StarWarsCharacter(
            characterName: "C-3PO",
            alias: "3PO",
            photoCharacter: UIImage(named: "c3po.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("c3po", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/C-3PO")!)

        rebels = [obi, yoda, luke, chewie, r2, c3po]
        
        
        
        // Anakin Skywalker - Darth Vader
        let vader : StarWarsCharacter = StarWarsCharacter(
            characterName: "Anakin Skywalker",
            alias: "Darth Vader",
            photoCharacter: UIImage(named: "darthVader.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("vader", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Anakin_Skywalker")!)
        
        // Palpatine - Darth Sidious
        let sidious : StarWarsCharacter = StarWarsCharacter(
            characterName: "Palpatine",
            alias: "Darth Sidious",
            photoCharacter: UIImage(named: "palpatine.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("palpatine", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Palpatine")!)
        
        
        // Wilhuff Tarkin
        let tarkin : StarWarsCharacter = StarWarsCharacter(
            characterName: "Wilhuff Tarkin",
            photoCharacter: UIImage(named: "tarkin.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("tarkin", ofType: "caf")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Wilhuff_Tarkin")!)
        
        
        // Clone Trooper
        let trooper : StarWarsCharacter = StarWarsCharacter(
            characterName: "Clone Trooper",
            photoCharacter: UIImage(named: "Clone_trooper.png")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("trooper", ofType: "mp3")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Clone_trooper")!)
        
        
        // Boba Fett
        let boba : StarWarsCharacter = StarWarsCharacter(
            characterName: "Boba Fett",
            photoCharacter: UIImage(named: "BobaFett.jpg")!,
            soundRecord: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("boba", ofType: "mp3")!)!,
            wikiUrl: NSURL(fileURLWithPath: "http://starwars.wikia.com/wiki/Boba_Fett")!)
        
        imperial = [vader, sidious, tarkin, trooper, boba]

    }
    
}