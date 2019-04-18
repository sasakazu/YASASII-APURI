//
//  notToDoTable.swift
//  YASASHII-APURI
//
//  Created by 笹倉一也 on 2019/04/18.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import RealmSwift

class notToDoTable: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    var noToDoListItem: Results<NoToDoList>!
    

    @IBOutlet weak var notToDoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        
        noToDoListItem = realm.objects(NoToDoList.self)
        
        
        notToDoTable.allowsMultipleSelection = true


    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        notToDoTable.reloadData()

    }

    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        
        return noToDoListItem.count
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath)->UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexpath)
        
        let object = noToDoListItem[indexpath.row]
        
        cell.textLabel?.text = object.item
        
        return cell
        
        
    }
    
    
    
    // セルが選択された時に呼び出される
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at:indexPath)
        
        cell?.accessoryType = .checkmark
    }
    
    // セルの選択が外れた時に呼び出される
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at:indexPath)
        
        cell?.accessoryType = .none
    }
    
    //    delete機能
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        
        if(editingStyle == UITableViewCell.EditingStyle.delete) {
            do{
                let realm = try Realm()
                try realm.write {
                    realm.delete(self.noToDoListItem[indexPath.row])
                }
                tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.fade)
            }catch{
                
                
                self.notToDoTable.reloadData()
            }
        }
    }
    

}
