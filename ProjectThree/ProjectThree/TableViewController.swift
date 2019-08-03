//
//  TableViewController.swift
//  ProjectThree
//
//  Created by Pavel Procenko on 03/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var testArray = [Model]()
    
    @IBOutlet weak var table: UITableView!
    let identifire = "MyCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = Model(name: "Gena", lastName: "Dubovik")
        testArray.append(item)
        
        table.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        table.delegate = self
        table.dataSource = self
 
       
    
    
   
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath) as? myTableViewCell {
            
            let item = testArray[indexPath.row]
            cell.refresh(item)
        
        return cell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
}
