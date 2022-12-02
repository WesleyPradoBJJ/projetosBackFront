//
//  EmptyTableViewCell.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 01/12/2022.
//

import UIKit

class EmptyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    
    static let identifier: String = "EmptyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: EmptyTableViewCell.identifier, bundle: nil)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.text = "Insira os participantes para iniciar roleta russa!"
        titleLabel.textColor = .white
    }
    
}
