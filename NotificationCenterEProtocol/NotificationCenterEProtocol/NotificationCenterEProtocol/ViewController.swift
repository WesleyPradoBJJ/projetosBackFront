//
//  ViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Wesley Prado on 24/11/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configColorsAndText()
        configObserver()
    }
    
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac), name: .imac, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
    }
    
    @objc func updateImac(){
        logoImageView.image = UIImage(named: "imac_pro")
        nameLabel.text = "Imac das galáxias"
        view.backgroundColor = .cyan
    }
    
    @objc func updateMacbook(){
        logoImageView.image = UIImage(named: "macbook_pro")
        nameLabel.text = "Macbook Pro"
        view.backgroundColor = .red
            }
    
    func configColorsAndText(){
        view.backgroundColor = .black
        nameLabel.text = ""
    }
    
    
    

    @IBAction func tappedChooseButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: String(describing: SelectionViewController.self))
        vc?.modalPresentationStyle = .fullScreen
        vc?.delegate = self
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

extension ViewController: SelectionViewControllerProtocol {
    func tappedMacbook() {
        logoImageView.image = UIImage(named: "macbook_pro")
        nameLabel.text = "Macbook Pro"
        view.backgroundColor = .red
    }
    
    func tappedImac() {
        logoImageView.image = UIImage(named: "imac_pro")
        nameLabel.text = "Imac das galáxias"
        view.backgroundColor = .cyan
    }
}

