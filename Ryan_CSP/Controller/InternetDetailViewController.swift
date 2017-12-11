//
//  InternetDetailViewController.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 11/29/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import WebKit
import UIKit

public class InternetDetailViewController : UIViewController
{
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAddress : String?
    {
        didSet
            {
                configureDetailView()
            }
    }
    
    var detailText : String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    
    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: detailAddress!)
                
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = "Ryan's CSP app internet screen"
            }
        }
    }
    
    
    
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        configureDetailView()
    }
    private func setup() -> Void
    {
        
    }
}
