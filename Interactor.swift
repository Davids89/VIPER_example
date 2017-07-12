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

class Interactor: InteractorProtocol {

    var presenter: Presenter?
    let database: Database?
    
    init() {
        database = Database()
    }
    
    func addNewPersonWithData(name: String, lastname: String) {
        
        if(name.characters.count > 0 && lastname.characters.count > 0){
            let person: Person = Person()
            person.name = name
            person.lastName = lastname
            
            if (database?.people) != nil{
                database?.people?.append(person)
            }else {
                database?.people = [Person]()
                database?.people?.append(person)
            }
            
            self.updateList()
        }
    }
    
    //MARK: Private functions
    private func updateList(){
        var arrayPeople = [String]()
        for person in (database?.people)! {
            arrayPeople.append(person.name + " " + person.lastName)
        }
        
        presenter?.updateObjects(objects: arrayPeople)
    }
}
