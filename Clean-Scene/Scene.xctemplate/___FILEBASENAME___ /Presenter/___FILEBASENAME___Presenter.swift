//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

class ___VARIABLE_moduleName___Presenter {
    
    private let useCase: ___VARIABLE_moduleName___UseCase
    weak var router: ___VARIABLE_moduleName___Router!
    weak var output: ___VARIABLE_moduleName___PresenterOutput!

    private var viewModelList: [___VARIABLE_moduleName___ViewModel] = []
    
    init(useCase: ___VARIABLE_moduleName___UseCase) {
        self.useCase = useCase
    }
    
    func eventViewReady(parameter: String ) {
        useCase.eventViewReady(parameter: parameter )
    }
    
    func eventItemSelected( row: Int ) {

        router.routeReason(index: row)
    }
    
    func row(at index: Int ) -> ___VARIABLE_moduleName___ViewModel {
        return viewModelList[index]
    }
    
    var rowCount: Int {
        return viewModelList.count
    }
}

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___UseCaseOutput {

    func presentModelListBegin() {
        viewModelList = []
    }

    func present(model: ___VARIABLE_moduleName___PresentationModel) {
        viewModelList.append( ___VARIABLE_moduleName___ViewModel( model: model ) )
    }

    func presentModelListEnd() {
        output.showModels()
    }

    
    func presentNotFound(message: String) {
        output.showNotFound(message: message)
    }
    
    func presentOtherSemanticResult() {
        output.showOtherSemanticResult()
    }

    
    func presentNetworkError(code:Int) {
        output.showNetworkError()
    }
    
    func presentUnknownError(code:Int) {
        output.showUnknownError()
    }
}
