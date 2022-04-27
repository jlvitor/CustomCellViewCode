//
//  DetailDevViewControllerScreen.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import UIKit

protocol DetailDevViewControllerScreenDelegate: AnyObject {
    func tappedBackButton()
}

class DetailDevViewControllerScreen: UIView {
    
    private weak var delegate: DetailDevViewControllerScreenDelegate?
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.setBackgroundImage(UIImage(systemName: "arrow.backward.circle")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(self.closePressed), for: .touchUpInside)
        return button
    }()
    
    lazy var stackContainer: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 15
        return stack
    }()

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
        image.layer.cornerRadius = 45
        image.image = UIImage(named: "steve-jobs")
        return image
    }()
    
    lazy var devLabelName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textColor = .darkGray
        label.text = "Steve Jobs"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Descrição"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    lazy var descriptionLabelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .justified
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.text = "Apple Inc. é uma empresa multinacional norte-americana que tem o objetivo de projetar e comercializar produtos eletrônicos de consumo, software de computador e computadores pessoais."
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addElements()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func closePressed() {
        self.delegate?.tappedBackButton()
    }
    
    public func configProtocols(delegate: DetailDevViewControllerScreenDelegate) {
        self.delegate = delegate
    }
    
    public func setUpCell(data: DevViewModel) {
        self.devImage.image = UIImage(named: data.listImage ?? "")
        self.devLabelName.text = data.listTitle
        self.descriptionLabelText.text = data.listDescription
    }
    
    private func addElements() {
        self.addSubview(self.backButton)
        self.addSubview(self.devContainerImageView)
        self.addSubview(self.stackContainer)
        self.stackContainer.addArrangedSubview(self.devContainerImageView)
        self.stackContainer.addArrangedSubview(self.devLabelName)
        self.devContainerImageView.addSubview(self.devImage)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.descriptionLabelText)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.backButton.heightAnchor.constraint(equalToConstant: 30),
            self.backButton.widthAnchor.constraint(equalToConstant: 30),
            
            self.stackContainer.topAnchor.constraint(equalTo: self.backButton.bottomAnchor, constant: 30),
            self.stackContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.stackContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),

            self.devContainerImageView.heightAnchor.constraint(equalToConstant: 90),
            self.devContainerImageView.widthAnchor.constraint(equalToConstant: 90),
         
            self.devImage.centerYAnchor.constraint(equalTo: self.devContainerImageView.centerYAnchor),
            self.devImage.centerXAnchor.constraint(equalTo: self.devContainerImageView.centerXAnchor),
            self.devImage.heightAnchor.constraint(equalToConstant: 90),
            self.devImage.widthAnchor.constraint(equalToConstant: 90),
                        
            self.descriptionLabel.topAnchor.constraint(equalTo: self.stackContainer.bottomAnchor, constant: 30),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            self.descriptionLabelText.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 30),
            self.descriptionLabelText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.descriptionLabelText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.descriptionLabelText.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }

}
