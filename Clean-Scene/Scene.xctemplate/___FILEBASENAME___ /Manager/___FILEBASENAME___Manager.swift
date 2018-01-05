//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

enum  ___VARIABLE_moduleName___ErrorReason {
    case notFound
    case otherSemanticResult
}

protocol ___VARIABLE_moduleName___Manager {
    
    func all(parameter: String, completion: (ManagerResponse<[___VARIABLE_moduleName___], ___VARIABLE_moduleName___ErrorReason>) -> ())
}
