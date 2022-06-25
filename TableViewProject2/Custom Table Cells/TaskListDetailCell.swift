//
//  TaskListDetailCell.swift
//  TableViewProject2
//
//  Created by Atakan Gedik on 20.06.2022.
//

import UIKit

class TaskListDetailCell: UITableViewCell {

    let backView1 = UIView()
    let label1 = UILabel()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        setupBackgroundView1()
        setupLabel1()
    }
    
    func setupBackgroundView1() {
        addSubview(backView1)
        backView1.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
        backView1.clipsToBounds = true
        backView1.layer.cornerRadius = 12
        backView1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backView1.centerYAnchor.constraint(equalTo: centerYAnchor),
            backView1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 20),
            backView1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -20),
            backView1.heightAnchor.constraint(equalToConstant: 104)
        ])
    }
    
    func setupLabel1(){
        backView1.addSubview(label1)
        label1.textColor = .black
        label1.text = "Label-1"
        label1.font = UIFont.systemFont(ofSize: 17)
        label1.contentMode = .center
        label1.textAlignment = .center
        label1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: backView1.topAnchor,constant: 5),
            label1.leadingAnchor.constraint(equalTo: backView1.leadingAnchor,constant: 10),
            label1.trailingAnchor.constraint(equalTo: backView1.trailingAnchor,constant: -10),
            label1.bottomAnchor.constraint(equalTo: backView1.bottomAnchor,constant: -5),
            label1.centerYAnchor.constraint(equalTo: backView1.centerYAnchor),
            label1.centerXAnchor.constraint(equalTo: backView1.centerXAnchor),
        ])
    }

}
