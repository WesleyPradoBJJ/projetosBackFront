//
//  CarTableViewCell.swift
//  TableViewColletionView
//
//  Created by Caio Fabrini on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    var viewModel: CarTableViewCellViewModel = CarTableViewCellViewModel()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = .zero
        collectionView.collectionViewLayout = layout
        collectionView.register(Car2CollectionViewCell.nib(), forCellWithReuseIdentifier: Car2CollectionViewCell.identifier)
    }

    func setupCell(data: Vehicle) {
       viewModel.setListNameImage(data: data.list)
        self.titleLabel.text = data.title
    }
    
    
    
}

extension CarTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    
}

extension CarTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItensInSection
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Car2CollectionViewCell.identifier, for: indexPath) as? Car2CollectionViewCell
        cell?.setupCell(nameImage: viewModel.loadCurrentNameImage(indexPath: indexPath))
        return cell ?? UICollectionViewCell()
    }
    
    
}
