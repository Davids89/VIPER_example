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
    var objects: [String] = [String]()
    
    init() {
        viewController.presenter = presenter
        viewController.objects = objects
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: viewController)
    }
    
    func openAddView(){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let addViewController: ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        addViewController.presenter = presenter
        viewController.present(addViewController, animated: true, completion: nil)
    }
}
