//
//  AbrstractionView.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 10/26/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import UIKit

public class AbrstractionView: UIViewController, UIPageViewControllerDataSource
{
    private (set) lazy var orderedAbstractionViews : [UIViewController]
    {
        return [
            self.newAbstractionView(abstractionLevel: "Block"),
            self.newAbstractionView(abstractionLevel: "Java"),
            self.newAbstractionView(abstractionLevel: "ByteCode"),
            self.newAbstractionView(abstractionLevel: "Binary"),
            self.newAbstractionView(abstractionLevel: "AndGate"),
        ]
    }()
    
    private func newAbstractionView(abstractionLevel : String) -> UIViewController
    {
        return UIStoryBoard(name: "Main", bundle: nil).instantiateViewController(withIentifier"\(abstractionLevel)ViewController")
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }

        // Do any additional setup after loading the view.
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController:UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
            
        }
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        return orderedAbstractionViews[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController: UI)
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
