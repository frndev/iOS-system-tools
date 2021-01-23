//
//  SoundsCell.swift
//  SystemSounds-iOS
//
//  Created by Francisco Navarro on 23/01/2021.
//

import UIKit
import ModuleGenericServices

class SoundsCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
}

// MARK: - ConfigurableCell
extension SoundsCell: ConfigurableCell {
    func configure(decorator: SoundsCellDecorator) {
        backgroundColor = .systemBackground
        leftLabel.attributedText = decorator.leftAttributed
        rightLabel.attributedText = decorator.rightAttributed
    }
}
