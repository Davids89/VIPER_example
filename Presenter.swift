//
//  Presenter.swift
//  VIPER
//
//  Created by signlab on 12/7/17.
//  Copyright © 2017 david. All rights reserved.
//

import UIKit

protocol PresenterProtocol {
    func addNewObjects()
}

protocol InteractorResponse {
    func updateObjects(objects: [String])
}

class Presenter: PresenterProtocol{

    var view: TableViewController?
    var interactor: Interactor?
    var routing: Routing?
    
    //MARK: Protocol implementation
    func addNewObjects() {
        
    }
}

extension Presenter: InteractorResponse{
    func updateObjects(objects: [String]) {
        
    }
}
