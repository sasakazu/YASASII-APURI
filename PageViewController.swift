//
//  PageViewController.swift
//  
//
//  Created by 笹倉一也 on 2019/04/24.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        
       
        self.dataSource = self //追加
    }
    
    func getFirst() -> utu_syoujyou_1 {
        return storyboard!.instantiateViewController(withIdentifier: "utu-syoujyou-1") as! utu_syoujyou_1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


//以下追加
extension PageViewController : UIPageViewControllerDataSource {
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        return nil
}
    
}
