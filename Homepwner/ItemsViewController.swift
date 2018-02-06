//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Nathan on 2/5/18.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    

    var itemStore: ItemStore!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return itemStore.splitItems.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.splitItems[section].count + 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "More than $50"
        } else if section == 1 {
            return "Less than $50"
        } else {
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        //let item = itemStore.allItems[indexPath.row]
        
        if indexPath.row < itemStore.splitItems[indexPath.section].count {
            let item = itemStore.splitItems[indexPath.section][indexPath.row]
            
            cell.textLabel?.text = item.name
            cell.detailTextLabel?.text = "$\(item.valueInDollars)"
            
        } else {
            cell.textLabel?.text = "No more items"
            cell.detailTextLabel?.text = ""
        }
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row < itemStore.splitItems[indexPath.section].count {
            return 60
        }
        return tableView.rowHeight
    }
    
    override func tab
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    
    
    
    
    
    
    
    
    
}
