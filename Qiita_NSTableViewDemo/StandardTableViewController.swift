//
//  StandardTableViewController.swift
//  Qiita_NSTableViewDemo
//
//  Created by HIROKI IKEUCHI on 2020/07/09.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class StandardTableViewController: NSViewController {

    var messages = ["sample message 1",
                    "sample message 2",
                    "sample message 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension StandardTableViewController : NSTableViewDelegate, NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        guard let cellView = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "MyView"), owner: self) as? NSTableCellView else {
            return NSTableCellView()
        }
        
        cellView.textField?.stringValue = messages[row]
//        cellView.imageView?.image = imageItems[row].image
        
        return cellView
    }
    
}
