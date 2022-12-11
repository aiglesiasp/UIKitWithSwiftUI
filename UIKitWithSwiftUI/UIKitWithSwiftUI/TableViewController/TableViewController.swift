//
//  TableViewController.swift
//  UIKitWithSwiftUI
//
//  Created by Aitor Iglesias Pubill on 11/12/22.
//

import UIKit
import SwiftUI

class TableViewController: UITableViewController {
    
    let datos = [1,2,3,4,5,6,7,8,9,10]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //registrar celdas
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let item = datos [indexPath.row]
        // Configure the cell...
        cell.contentConfiguration = UIHostingConfiguration{
            CellRowView(numero: item)
        }

        return cell
    }
    

}
