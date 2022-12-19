//
//  CarCollectionViewCell.swift
//  TableViewColletionView
//
//  Created by Caio Fabrini on 08/11/22.
//

import UIKit

class Car2CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "Car2CollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }
    
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
    

}
