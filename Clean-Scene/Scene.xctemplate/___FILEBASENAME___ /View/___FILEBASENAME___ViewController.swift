//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController {
    
    private var adapter: ___VARIABLE_moduleName___Adapter!
    var presenter: ___VARIABLE_moduleName___Presenter!
    @IBOutlet weak var tableView: UITableView!
    
    weak var router: ___VARIABLE_moduleName___Router! {
        set {
            presenter.router = newValue
        }
        get {
            return presenter.router
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        ___VARIABLE_moduleName___Connector(viewController: self).configure()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAdapter()

        presenter.eventViewReady(parameter: "Hello" )
    }
    
    private func configureAdapter() {
        
        adapter = ___VARIABLE_moduleName___Adapter(presenter: presenter)
        tableView.delegate = adapter
        tableView.dataSource = adapter
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





