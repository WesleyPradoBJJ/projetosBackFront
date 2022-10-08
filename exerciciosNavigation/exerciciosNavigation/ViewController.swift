//
//  ViewController.swift
//  exerciciosNavigation
//
//  Created by Wesley Prado on 07/10/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var goTela02Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func goTela02Button(_ sender: UIButton) {
        performSegue(withIdentifier: "Tela02VC", sender: nil)
    }
    
    
}


