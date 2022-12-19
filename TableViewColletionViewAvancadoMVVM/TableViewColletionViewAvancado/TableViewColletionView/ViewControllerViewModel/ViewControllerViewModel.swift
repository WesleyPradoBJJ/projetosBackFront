//
//  ViewControllerViewModel.swift
//  TableViewColletionView
//
//  Created by Wesley Prado on 20/12/2022.
//

import UIKit

class ViewControllerViewModel {

    private var vehicleList: [Vehicle] = [
                                 Vehicle(title: "Carro", list: ["car1","car2","car3","car4","car5","car6"]),
                                 Vehicle(title: "Motocicleta", list: ["car5","car6"]),
                                 Vehicle(title: "Avião", list: ["car1","car3"]),
                                 Vehicle(title: "Barco", list: ["car2","car4"]),
    ]
    
    var numberOfRowsInSection: Int{
        return vehicleList.count
    }
    
    func loadCurrentVehicle(indexPath: IndexPath) -> Vehicle {
        return vehicleList[indexPath.row]
    }
    
    var heightForRowAt: CGFloat {
       return 364
    }
    
}
