//
//  TextInputForm.swift
//  FormCreation
//
//  Created by Omeir Ahmed on 14/05/2022.
//

import UIKit

class TextInputForm {
    
    let viewModel: TextInputFormViewModel
    
    init(viewModel: TextInputFormViewModel) {
        self.viewModel = viewModel
    }
    
}

extension TextInputForm: FormField {
    var height: CGFloat {
        get {
            return 44
        }
    }
    
    func register(for tableView: UITableView) {
        tableView.register(UINib(nibName: "TextInputCell", bundle: Bundle.main), forCellReuseIdentifier: "TextInputCell")
    }
    
    func dequeueCell(for tableView: UITableView, with indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextInputCell", for: indexPath) as! TextInputCell
        cell.configure(viewModel)
        return cell
    }
}
