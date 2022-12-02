//
//  ViewController.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 01/12/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logoAppImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var drawNumberButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    var listPerson: [Person] = []
    var listImage: [String] = ["Image-1", "Image-2", "Image-3", "Image-4", "Image-5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configTextAndColors()
    }

    
    func configTextAndColors(){
        nameTextField.placeholder = "Digite um nome!"
        nameTextField.delegate = self
        tableView.backgroundColor = .black
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
       
        tableView.separatorStyle = .none
        tableView.register(EmptyTableViewCell.nib(), forCellReuseIdentifier: EmptyTableViewCell.identifier)
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
    }
    
    @IBAction func tappedDrawNumberButton(_ sender: UIButton) {
        
    }
    
}

extension ViewController: UITableViewDelegate {
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if listPerson.count == 0{
            return 1
        } else {
            return listPerson.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if listPerson.count == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: EmptyTableViewCell.identifier) as? EmptyTableViewCell
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(data: listPerson[indexPath.row])
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if listPerson.count == 0 {
            return 243
        } else {
            return 87
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        listPerson.append(Person(name: textField.text ?? "", image: listImage.randomElement() ?? ""))
        tableView.reloadData()
        return true
    }
}
