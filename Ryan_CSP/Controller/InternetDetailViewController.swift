//
//  InternetDetailViewController.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 11/29/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import WebKit
import UIKit

public class internetDetailViewController : UIViewController
{
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    private func setup() -> Void
    {
        
    }
}
