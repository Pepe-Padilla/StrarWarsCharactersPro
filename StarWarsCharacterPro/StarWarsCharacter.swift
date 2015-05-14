//
//  StarWarsCharacter.swift
//  StarWarsCharacterPro
//
//  Created by Pepe Padilla on 15/09/05.
//  Copyright (c) 2015 maxeiware. All rights reserved.
//

import Foundation
import UIKit

class StarWarsCharacter : AnyObject {
    let characterName : String
    let alias : String?
    let photoCharacter : UIImage?
    let soundRecord : NSURL?
    let wikiUrl: NSURL?
    
    init(characterName: String,
        alias: String?,
        photoCharacter: UIImage?,
        soundRecord: NSURL?,
        wikiUrl: NSURL?) {
            self.characterName = characterName
            self.alias = alias
            self.photoCharacter = photoCharacter
            self.soundRecord = soundRecord
            self.wikiUrl = wikiUrl
    }
    
    init(characterName: String,
        photoCharacter: UIImage?,
        soundRecord: NSURL?,
        wikiUrl: NSURL?){
        
            self.characterName = characterName
            self.alias = nil
            self.photoCharacter = photoCharacter
            self.soundRecord = soundRecord
            self.wikiUrl = wikiUrl
    }
    
    
}

