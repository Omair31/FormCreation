//
//  TextInputCell.swift
//  FormCreation
//
//  Created by Omeir Ahmed on 14/05/2022.
//

import UIKit

class TextInputCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ viewModel: TextInputFormViewModel) {
        self.titleLabel.text = viewModel.title
        self.subtitleLabel.text = viewModel.subtitle
    }
    
}
