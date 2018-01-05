//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

class ___VARIABLE_moduleName___UseCaseTransformer {
    
    private let modelManager: ___VARIABLE_moduleName___Manager

    init(modelManager:  ___VARIABLE_moduleName___Manager) {
        self.modelManager = modelManager
    }

    func transform( parameter: String, output: ___VARIABLE_moduleName___UseCaseOutput  )  {
        
        modelManager.all(parameter: parameter) { [weak output] result in

            guard let output = output else { return }

            switch result {
            case let .semanticError(reason):
                
                switch(reason) {
                case .notFound:
                    output.presentNotFound(message: "Hello")

                case .otherSemanticResult:
                    output.presentOtherSemanticResult()
                }
                
            case let .failure(code):

                switch code {
                case 400...499:
                    output.presentNetworkError(code: code)
                default:
                    output.presentUnknownError(code: code)
                    break
                }

            case let .success(entityList):
                
                output.presentModelListBegin()
                for entity in entityList {
                    output.present(model: ___VARIABLE_moduleName___PresentationModel(entity: entity))
                }
                output.presentModelListEnd()
            }
        }
    }
}
