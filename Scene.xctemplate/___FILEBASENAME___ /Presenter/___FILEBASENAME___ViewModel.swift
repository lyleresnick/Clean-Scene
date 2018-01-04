//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

struct ___VARIABLE_moduleName___ViewModel {
    
    var name: String
    var age: String

    init( model: ___VARIABLE_moduleName___PresentationModel ) {
        name = model.name
        age = String(model.age)
    }
}
