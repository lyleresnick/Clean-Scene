//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___Adapter: NSObject {
    
    var presenter: ___VARIABLE_moduleName___Presenter!
    let cellConfigurator: ___VARIABLE_moduleName___CellConfigurator
    
    init(cellConfigurator: ___VARIABLE_moduleName___CellConfigurator = ___VARIABLE_moduleName___CellConfigurator() ) {
        self.cellConfigurator = cellConfigurator
    }
}

extension ___VARIABLE_moduleName___Adapter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return cellConfigurator
            .set( tableView: tableView, indexPath: indexPath )
            .show( viewModel: presenter.row( at: indexPath.row ))
    }
}

extension ___VARIABLE_moduleName___Adapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.eventItemSelected(row: indexPath.row)
    }
}
