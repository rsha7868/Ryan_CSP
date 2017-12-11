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
    
    private var detailViewController : InternetDetailViewController?
    
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
            let currentController = spiltView.viewControllers
            detailViewController = currentController[0] as? InternetDetailViewController
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        // Do any additional setup after loading the view.
    }
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String

                if indexPath.row == 0
                {
                    pageText = "All the definitions you wrote..........."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                let controller = segue.destination as! InternetDetailViewController

                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemSupplementBackButton = true
            }
        }
    }
    

    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentTextLabel = internetTopics[indexPath.row]
        cell.textLabel!.text = currentTextLabel
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
