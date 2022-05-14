//
//  ViewController.swift
//  FormCreation
//
//  Created by Omeir Ahmed on 14/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var fields: [FormField] = [] {
        didSet {
            fields.forEach { $0.register(for: tableView) }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        fields = [
            TextInputForm(viewModel: TextInputFormViewModel(title: "Title1", subtitle: "subtitle1")),
            TextInputForm(viewModel: TextInputFormViewModel(title: "Title2", subtitle: "subtitle2")),
            ToggleInputForm(viewModel: ToggleInputFormViewModel(title: "Is On?", isEnabled: true))
        ]
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fields.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let field = fields[indexPath.row]
        return field.dequeueCell(for: tableView, with: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return fields[indexPath.row].height
    }
}

