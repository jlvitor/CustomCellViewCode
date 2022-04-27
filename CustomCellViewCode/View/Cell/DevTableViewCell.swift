//
//  DevTableViewCell.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import UIKit

class DevTableViewCell: UITableViewCell {

    static let identifier: String = "DevTableViewCell"
    
    var screen: DevTableViewCellScreen = DevTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.setUpView()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setUpCell(data: DevViewModel) {
        self.screen.setUpCell(data: data)
    }
    
    private func setUpView() {
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.screen.topAnchor.constraint(equalTo: self.topAnchor),
            self.screen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.screen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.screen.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
}
