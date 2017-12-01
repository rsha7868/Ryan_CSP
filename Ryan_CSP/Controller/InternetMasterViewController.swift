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
        "Swift Guide",
        ]
    }()
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
         addresses = [
        "http://www.google.com"
        "http://www.google.com"
        "http://www.google.com"
        "http://www.google.com"
        "http://www.google.com"
        "http://www.google.com"
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
        self.clearsSelectionOnViewWillApear = false
        // Do any additional setup after loading the view.
    }
    
    override public func prepare(for seque:UIStoryboardSeque, sender: any?)
    {
        if segue.indentifier! == "showDetail"
        {
            if let indexPath = self.tabView.indexPath
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
