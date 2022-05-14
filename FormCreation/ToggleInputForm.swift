//
//  ToggleInputForm.swift
//  FormCreation
//
//  Created by Omeir Ahmed on 14/05/2022.
//

import UIKit

class ToggleInputForm {
    
    let viewModel: ToggleInputFormViewModel
    
    init(viewModel: ToggleInputFormViewModel) {
        self.viewModel = viewModel
    }
    
}

extension ToggleInputForm: FormField {
    var height: CGFloat {
        get {
            return 44
        }
    }
    
    
    func register(for tableView: UITableView) {
        tableView.register(UINib(nibName: "ToggleViewCell", bundle: Bundle.main), forCellReuseIdentifier: "ToggleViewCell")
    }
    
    func dequeueCell(for tableView: UITableView, with indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToggleViewCell", for: indexPath) as! ToggleViewCell
        cell.configure(viewModel)
        return cell
    }
    
}
