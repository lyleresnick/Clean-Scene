//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

class ___VARIABLE_moduleName___UseCase {
    
    weak var output: ___VARIABLE_moduleName___UseCaseOutput!
    
    private let entityGateway: EntityGateway
    
    init( entityGateway: EntityGateway ) {
        
        self.entityGateway = entityGateway
    }

    func eventViewReady(parameter: String, transformer: ___VARIABLE_moduleName___UseCaseTransformer! = nil) {

        var transformer: ___VARIABLE_moduleName___UseCaseTransformer! = transformer
        if transformer == nil {
            transformer = ___VARIABLE_moduleName___UseCaseTransformer(modelManager: entityGateway.modelManager)
        }
        transformer.transform(parameter: parameter, output: output)
    }
}
