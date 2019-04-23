//
//  addNotToDo.swift
//  YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/04/17.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import RealmSwift

class addNotToDo: UIViewController {
    
    
    @IBOutlet weak var notTV: UITextView!
    @IBOutlet weak var notBtton: UIButton!
    @IBOutlet weak var addNotTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        notTV.clipsToBounds =  true
        notTV.layer.cornerRadius = 5.0
        
        notBtton.clipsToBounds = true
        notBtton.layer.cornerRadius = 5.0
        
    }
    
    
    @IBAction func notToDoBtn(_ sender: Any) {
        
        let notTodoItem = NoToDoList()
        
        notTodoItem.item = addNotTF.text!
        
        do{
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(notTodoItem)
                print("成功！！")
                
            })
        }catch{
            print("失敗！！！")
        }
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    

//    別の場所タップで閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        addNotTF.text = addNotTF.text
        self.view.endEditing(true)
    }
  

}
