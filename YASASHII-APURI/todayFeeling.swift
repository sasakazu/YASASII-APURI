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
    @IBOutlet weak var soso: UIButton!
    @IBOutlet weak var bad: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        角丸
        good.layer.cornerRadius = 50.0
        soso.layer.cornerRadius = 50.0
        bad.layer.cornerRadius = 50.0


    }
    

    @IBAction func goodBtn(_ sender: Any) {
        
        let image = UIImage(named: "good")
        
        feelingImage.image = image
        
    
        let alert: UIAlertController = UIAlertController(title: "Good!", message: "今日も一日一歩ずついきましょう！", preferredStyle:  UIAlertController.Style.alert)
        
   
        let defaultAction: UIAlertAction = UIAlertAction(title: "はい", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            
        })
   
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func sosoBtn(_ sender: Any) {
        let image = UIImage(named: "soso")
        
        feelingImage.image = image
        
        let alert: UIAlertController = UIAlertController(title: "So so ...", message: "ボチボチいきましょう。", preferredStyle:  UIAlertController.Style.alert)
        
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "はい", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            
        })
        
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    @IBAction func badBtn(_ sender: Any) {
        let image = UIImage(named: "bad")
        
        feelingImage.image = image
        
        
        let alert: UIAlertController = UIAlertController(title: "Bad", message: "無理しないでね", preferredStyle:  UIAlertController.Style.alert)
        
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "はい", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            
        })
        
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
}
