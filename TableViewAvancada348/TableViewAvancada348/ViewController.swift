//
//  ViewController.swift
//  TableViewAvancada348
//
//  Created by Caio Fabrini on 27/10/22.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }
    
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell
            cell?.setupCell(data: viewModel.loadCurrentUser())
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
            cell?.setupCell(data: viewModel.loadCurrentEmployee(indexPath: indexPath))
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath: indexPath)
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
}

