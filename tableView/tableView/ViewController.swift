//
//  ViewController.swift
//  tableView
//
//  Created by Wesley Prado on 21/10/2022.
//

import UIKit

class ViewController: UIViewController {

    // Passo a passo
    // Criar a TableView no main.storyboard
    // Fazer a ligação IBoutlet no VC
    // Configurar a tableview ( chamar o método dentro do ViewDidLoad)
    // Criar célular (Arquivo XIB)
    // Configurar Celula
    //Registrar a célula
    // Configurar Exibição da célula
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["Caio", "Felipe", "Jean", "Lucas", "Andressa" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configtableView()
        // Do any additional setup after loading the view.
    }

    func configtableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDataSource{
    // Indicar a quantidade de linhas por sessão
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    //Popular a célula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(name: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    
}
