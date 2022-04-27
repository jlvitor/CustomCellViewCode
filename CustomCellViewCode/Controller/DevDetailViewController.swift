//
//  DevDetailViewController.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import UIKit

class DevDetailViewController: UIViewController {
    
    var screen: DetailDevViewControllerScreen?
    
    override func loadView() {
        self.screen = DetailDevViewControllerScreen()
        self.screen?.configProtocols(delegate: self)
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
//    public func setUpCell(data: DevViewModel) {
//        self.screen?.setUpCell(data: data)
//    }

}

extension DevDetailViewController: DetailDevViewControllerScreenDelegate {
    
    func tappedBackButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
