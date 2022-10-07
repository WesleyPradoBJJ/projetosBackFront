//
//  ViewController.swift
//  navigationView
//
//  Created by Wesley Prado on 05/10/2022.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goScreen02Tapped(_ sender: Any) {
       //exibindo modal de maneira programática
        let vc: screen02VC? = UIStoryboard(name: "screen02VC", bundle: nil).instantiateViewController(withIdentifier: "screen02VC") as? screen02VC
        //o present exibe a modal
        present (vc ?? UIViewController(), animated: true)
        
        //Exibindo NAVIGATION de maneiro programática
        //let vc = UIStoryboard(name: "screen02VC", bundle: nil).instantiateViewController(withIdentifier: "screen02VC") as? screen02VC
        //Present exibe a tela do controller
        //navigationController?.pushViewController(vc ?? UIViewController(), animanted: true
    }
   
    @IBAction func goScreen03Tapped(_ sender: Any) {
        let vc: screen03VC? = UIStoryboard(name: "screen03VC", bundle: nil).instantiateViewController(withIdentifier: "screen03VC") as? screen03VC
        present (vc ?? UIViewController(), animated: true)
    }
    
}

