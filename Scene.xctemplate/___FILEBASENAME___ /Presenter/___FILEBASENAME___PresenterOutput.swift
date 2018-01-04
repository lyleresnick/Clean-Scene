//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

protocol ___VARIABLE_moduleName___PresenterOutput: class {
    
    func showModels()
    
    func showNotFound(message: String)
    func showOtherSemanticResult()
    
    func showNetworkError()
    func showUnknownError()
}
