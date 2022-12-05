//
//  ViewController.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 01/12/2022.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet weak var logoAppImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var drawNumberButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    var viewModel: HomeViewModel = HomeViewModel()
    
    
    //DICA: Remover todos os objetos da homevc pois devem permanecer private na viewmodel.
    var listPerson: [Person] = []
    var listImage: [String] = ["Image-1", "Image-2", "Image-3", "Image-4", "Image-5"]
    var person: Person?
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configTableView()
        configTextAndColors()
        blockedDrawButton()
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
    
    func blockedDrawButton() {
        if viewModel.IsListPersonEmpty{
            drawNumberButton.isEnabled = false
            drawNumberButton.alpha = 0.5
        } else {
            drawNumberButton.isEnabled = true
            drawNumberButton.alpha = 1
        }
    }
    
    @IBAction func tappedDrawNumberButton(_ sender: UIButton) {
        viewModel.drawNumber()
    }
    
}

extension HomeVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if viewModel.checkPersonPayer(indexPath: indexPath) {
            print("Parabéns você foi sorteado, pague a conta!")
            alert?.showAlert(title: "Muito bom!", message: "Agora é sua vez de pagar a conta!")
            viewModel.removeAll()
        } else {
            print("Uffa, você escapou!")
            viewModel.removePerson(indexPath: indexPath)
        }
        blockedDrawButton()
        tableView.reloadData()
    }
}


extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if viewModel.IsListPersonEmpty{
            let cell = tableView.dequeueReusableCell(withIdentifier: EmptyTableViewCell.identifier) as? EmptyTableViewCell
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(data: viewModel.loadCurrentPerson(indexPath: indexPath))
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension HomeVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if !(textField.text?.isEmpty ?? false) {
            listPerson.append(Person(name: textField.text ?? "", image: listImage.randomElement() ?? ""))
            tableView.reloadData()
            blockedDrawButton()
        }
        textField.text = ""
        return true
    }
}
