//
//  CarTableViewCellViewModel.swift
//  TableViewColletionView
//
//  Created by Wesley Prado on 20/12/2022.
//

import UIKit

class CarTableViewCellViewModel {

   private var data: [String] = []
    
    func setListNameImage(data: [String]) {
        self.data = data
    }
    
    var numberOfItensInSection: Int{
        return data.count
    }
    
    func loadCurrentNameImage(indexPath: IndexPath) -> String {
        return data[indexPath.row]
    }
}
