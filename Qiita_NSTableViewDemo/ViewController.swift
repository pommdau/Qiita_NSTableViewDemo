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

//        showStandartTableView(NSButton())
        showCustomTableView(NSButton())
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
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
//            self.view.window?.windowController?.close()
        }
    }
}
