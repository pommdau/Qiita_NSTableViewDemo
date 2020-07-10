//
//  CustomTableCellView.swift
//  Qiita_NSTableViewDemo
//
//  Created by HIROKI IKEUCHI on 2020/07/09.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import Cocoa

protocol CustomTableCellViewDelegate: class {
    func selectionButtonClicked(for cell: NSTableCellView)
}

class CustomTableCellView: NSTableCellView {

    @IBOutlet weak var cellImageView: NSImageView!
    @IBOutlet weak var titleLabel: NSTextField!
    @IBOutlet weak var descriptionLabel: NSTextField!
    @IBOutlet weak var selectionButton: NSButton!
    
    var delegate: CustomTableCellViewDelegate?
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

    }
    
    func configure(for cellData: CustomCellData) {
        self.cellImageView.image          = cellData.image
        self.titleLabel.stringValue       = cellData.title
        self.descriptionLabel.stringValue = cellData.descriptionText
    }
    
    
    // MARK: - Actions
    
    @IBAction func selectionButtonClicked(_ sender: NSButton) {
        // セルのボタンのアクションをコントローラに返すため、delegateを使用する
        delegate?.selectionButtonClicked(for: self)
    }
    
}
