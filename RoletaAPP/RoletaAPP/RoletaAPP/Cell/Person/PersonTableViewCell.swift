//
//  PersonTableViewCell.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 02/12/2022.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cardsImageView: UIImageView!
    
    
    static let identifier: String = "PersonTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: PersonTableViewCell.identifier, bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .black
        nameLabel.textColor = .white
    }
    
    
    func setupCell(data: Person) {
        nameLabel.text = data.name
        personImageView.image = UIImage(named: data.image)
    }
    
    
}
