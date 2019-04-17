//
//  addNotToDo.swift
//  YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/04/17.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit

class addNotToDo: UIViewController {
    
    
    @IBOutlet weak var notTV: UITextView!
    @IBOutlet weak var notBtton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        notTV.clipsToBounds =  true
        notTV.layer.cornerRadius = 5.0
        
        notBtton.clipsToBounds = true
        notBtton.layer.cornerRadius = 5.0
        
    }
    



}
