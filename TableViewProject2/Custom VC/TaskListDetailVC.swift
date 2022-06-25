//
//  TaskListDetailVC.swift
//  TableViewProject2
//
//  Created by Atakan Gedik on 20.06.2022.
//

import UIKit

class TaskListDetailVC: UIViewController {
    
    var SubItem:[SubItem]?
    var vcTitle:String?
    let cellID = "detailedcellid"
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = vcTitle
        view.backgroundColor = UIColor(red: 0.76, green: 0.86, blue: 0.85, alpha: 1.00)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TaskListDetailCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = 110
        setupView()
    }
    
    func setupView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension TaskListDetailVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SubItem?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        guard let taskListDetailCell = cell as? TaskListDetailCell else {
            return cell
        }
        
        taskListDetailCell.selectionStyle = .none
        taskListDetailCell.label1.text = SubItem?[indexPath.row].text
        return cell
    }

}
