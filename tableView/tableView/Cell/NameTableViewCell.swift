//
//  NameTableViewCell.swift
//  tableView
//
//  Created by Wesley Prado on 21/10/2022.
//

import UIKit

//Criar a célula
// Criar a identifier
// Add identifier na XIB
// Criando método da NIB
// Criar os elementos e fazer suas ligações
// Configurar Elementos
// Criar método de Setup (ETAPA IMPORTANTE!!!)



class NameTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    // Nome do identifier tem que ser igual ao nome do método.
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    // Ciclo de vida da célula -> Como se fosse viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // Método inútil
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func 
}
