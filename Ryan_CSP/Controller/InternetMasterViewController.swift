//
//  TheInternetView.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 10/26/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import UIKit

class InternetMasterViewController : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
        "Definitions",
        "CSP",
        "Canyons",
        "Twitter",
        "Swift Guide"
        ]
    }()
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : internetDetailViewController?
    
    private func setup() -> Void
    {
         addresses = [
        "http://www.google.com",
        "http://canyons.instructure.com/courses/1137392",
        "http://www.canyonsdistrict.org/",
        "http://twitter.com/?lang=en",
        "http://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html"
        ]
    if let spiltView = splitViewController
        {
            let currentController = splitView.viewControllers
            detailViewController = currentController[0] as? internetDetailViewController
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        // Do any additional setup after loading the view.
    }
    
    override public func prepare(for seque:UIStoryboardSeque, sender: any?)
    {
        if segue.indentifier! == "showDetail"
        {
            if let indexPath = self.tabView.indexPathForSelectedRow
            {
                let urlString = adresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    pageText = "All the definitions you wrote..........."
                }
                else
                {
                    pageText = internetTopics[indextPath.row]
                }
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAdress = urlString
                controller.detailText = pageText
                cotrolller.navigationItem = splitViewController?.displayModeButtonItem
                controller.navigationItem = leftItemSupplementBackButton = true
            }
        }
    }
    

    override public func numberOfSecctions(in tableView: UITableView) -> Int
    {
        return 1
    }
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return inernetTopics.count
    }
    override public func tableView(_ tableView: UITableView, cellFor)
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
