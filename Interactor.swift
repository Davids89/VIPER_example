//
//  Interactor.swift
//  VIPER
//
//  Created by signlab on 12/7/17.
//  Copyright © 2017 david. All rights reserved.
//

protocol InteractorProtocol {
    func addNewPersonWithData(name: String, lastname: String)
}

class Interactor {
    
    var presenter: Presenter?
    
}
