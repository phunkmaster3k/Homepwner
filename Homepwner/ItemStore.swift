//
//  ItemStore.swift
//  Homepwner
//
//  Created by Nathan on 2/5/18.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    var splitItems = [[Item](), [Item]()]
    
    init() {
        for _ in 0..<8 {
            createItem()
        }
    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        //adding here as to not break original functionality too much
        if newItem.valueInDollars > 50 {
            splitItems[0].append(newItem)
        } else {
            splitItems[1].append(newItem)
            
        }
    
        return newItem
    }
    
    
    
}
