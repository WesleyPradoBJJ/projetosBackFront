//
//  CustomTableViewCell.swift
//  TableViewBackFrontPlus
//
//  Created by Wesley Prado on 04/11/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(title: String){
        cellLabel.text = title
    }
    
}

//TODO: Carregar imagem em awakweFromNib e testar! 
