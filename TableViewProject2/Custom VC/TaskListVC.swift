//
//  ViewController.swift
//  TableViewProject2
//
//  Created by Atakan Gedik on 20.06.2022.
//

import UIKit

class TaskListVC: UIViewController {
    
    let cellID = "cellid"
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My List"
        view.backgroundColor = UIColor(red: 0.76, green: 0.86, blue: 0.85, alpha: 1.00)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TaskListCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = 60
        setupView()
    }
    
    func setupView(){
        view.addSubview(tableView)
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

extension TaskListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskListItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        guard let taskListCell = cell as? TaskListCell else {
            return cell
        }
        
        taskListCell.selectionStyle = .none
        taskListCell.backView.backgroundColor = taskListItems[indexPath.row].color
        taskListCell.mainLabel.text = taskListItems[indexPath.row].categoryName.rawValue
        taskListCell.detailLabel.text = taskListItems[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let subItems = taskListItems[indexPath.row].items
        let vcTitle = taskListItems[indexPath.row].title
        let TaskListDetailVC = TaskListDetailVC()
        TaskListDetailVC.SubItem = subItems
        TaskListDetailVC.vcTitle = vcTitle
        navigationController?.pushViewController(TaskListDetailVC, animated: true)
        
    }
}
