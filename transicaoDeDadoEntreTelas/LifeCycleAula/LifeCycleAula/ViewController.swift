//
//  ViewController.swift
//  LifeCycleAula
//
//  Created by Wesley Prado on 12/10/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    
    @IBAction func Screen02VCButton(_ sender: UIButton) {
        let vc = UIStoryboard (name: "Screen02VC", bundle:
        nil).instantiateViewController (withIdentifier: "Screen02VC") as? Screen02VC
        
        
        
        vc?.name = "\(nameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        // O pushViewController exibe a tela controladadora.
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
}

 
