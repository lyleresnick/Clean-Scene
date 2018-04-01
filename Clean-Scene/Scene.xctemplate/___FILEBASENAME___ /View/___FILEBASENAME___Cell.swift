//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___Cell: UITableViewCell {
    
    weak var tableView: UITableView!
    var presenter: ___VARIABLE_moduleName___Presenter!
    
    @IBOutlet private(set) weak var nameLabel: UILabel!
    @IBOutlet private(set) weak var ageLabel: UILabel!

    func show(viewModel: ___VARIABLE_moduleName___ViewModel) -> Self {
        
        nameLabel.text = viewModel.name
        ageLabel.text = viewModel.age

        return self
    }
}
