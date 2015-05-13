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
    
    var rebels : Array <StarWarsCharacter> = []
    var imperial : Array <StarWarsCharacter> = []
    
    func fillUniverse() {
        
        let mainBundle = NSBundle.mainBundle()
        
        
        // Obi Wan Kenobi
        var pathSW : String? = mainBundle.pathForResource("obiwan", ofType: "mp3")
        var urlSW : NSURL? = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("obiwan.mp3 no encontrado") }
        let obi : StarWarsCharacter = StarWarsCharacter(
            characterName: "Obi Wan Kenobi",
            photoCharacter: UIImage(named: "ObiWan.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Obi-Wan_Kenobi"))
        
        // Minch Yoda
        pathSW = mainBundle.pathForResource("yoda", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("yoda.caf no encontrado") }
        let yoda : StarWarsCharacter = StarWarsCharacter(
            characterName: "Minch Yoda",
            alias: "Yoda",
            photoCharacter: UIImage(named: "yoda.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Obi-Wan_Kenobi"))
        
        // Luke Skywalker
        pathSW = mainBundle.pathForResource("luke", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("luke.mp3 no encontrado") }
        let luke : StarWarsCharacter = StarWarsCharacter(
            characterName: "Luke Skywalker",
            photoCharacter: UIImage(named: "Luke.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Luke_Skywalker"))
        
        // Chewbacca
        pathSW = mainBundle.pathForResource("chewbacca", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("chewbacca.caf no encontrado") }
        let chewie : StarWarsCharacter = StarWarsCharacter(
            characterName: "Chewbacca",
            alias: "Chewie",
            photoCharacter: UIImage(named: "chewbacca.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Chewbacca"))
        
        
        // R2-D2
        pathSW = mainBundle.pathForResource("R2D2", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("r2-d2.caf no encontrado") }
        let r2 : StarWarsCharacter = StarWarsCharacter(
            characterName: "R2-D2",
            alias: "R2",
            photoCharacter: UIImage(named: "R2-D2.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/R2-D2"))

        // C-3PO
        pathSW = mainBundle.pathForResource("C3PO", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("c3po.caf no encontrado") }
        let c3po : StarWarsCharacter = StarWarsCharacter(
            characterName: "C-3PO",
            alias: "3PO",
            photoCharacter: UIImage(named: "c3po.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/C-3PO"))

        rebels = [obi, yoda, luke, chewie, r2, c3po]
        
        
        
        // Anakin Skywalker - Darth Vader
        pathSW = mainBundle.pathForResource("vader", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("vader.caf no encontrado") }
        let vader : StarWarsCharacter = StarWarsCharacter(
            characterName: "Anakin Skywalker",
            alias: "Darth Vader",
            photoCharacter: UIImage(named: "darthVader.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Anakin_Skywalker"))
        
        // Palpatine - Darth Sidious
        pathSW = mainBundle.pathForResource("palpatine", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("palpatine.caf no encontrado") }
        let sidious : StarWarsCharacter = StarWarsCharacter(
            characterName: "Palpatine",
            alias: "Darth Sidious",
            photoCharacter: UIImage(named: "palpatine.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Palpatine"))
        
        
        // Wilhuff Tarkin
        pathSW = mainBundle.pathForResource("tarkin", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("tarkin.caf no encontrado") }
        let tarkin : StarWarsCharacter = StarWarsCharacter(
            characterName: "Wilhuff Tarkin",
            photoCharacter: UIImage(named: "tarkin.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Wilhuff_Tarkin"))
        
        
        // Clone Trooper
        pathSW = mainBundle.pathForResource("trooper", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("trooper.mp3 no encontrado") }
        let trooper : StarWarsCharacter = StarWarsCharacter(
            characterName: "Clone Trooper",
            photoCharacter: UIImage(named: "Clone_trooper.png")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Clone_trooper"))
        
        
        // Boba Fett
        pathSW = mainBundle.pathForResource("boba", ofType: "mp3")
        urlSW = nil
        if let aURL = pathSW {
            urlSW = NSURL(fileURLWithPath: aURL)
        } else { NSLog("boba.mp3 no encontrado") }
        let boba : StarWarsCharacter = StarWarsCharacter(
            characterName: "Boba Fett",
            photoCharacter: UIImage(named: "BobaFett.jpg")!,
            soundRecord: urlSW,
            wikiUrl: NSURL(string: "http://starwars.wikia.com/wiki/Boba_Fett"))
        
        imperial = [vader, sidious, tarkin, trooper, boba]

    }
    
}