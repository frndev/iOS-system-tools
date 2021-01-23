//
//  FontsVC.swift
//  SystemSounds-iOS
//
//  Created by Francisco Navarro on 23/01/2021.
//

import UIKit
import ModuleServices

final class FontsVC: ModulesViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var timer: Timer?
    
    override func setupStyle() {
        super.setupStyle()
        title = Strings.fontsTitle
    }

    override func createModules() {
        super.createModules()
        loadFontsModule()
    }
    
    func loadFontsModule() {
        let module = FontsModule(tableView: tableView!)
        appendModule(module)
    }
    
    @IBAction func editingChanged(_ textField: UITextField) {
        let module: FontsModule? = firstModule()
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: false, block: { _ in
            module?.updateText(textField.text)
        })
    }
}

extension FontsVC: UITextFieldDelegate {
 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
