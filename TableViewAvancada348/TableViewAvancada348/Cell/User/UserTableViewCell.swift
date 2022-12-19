//
//  UserTableViewCell.swift
//  TableViewAvancada348
//
//  Created by Caio Fabrini on 27/10/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    static let identifier: String = "UserTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(data: User) {
        userImageView.image = data.image
        nameLabel.text = data.name
    }
    
}
