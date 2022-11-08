//
//  Screen02VC.swift
//  LifeCycleAula
//
//  Created by Wesley Prado on 12/10/2022.
//

import UIKit

class Screen02VC: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        nameLabel.text = name
    }

}
