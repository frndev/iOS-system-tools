//
//  InfoCell.swift
//  DisplayingTweets
//
//  Created by Francisco Navarro on 21/01/2021.
//  Copyright © 2021 Fran Navarro. All rights reserved.
//

import UIKit
import ModuleGenericServices

final class InfoCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
}

extension InfoCell: ConfigurableCell {
    public func configure(decorator: InfoCellDecorator) {
        label?.attributedText = decorator.attributedText
    }
}
