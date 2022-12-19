//
//  ViewController.swift
//  TableViewColletionView
//
//  Created by Caio Fabrini on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var viewModel: ViewControllerViewModel = ViewControllerViewModel()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentVehicle(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
    
}
