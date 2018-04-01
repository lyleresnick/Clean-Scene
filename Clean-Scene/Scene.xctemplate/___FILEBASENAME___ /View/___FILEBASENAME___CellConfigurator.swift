//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___CellConfigurator {
    
    private enum Cell: String  {
        case modelList
    }
    
    private(set) var tableView: UITableView!
    private(set) var indexPath: IndexPath!
    private(set) var presenter: ___VARIABLE_moduleName___Presenter!
    
    func set(tableView: UITableView, indexPath: IndexPath, presenter: ___VARIABLE_moduleName___Presenter) -> Self {
        self.tableView = tableView
        self.indexPath = indexPath
        self.presenter = presenter
        return self;
    }
    
    func show(viewModel: ___VARIABLE_moduleName___ViewModel) -> ___VARIABLE_moduleName___Cell {
        return tableCell().show(viewModel: viewModel)
    }
    
    func tableCell() -> ___VARIABLE_moduleName___Cell {
        
        let cell = tableView!.dequeueReusableCell(withIdentifier: Cell.modelList.rawValue, for: indexPath!) as! ___VARIABLE_moduleName___Cell
        cell.presenter = presenter
        cell.tableView = tableView

        return cell
    }
}

