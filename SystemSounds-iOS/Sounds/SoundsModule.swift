//
//  SoundsModule.swift
//  SystemSounds-iOS
//
//  Created by Francisco Navarro on 23/01/2021.
//

import UIKit
import ModuleGenericServices
import AVFoundation

struct SoundsModuleDecorator: RowsDecoratorProtocol {
    
    static var soundsDecorator: [SoundsCellDecorator] {
        SoundsLibrary.sounds.map {
            SoundsCellDecorator(soundId: SystemSoundID($0.1), leftText: $0.0, rightText: "\($0.1)")
        }.sorted { $0.soundId < $1.soundId }
    }
    
    var rows: [Any] = soundsDecorator
}

final class SoundsModule: SingleNibCellRowsModule<SoundsCell, SoundsModuleDecorator> {
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        guard let decorator = rows[indexPath.row] as? SoundsCellDecorator else { return }
        AudioServicesPlaySystemSound(decorator.soundId)
    }
}
