//
//  ViewController.swift
//  Qiita_NSTableViewDemo
//
//  Created by HIROKI IKEUCHI on 2020/07/09.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // for degug
//        showStandartTableView(NSButton())
//        showCustomTableView(NSButton())
    }

    override var representedObject: Any? {
        didSet {

        }
    }
    
    
    // MARK: - Actions
    
    @IBAction func showStandartTableView(_ sender: NSButton) {
        performSegue(withIdentifier: Konst.SegueIdentifier.showStandardTableViewController, sender: nil)
    }
    
    
    @IBAction func showCustomTableView(_ sender: NSButton) {
        performSegue(withIdentifier: Konst.SegueIdentifier.showCustomTableViewController, sender: nil)
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == Konst.SegueIdentifier.showStandardTableViewController {
            // Segue時に何か処理があれば
//            self.view.window?.windowController?.close()  // ウィンドウを完全に遷移する場合
        }
    }
}
