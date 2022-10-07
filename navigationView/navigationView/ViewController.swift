//
//  ViewController.swift
//  navigationView
//
//  Created by Wesley Prado on 05/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goScreen02: UIButton!
    @IBOutlet weak var goScreen03: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goScreen02Tapped(_ sender: Any) {
        performSegue(withIdentifier: "screen02VC", sender: nil)
    }
   
    @IBAction func goScreen03Tapped(_ sender: Any) {
        performSegue(withIdentifier: "screen03VC", sender: nil)
    }
    
}

