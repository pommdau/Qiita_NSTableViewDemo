//
//  CustomTableViewController.swift
//  Qiita_NSTableViewDemo
//
//  Created by HIROKI IKEUCHI on 2020/07/09.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class CustomTableViewController: NSViewController {
        
    @IBOutlet weak var tableView: NSTableView!
    
    private var cellDataList = [CustomCellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        cellDataList.append(CustomCellData(image: NSImage(imageLiteralResourceName: "number_1"),
                                           title: "Title01",
                                           descriptionText: "number one!"))
        cellDataList.append(CustomCellData(image: NSImage(imageLiteralResourceName: "number_2"),
                                           title: "Title02",
                                           descriptionText: "number two!"))
        cellDataList.append(CustomCellData(image: NSImage(imageLiteralResourceName: "number_3"),
                                           title: "Title03",
                                           descriptionText: "number three!"))
        
        // 別のXibファイルから読み込む場合は登録が必要
        tableView.register(NSNib(nibNamed: Konst.NibName.customTableCellView, bundle: nil),
                           forIdentifier: NSUserInterfaceItemIdentifier(rawValue: Konst.CellIdentifier.customTableCellView))
        tableView.reloadData()
    }
}

// MARK: - NSTableViewDelegate, NSTableViewDataSource Methods
extension CustomTableViewController: NSTableViewDelegate, NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return cellDataList.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        guard let cellView = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: Konst.CellIdentifier.customTableCellView), owner: self)
            as? CustomTableCellView else {
            return NSTableCellView()
        }
        
        cellView.configure(for: cellDataList[row])
        
        return cellView
    }
    
    
    
}

