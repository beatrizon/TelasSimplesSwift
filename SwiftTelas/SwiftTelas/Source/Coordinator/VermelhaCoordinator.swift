//
//  VermelhaCoordinator.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit
class VermelhaCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = TelaVermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaVerde = {
            self.goTelaVerde()
        }
            viewController.onTelaAzul = {
                self.goTelaAzul()
            }
        }
        
        func  goTelaVerde() {
            let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
            coordinator.start()
        }
        
        func  goTelaAzul() {
            let coordinator = TelaAzulCoordinator(navigationController: navigationController)
            coordinator.start()
        }
    }
    

