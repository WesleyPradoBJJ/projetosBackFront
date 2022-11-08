//
//  NameTableViewCell.swift
//  TableViewAvancada
//
//  Created by Wesley Prado on 08/11/2022.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

    }
    
    func setupCell(name:String){
        nameLabel.text = name
    }
    
}
