//
//  EmployeeTableViewCell.swift
//  TableViewAvancada348
//
//  Created by Caio Fabrini on 27/10/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    
    
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    var viewModel: EmployeeTableViewCellViewModel = EmployeeTableViewCellViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    func setupCell(data: Employee){
        viewModel.setEmployee(employee: data)
        self.userImageView.image = data.imageUser
        self.nameLabel.text = viewModel.name
        self.professionLabel.text = viewModel.profession
        self.salaryLabel.text = viewModel.salary
        self.ageLabel.text = viewModel.age

        if data.isEnableHeart{
            self.heartButton.tintColor = .red
        }else{
            self.heartButton.tintColor = .blue
        }
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        
    }
}
