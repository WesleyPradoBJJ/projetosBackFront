//
//  HistoryVC.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 03/01/2023.
//

import UIKit

class HistoryVC: UIViewController {

    let viewModel: HistoryViewModel = HistoryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchHistory()
        
    }

}
