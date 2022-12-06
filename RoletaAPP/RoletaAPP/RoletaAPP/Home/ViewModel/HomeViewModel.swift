//
//  HomeViewModel.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 05/12/2022.
//

import UIKit

class HomeViewModel{
    
    private var listPerson: [Person] = []
    private var listImage: [String] = ["Image-1", "Image-2", "Image-3", "Image-4", "Image-5"]
    private var person: Person?
    
    
    //Primeira abordagem -> Variável Computada
    var IsListPersonEmpty: Bool {
        return listPerson.isEmpty
    }
    
    //Segunda abordagem -> função com retorno
    
   // func isListPersonEmpty() -> Bool {
    //   return listPerson.isEmpty
    //}
    
    func drawNumber(){
        self.person = listPerson.randomElement()
    }
    
    func checkPersonPayer(indexPath: IndexPath) -> Bool {
       return self.listPerson[indexPath.row] === self.person
    }
    
    func removeAll(){
        listPerson.removeAll()
    }
    
    func removePerson(indexPath: IndexPath){
        listPerson.remove(at: indexPath.row)
    }
    
    var numberOfRowsInSection: Int {
        if IsListPersonEmpty{
            return 1
        } else {
            return listPerson.count
        }
    }
    func loadCurrentPerson(indexPath: IndexPath) -> Person{
        return listPerson[indexPath.row]
    }
    
    var heightForRowAt: CGFloat {
        if IsListPersonEmpty {
            return 243
        } else {
            return 87
        }
    }
    func addPerson(name: String){
        listPerson.append(Person(name: name, image: listImage.randomElement() ?? ""))
    }
    
    
}
