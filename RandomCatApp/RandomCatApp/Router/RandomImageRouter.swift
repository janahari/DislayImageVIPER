// RandomImageRouter.swift
import UIKit

protocol RandomImageRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
}

class RandomImageRouter: RandomImageRouterProtocol {
    static func createModule() -> UIViewController {
        let view = RandomImageView()
        
        let presenter = RandomImagePresenter()
        let interactor = RandomImageInteractor()
        let router: RandomImageRouterProtocol = RandomImageRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter

        return view
    }
}

