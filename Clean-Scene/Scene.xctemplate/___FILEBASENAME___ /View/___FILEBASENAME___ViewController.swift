//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController {
    
    fileprivate var adapter = ___VARIABLE_moduleName___Adapter()
    var presenter: ___VARIABLE_moduleName___Presenter!
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = adapter
            tableView.dataSource = adapter
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        ___VARIABLE_moduleName___Connector(viewController: self, adapter: adapter).configure()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.eventViewReady()
    }
}

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___PresenterOutput {

    func showModels() {
        tableView.reloadData()
    }
    
    func showNotFound(message: String) {

    }

    func showOtherSemanticResult() {

    }

    func showNetworkError() {

    }
    
    func showUnknownError() {
        
    }
}





