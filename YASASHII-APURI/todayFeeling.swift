//
//  todayFeeling.swift
//  Pods-YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/04/21.
//

import UIKit

class todayFeeling: UIViewController {
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var feelingImage: UIImageView!
    @IBOutlet weak var good: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func goodBtn(_ sender: Any) {
        
        let image = UIImage(named: "good")
        
        feelingImage.image = image
    }
    
    @IBAction func sosoBtn(_ sender: Any) {
        let image = UIImage(named: "soso")
        
        feelingImage.image = image
    }
    
    
    @IBAction func badBtn(_ sender: Any) {
        let image = UIImage(named: "bad")
        
        feelingImage.image = image
    }
    
    
}
