//
//  SoundsCellDecorator.swift
//  SystemSounds-iOS
//
//  Created by Francisco Navarro on 23/01/2021.
//

import UIKit
import AVFoundation
class SoundsCellDecorator: NSObject {
    var leftAttributed: NSAttributedString {
        .init(string: leftText, attributes: [
                .font: UIFont.systemFont(ofSize: 16, weight: .medium),
                .foregroundColor: UIColor.label])
    }
    
    var rightAttributed: NSAttributedString {
        .init(string: rightText, attributes: [
                .font: UIFont.systemFont(ofSize: 18, weight: .medium),
                .foregroundColor: UIColor.label])
    }
    
    let soundId: SystemSoundID
    private let leftText: String
    private let rightText: String
    
    init(soundId: SystemSoundID, leftText: String, rightText: String) {
        self.soundId = soundId
        self.leftText = leftText
        self.rightText = rightText
    }
}
