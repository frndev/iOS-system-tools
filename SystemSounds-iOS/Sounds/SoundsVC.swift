//
//  SoundsVC.swift
//  SystemSounds-iOS
//
//  Created by Francisco Navarro on 23/01/2021.
//

import ModuleServices

final class SoundsVC: ModulesViewController {
    
    convenience init() {
        self.init(nibName: String(describing: ModulesViewController.self), bundle: nil)
    }
    
    override func setupStyle() {
        super.setupStyle()
        title = Strings.soundsTitle
    }
    
    override func createModules() {
        super.createModules()
        loadSoundModule()
    }
    
    func loadSoundModule() {
        let module = SoundsModule(tableView: tableView!)
        appendModule(module)
    }
}
