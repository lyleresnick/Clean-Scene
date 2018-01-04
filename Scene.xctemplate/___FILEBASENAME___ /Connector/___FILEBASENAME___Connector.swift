//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

class ___VARIABLE_moduleName___Connector {

    private let viewController: ___VARIABLE_moduleName___ViewController
    private let adapter: ___VARIABLE_moduleName___Adapter
    private let useCase: ___VARIABLE_moduleName___UseCase
    private let presenter: ___VARIABLE_moduleName___Presenter

    init(viewController: ___VARIABLE_moduleName___ViewController, adapter: ___VARIABLE_moduleName___Adapter, useCase: ___VARIABLE_moduleName___UseCase, presenter: ___VARIABLE_moduleName___Presenter) {

        self.viewController = viewController
        self.adapter = adapter
        self.useCase = useCase
        self.presenter = presenter
    }

    convenience init(viewController: ___VARIABLE_moduleName___ViewController, adapter: ___VARIABLE_moduleName___Adapter, entityGateway: EntityGateway = EntityGatewayFactory.entityGateway) {

        let useCase = ___VARIABLE_moduleName___UseCase(entityGateway: entityGateway)
        let presenter = ___VARIABLE_moduleName___Presenter(useCase: useCase)

        self.init(viewController: viewController, adapter: adapter, useCase: useCase, presenter: presenter)
    }

    func configure() {
        viewController.presenter = presenter
        adapter.presenter = presenter
        useCase.output = presenter
        presenter.output = viewController
    }
}
