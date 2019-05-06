//
//  checkQ2.swift
//  YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/05/05.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit

class checkQ2: UIViewController {
    
//    Q1から受け取る
    var countQ2:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       print("Q2のカウントは\(countQ2)")
        
        
    }
    
    @IBAction func yes(_ sender: Any) {
        go()
    }
    
    @IBAction func no(_ sender: Any) {
        no()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "go" {
            
            
            let next = segue.destination as? checkQ3
            
            self.countQ2 += 1
            
            next!.countQ3 = self.countQ2
            
        }
            
        else if segue.identifier == "no" {
            
            
            let next = segue.destination as? checkQ3
            
            self.countQ2 += 0
            
            next!.countQ3 = self.countQ2
            
        }
        
        
    }
    
    
    func go() {
        
        performSegue(withIdentifier: "go", sender: nil)
    }
    
    func no() {
        
        performSegue(withIdentifier: "no", sender: nil)
    }
    

}
