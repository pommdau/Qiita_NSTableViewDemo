//
//  CustomTableCellView.swift
//  Qiita_NSTableViewDemo
//
//  Created by HIROKI IKEUCHI on 2020/07/09.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

class CustomTableCellView: NSTableCellView {

    @IBOutlet weak var cellImageView: NSImageView!
    @IBOutlet weak var titleLabel: NSTextField!
    @IBOutlet weak var descriptionLabel: NSTextField!
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

    }
    
    func configure(for cellData: CustomCellData) {
        self.cellImageView.image          = cellData.image
        self.titleLabel.stringValue       = cellData.title
        self.descriptionLabel.stringValue = cellData.descriptionText
    }
}
