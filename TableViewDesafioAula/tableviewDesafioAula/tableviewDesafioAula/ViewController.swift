//
//  ViewController.swift
//  tableviewDesafioAula
//
//  Created by Wesley Prado on 26/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [Brand] = [
    Brand(brand: "AUDI", image: UIImage(named: "audi") ?? UIImage()),
    Brand(brand: "BENTLEY", image: UIImage(named: "bentley") ?? UIImage()),
    Brand(brand: "JAGUAR", image: UIImage(named: "jaguar") ?? UIImage()),
    Brand(brand: "MUSTANG", image: UIImage(named: "mustang") ?? UIImage()),
    Brand(brand: "OPEL", image: UIImage(named: "opel") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        // Identificador
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

//MARK: TableView Protocols
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(data: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    // Seta o tamanho das imagens na row!
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    //Permite edições na row
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //método me permite remover um item da lista.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        data.remove(at: indexPath.row)
        tableView.reloadData() 
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(data[indexPath.row].brand)
    }
}
