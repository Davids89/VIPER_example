//
//  Routing.swift
//  VIPER
//
//  Created by signlab on 12/7/17.
//  Copyright © 2017 david. All rights reserved.
//

import UIKit

class Routing {
    
    let viewController: TableViewController = TableViewController()
    let presenter: Presenter = Presenter()
    let interactor: Interactor = Interactor()
    var navigationController: UINavigationController?
    
    init() {
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: viewController)
    }
}
