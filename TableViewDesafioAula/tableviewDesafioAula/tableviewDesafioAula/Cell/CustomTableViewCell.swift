//
//  CustomTableViewCell.swift
//  tableviewDesafioAula
//
//  Created by Wesley Prado on 28/10/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    
   static let identifier: String = "CustomTableViewCell"
    
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setupCell (data: Brand){
        brandLabel.text = data.brand
        userImageView.image = data.image
    }
    
}
