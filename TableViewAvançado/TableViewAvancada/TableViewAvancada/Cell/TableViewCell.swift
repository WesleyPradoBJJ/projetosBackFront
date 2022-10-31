//
//  TableViewCell.swift
//  TableViewAvancada
//
//  Created by Wesley Prado on 31/10/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(name:String){
        
    }
}
