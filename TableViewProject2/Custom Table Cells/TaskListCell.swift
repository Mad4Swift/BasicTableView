//
//  TaskListCellTableViewCell.swift
//  TableViewProject2
//
//  Created by Atakan Gedik on 20.06.2022.
//

import UIKit

class TaskListCell: UITableViewCell {

    let backView = UIView()
    let imageIV = UIImageView()
    let mainLabel = UILabel()
    let detailLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        setupBackgroundView()
        setupImageView()
        setupMainLabel()
        setupDetailLabel()
    }
    
    func setupBackgroundView() {
        addSubview(backView)
        backView.backgroundColor = UIColor(red: 0.76, green: 0.86, blue: 0.85, alpha: 1.00)
        backView.clipsToBounds = true
        backView.layer.cornerRadius = 12
        backView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backView.centerYAnchor.constraint(equalTo: centerYAnchor),
            backView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 10),
            backView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -10),
            backView.heightAnchor.constraint(equalToConstant: 46)
        ])
    }
    
    func setupImageView(){
        backView.addSubview(imageIV)
        imageIV.backgroundColor = UIColor.clear
        imageIV.image = UIImage(systemName: "arrow.right")
        imageIV.tintColor = .black
        imageIV.contentMode = .scaleAspectFit
        imageIV.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageIV.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageIV.trailingAnchor.constraint(equalTo: backView.trailingAnchor,constant: -20),
            imageIV.widthAnchor.constraint(equalToConstant: 30),
            imageIV.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func setupMainLabel(){
        backView.addSubview(mainLabel)
        mainLabel.textColor = .blue
        mainLabel.text = "Main Label"
        mainLabel.font = UIFont.systemFont(ofSize: 12)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: backView.topAnchor,constant: 2.5),
            mainLabel.leadingAnchor.constraint(equalTo: backView.leadingAnchor,constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: imageIV.leadingAnchor,constant: -20),
            mainLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func setupDetailLabel(){
        backView.addSubview(detailLabel)
        detailLabel.textColor = .black
        detailLabel.text = "Detail Label"
        detailLabel.font = UIFont.boldSystemFont(ofSize: 14)
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor),
            detailLabel.leadingAnchor.constraint(equalTo: backView.leadingAnchor,constant: 20),
            detailLabel.trailingAnchor.constraint(equalTo: imageIV.leadingAnchor,constant: -20),
            detailLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
}
