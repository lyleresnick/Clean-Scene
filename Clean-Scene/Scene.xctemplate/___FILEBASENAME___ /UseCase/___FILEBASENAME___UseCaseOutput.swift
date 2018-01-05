//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

protocol ___VARIABLE_moduleName___UseCaseOutput: class {
    
    func presentModelListBegin()
    func present(model: ___VARIABLE_moduleName___PresentationModel)
    func presentModelListEnd()

    func presentNetworkError(code:Int)
    func presentUnknownError(code:Int)

    func presentNotFound(message: String)
    func presentOtherSemanticResult()
}
