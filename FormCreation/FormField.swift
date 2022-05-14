//
//  FormField.swift
//  FormCreation
//
//  Created by Omeir Ahmed on 14/05/2022.
//

import UIKit

protocol FormField {
    var height: CGFloat { get }
    func register(for tableView: UITableView)
    func dequeueCell(for tableView: UITableView, with indexPath: IndexPath) -> UITableViewCell
}
