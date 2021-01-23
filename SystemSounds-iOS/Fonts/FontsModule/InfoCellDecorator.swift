//
//  InfoCellDecorator.swift
//  DisplayingTweets
//
//  Created by Francisco Navarro on 21/01/2021.
//  Copyright © 2021 Fran Navarro. All rights reserved.
//

import UIKit

private enum InfoCellDecoratorConstants {
    static let textSample = "Input some text"
    static let fontSize: CGFloat = 24
    static let fontSizeName: CGFloat = 14

}

final class InfoCellDecorator: NSObject {
    var fontName: String
    var text: String?
    
    init(fontName: String, text: String? = InfoCellDecoratorConstants.textSample) {
        self.fontName = fontName
        self.text = text
    }
    
    var attributedText: NSAttributedString {
        [attrText, breakline, breakline, font].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
    
    private var attrText: NSAttributedString {
        .init(string: text ?? "", attributes: [
                .font: UIFont(name: fontName, size: InfoCellDecoratorConstants.fontSize)!,
                .foregroundColor: UIColor.label])
    }
    
    private var breakline: NSAttributedString {
        .init(string: "\n")
    }
    
    private var font: NSAttributedString {
        .init(string: fontName, attributes: [
                .font: UIFont(name: fontName, size: InfoCellDecoratorConstants.fontSizeName)!,
                .foregroundColor: UIColor.secondaryLabel])
    }
}
