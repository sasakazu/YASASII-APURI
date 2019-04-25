//
//  utuPageController.swift
//  YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/04/25.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit

class utuPageController: UIPageViewController {

 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        
        self.dataSource = self
        
    
        
    }
    
    func getFirst() -> utuFirstPage {
        return storyboard!.instantiateViewController(withIdentifier: "utuFirstPage") as! utuFirstPage
    }
    func getSecond() -> utuSecondPage {
        return storyboard!.instantiateViewController(withIdentifier: "utuSecondPage") as! utuSecondPage
    }
    func getThird() -> utuThirdPage {
        return storyboard!.instantiateViewController(withIdentifier: "utuThirdPage") as! utuThirdPage
    }
}

extension utuPageController : UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of: utuThirdPage.self) {
            // 3 -> 2
            return getSecond()
        } else if viewController.isKind(of: utuSecondPage.self) {
            // 2 -> 1
            return getFirst()
        }else{
            // 1 -> end of the road
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: utuFirstPage.self) {
            // 1 -> 2
            return getSecond()
        } else if viewController.isKind(of: utuSecondPage.self) {
            // 2 -> 3
            return getThird()
        }else{
            // 3 -> end of the road
            return nil
        }
    }

}
