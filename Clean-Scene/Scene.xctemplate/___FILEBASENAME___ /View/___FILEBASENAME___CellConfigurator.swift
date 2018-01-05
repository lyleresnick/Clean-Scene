//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___CellConfigurator {
    
    private enum Cell: String  {
        case modelList
    }
    
    var tableView: UITableView!
    var indexPath: IndexPath!
    
    func set(tableView: UITableView, indexPath: IndexPath) -> Self {
        self.tableView = tableView
        self.indexPath = indexPath
        return self;
    }
    
    func show(viewModel: ___VARIABLE_moduleName___ViewModel) -> ___VARIABLE_moduleName___Cell {
        return tableCell().show(viewModel: viewModel)
    }
    
    func tableCell() -> ___VARIABLE_moduleName___Cell {
        return tableView!.dequeueReusableCell(withIdentifier: Cell.modelList.rawValue, for: indexPath!) as! ___VARIABLE_moduleName___Cell
    }
}

