//
//  WikiViewController.swift
//  StarWarsCharacterPro
//
//  Created by Pepe Padilla on 15/13/05.
//  Copyright (c) 2015 maxeiware. All rights reserved.
//

import UIKit

class WikiViewController: UIViewController, UIWebViewDelegate, AnyObject {
    @IBOutlet weak var wikiWeb: UIWebView?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    var navigation : Bool = false
    
    var swCharacter : StarWarsCharacter?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        edgesForExtendedLayout = UIRectEdge.None
        
        var nc : NSNotificationCenter = NSNotificationCenter.defaultCenter()
        nc.addObserver(self, selector: "notifyCharacterChange:", name: "StarWarsCharacterDidChange", object: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        displayWiki()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayWiki() {
        title = "Wiki"
        activityIndicator?.hidesWhenStopped = true
        activityIndicator?.stopAnimating()
        if let aSWCharacter = swCharacter {
            
            activityIndicator?.startAnimating()
            navigation = true
            title = "Wiki - " + aSWCharacter.characterName
            wikiWeb?.loadRequest(NSURLRequest(URL: aSWCharacter.wikiUrl!))
            wikiWeb?.delegate = self
            
            
        }
    }
    
    // MARK: - Notification StarWarsCharacterDidChange
    func notifyCharacterChange(notification: NSNotification) {
        var dictVal : NSDictionary? = notification.userInfo
        
        if let dicv = dictVal {
            var aChar : StarWarsCharacter? = dicv.objectForKey("StarWarsCharacter") as? StarWarsCharacter
            swCharacter = aChar
            displayWiki()
        }
    }
    
    // MARK: - UIWebViewDelegate
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        activityIndicator?.stopAnimating()
        // somthing
        navigation = false
        NSLog("Browser feild: %@", error)
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return navigation
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        navigation = false
        activityIndicator?.stopAnimating()
    }
    
}
