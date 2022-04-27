//
//  DevTableViewCellScreen.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import UIKit

class DevTableViewCellScreen: UIView {
    
    lazy var devContainerImageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowOpacity = 0.6
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 2
        return view
    }()

    lazy var devImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 30
        return image
    }()
    
    lazy var devLabelName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .darkGray
        return label
    }()
    
    lazy var devIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 5
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addElements()
        self.setUpConstaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setUpCell(data: DevViewModel) {
        self.devImage.image = UIImage(named: data.listImage ?? "")
        self.devLabelName.text = data.listTitle
        self.devIcon.image = UIImage(named: data.listIcon ?? "")
    }
    
    private func addElements() {
        self.addSubview(self.devContainerImageView)
        self.devContainerImageView.addSubview(self.devImage)
        self.addSubview(self.devLabelName)
        self.addSubview(self.devIcon)
    }
    
    private func setUpConstaints() {
        NSLayoutConstraint.activate([
            self.devContainerImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.devContainerImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.devContainerImageView.heightAnchor.constraint(equalToConstant: 60),
            self.devContainerImageView.widthAnchor.constraint(equalToConstant: 60),
         
            self.devImage.centerYAnchor.constraint(equalTo: self.devContainerImageView.centerYAnchor),
            self.devImage.centerXAnchor.constraint(equalTo: self.devContainerImageView.centerXAnchor),
            self.devImage.heightAnchor.constraint(equalToConstant: 60),
            self.devImage.widthAnchor.constraint(equalToConstant: 60),
            
            self.devLabelName.leadingAnchor.constraint(equalTo: self.devImage.trailingAnchor, constant: 15),
            self.devLabelName.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.devIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.devIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.devIcon.heightAnchor.constraint(equalToConstant: 30),
            self.devIcon.widthAnchor.constraint(equalToConstant: 30),
        ])
    }

}
