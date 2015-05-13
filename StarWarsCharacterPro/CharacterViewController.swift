//
//  CharacterViewController.swift
//  StarWarsCharacterPro
//
//  Created by Pepe Padilla on 15/13/05.
//  Copyright (c) 2015 maxeiware. All rights reserved.
//

import UIKit
import AVFoundation

class CharacterViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var aSWCharacter : StarWarsCharacter?
    var player : AVAudioPlayer? // = AVAudioPlayer()
    
    // MARK : Life Cycle
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        edgesForExtendedLayout = UIRectEdge.None
        chargeCharacter()
    }
    
    // MARK : Utils
    func chargeCharacter() {
        if let aChar = aSWCharacter {
            title = aChar.characterName
            photoImageView?.image = aChar.photoCharacter
        } else {
            title = ""
            photoImageView?.image = nil
        }
    }
    
    
    // MARK : Actions
    @IBAction func playAction(sender: AnyObject) {
        if let aChar = aSWCharacter {
            if let urlSound = aChar.soundRecord {
                
                AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
                AVAudioSession.sharedInstance().setActive(true, error: nil)
                
                var error:NSError?
                var aData : NSData? = NSData(contentsOfURL: urlSound)
                //player = AVAudioPlayer(contentsOfURL: urlSound, error: &error)
                player = AVAudioPlayer(data: aData, error: &error)
                player?.prepareToPlay()
                player?.delegate = self
                player?.numberOfLoops = 0
                player?.play()
            }
        }
    }
    
    
    @IBAction func wikiAction(sender: AnyObject) {
        if let aChar = aSWCharacter {
            var wikiVC : WikiViewController = WikiViewController(nibName: "WikiViewController", bundle: nil)
            wikiVC.swCharacter = aChar
            
            navigationController?.pushViewController(wikiVC, animated: true)
        }
    }
    
    // MARK : AVAudioPlayerDelegate
    /*
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        NSLog("OK1")
        
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        NSLog("KO2 %@", error)
    }
    
    func audioPlayerBeginInterruption(player: AVAudioPlayer!) {
        NSLog("OK3")
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer!) {
        NSLog("OK4")
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer!, withFlags flags: Int) {
        NSLog("OK5")
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer!, withOptions flags: Int) {
        NSLog("OK6")
    }*/
    
}
