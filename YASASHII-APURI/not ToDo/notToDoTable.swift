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
    
    
    
    
    
    
    

}
