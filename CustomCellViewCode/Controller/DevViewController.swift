//
//  DevViewController.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import UIKit

class DevViewController: UIViewController {
    
    var screen: DevViewControllerScreen?
    
    override func loadView() {
        self.screen = DevViewControllerScreen()
        self.screen?.configTableViewProtocols(delegate: self, dataSourve: self)
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }

}

extension DevViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let row = indexPath.row
        
        DevData.remove(at: row)
        tableView.reloadData()
    }
    
}

extension DevViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DevData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DevTableViewCell.identifier, for: indexPath) as? DevTableViewCell
        cell?.setUpCell(data: DevData[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DevDetailViewController()
        guard let row = tableView.indexPathForSelectedRow?.row else { return }
        let view = DevData[row]
        viewController.devModel = view
        present(viewController, animated: true, completion: nil)
    }
    
}
