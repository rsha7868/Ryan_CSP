//
//  AbrstractionView.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 10/26/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import UIKit

public class AbrstractionView: UIPageViewController, UIPageViewControllerDataSource
{
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
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
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier"\(abstractionLevel)ViewController")
    }

    public override func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
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
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < orderedAbstractionViews.count
        else
        {
            return orderedAbstractionViews.first
        }
        return orderedAbstractionViews[nextIndex]
        
    }
    
    public func presentationCount(for pageViewController: UIPageViewController) -> Int
    {
        return orderedAbstractionViews.count
    }
    
    public func  presentationIndex(for pageViewController: UIPageViewController) -> Int
    {
        guard let firstViewController = ViewControllers?.first, let firstViewContollerIndex = orderedAbstractionViews.index(of: firstViewController)
        else
        {
            return 0
        }
        return firstViewControllerIndex
    }

}
