//
//  DevDetailViewController.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import UIKit

class DevDetailViewController: UIViewController {
    
    var screen: DetailDevViewControllerScreen?
    
    var devModel = DevViewModel()
    
    override func loadView() {
        self.screen = DetailDevViewControllerScreen()
        self.screen?.configProtocols(delegate: self)
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpView()
    }
    
    public func setUpView() {
        self.screen?.devImage.image = UIImage(named: devModel.listImage ?? "")
        self.screen?.devLabelName.text = devModel.listTitle
        self.screen?.descriptionLabelText.text = devModel.listDescription
    }
}

extension DevDetailViewController: DetailDevViewControllerScreenDelegate {
    
    func tappedBackButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
