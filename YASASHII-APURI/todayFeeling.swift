//
//  todayFeeling.swift
//  Pods-YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/04/21.
//

import UIKit

class todayFeeling: UIViewController {
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var feelLabel: UILabel!
    @IBOutlet weak var feelTV: UITextView!
    
    @IBOutlet weak var good: UIButton!
    @IBOutlet weak var soso: UIButton!
    @IBOutlet weak var bad: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        角丸
        good.layer.cornerRadius = 50.0
        soso.layer.cornerRadius = 50.0
        bad.layer.cornerRadius = 50.0
        
//        今日の日付
        let now = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM月dd日"
        let string = formatter.string(from: now as Date)
        todayDate.text = string


    }
    

    @IBAction func goodBtn(_ sender: Any) {
        
        feelLabel.isHidden = false
        feelLabel.text = "☺️"
    
        feelTV.isHidden = false
        feelTV.text = "今日は、いい気分！お出かけもいいかも。"
        feelTV.textColor = #colorLiteral(red: 1, green: 0.4561018092, blue: 0.1495821985, alpha: 0.8435359589)

    
     }
    
    
    
    @IBAction func sosoBtn(_ sender: Any) {
        
        feelLabel.isHidden = false
        feelLabel.text = "😐"

        feelTV.isHidden = false
        feelTV.text = "今日はぼちぼちいきましょう。"
        feelTV.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
    }
    
    
    @IBAction func badBtn(_ sender: Any) {
        
        feelLabel.isHidden = false
        feelLabel.text = "😭"
        
        feelTV.isHidden = false
        feelTV.text = "今日は、ゆっくりいきましょう。"
        feelTV.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
    }
    
    
}
