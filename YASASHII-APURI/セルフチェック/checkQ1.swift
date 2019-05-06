//
//  checkQ1.swift
//  YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/05/05.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit

class checkQ1: UIViewController {
    
    
    var count:Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("firstのカウントは\(count)")

    }

    @IBAction func yesTapped(_ sender: Any) {
        
        go()
    }
    
    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
  
    @IBAction func noBtn(_ sender: Any) {
        
        no()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "go" {
            
            
            let next = segue.destination as? checkQ2
            
            self.count += 1
            
            next!.countQ2 = self.count
            
        }
            
        else if segue.identifier == "no" {
            
            
            let next = segue.destination as? checkQ2
            
            self.count += 0
            
            next!.countQ2 = self.count
            
        }
        
        
    }
    
    
    func go() {
        
        performSegue(withIdentifier: "go", sender: nil)
    }
    
    func no() {
        
        performSegue(withIdentifier: "no", sender: nil)
    }
    
    
}

