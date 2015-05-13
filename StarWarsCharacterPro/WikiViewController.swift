//
//  WikiViewController.swift
//  StarWarsCharacterPro
//
//  Created by Pepe Padilla on 15/13/05.
//  Copyright (c) 2015 maxeiware. All rights reserved.
//

import UIKit

class WikiViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var wikiWeb: UIWebView?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    var navigation : Bool = false
    
    var swCharacter : StarWarsCharacter?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        edgesForExtendedLayout = UIRectEdge.None
        
        //displayWiki()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        displayWiki()
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
            //let anURL = NSURL(string: <#String#>)
            wikiWeb?.loadRequest(NSURLRequest(URL: aSWCharacter.wikiUrl!))
            wikiWeb?.delegate = self
            
            
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
