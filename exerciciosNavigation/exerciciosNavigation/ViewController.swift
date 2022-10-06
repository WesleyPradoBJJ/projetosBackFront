//
//  ViewController.swift
//  exerciciosNavigation
//
//  Created by Wesley Prado on 07/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButton(_ sender: Any) {
        performSegue(withIdentifier:"goNextScreen", sender: "nextbutton" )
    }
    
}

