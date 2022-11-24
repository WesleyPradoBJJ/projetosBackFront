//
//  SelectionViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Wesley Prado on 25/11/2022.
//

import UIKit

protocol  SelectionViewControllerProtocol: AnyObject {
    func tappedMacbook()
    func tappedImac()
}




class SelectionViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var macbookButton: UIButton!
    @IBOutlet weak var imacButton: UIButton!
    
    
    weak var delegate: SelectionViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedMacbookButton(_ sender: UIButton) {
    //    NotificationCenter.default.post(name: .macbook, object: nil)
        delegate?.tappedMacbook()
        dismiss(animated: true)
    }
    
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
     //   NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.tappedImac()
        dismiss(animated: true)
    }
    
}
