//
//  FontsModule.swift
//  DisplayingTweets
//
//  Created by Francisco Navarro on 21/01/2021.
//  Copyright © 2021 Fran Navarro. All rights reserved.
//

import UIKit
import ModuleGenericServices

struct FontsModuleDecorator: RowsDecoratorProtocol {
    static let fontsDecorator: [InfoCellDecorator] = {
        return UIFont.familyNames.map {
            InfoCellDecorator(fontName: $0)
        }
    }()
    
    var rows: [Any] = fontsDecorator
}

final class FontsModule: SingleClassCellRowsModule<InfoCell, FontsModuleDecorator> {
    
    func updateText(_ text: String?) {
        rows = rows.compactMap { $0 as? InfoCellDecorator }.map {
            $0.text = text
            return $0
        }
        tableView.reloadRows(at: tableView.indexPathsForVisibleRows ?? [], with: .none)
    }
    
}
