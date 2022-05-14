//
//  ToggleViewCell.swift
//  FormCreation
//
//  Created by Omeir Ahmed on 14/05/2022.
//

import UIKit

class ToggleViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ viewModel: ToggleInputFormViewModel) {
        self.titleLabel.text = viewModel.title
    }
    
}
