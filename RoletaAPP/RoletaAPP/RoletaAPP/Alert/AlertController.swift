//
//  AlertController.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 05/12/2022.
//

import UIKit

class AlertController {
    
    var controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction (title: "Ok", style: .default)
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }

}
