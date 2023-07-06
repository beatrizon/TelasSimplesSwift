//
//  TelaVerdeCoordinator.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit
class TelaVerdeCoordinator: Coordinator {
    
    
    var navigationController: UINavigationController
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = TelaVerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaVermelha = {
            self.goTelaVermelha()
        }
            viewController.onTelaAZul = {
                self.goTelaAzul()
            }
        }
        
        func  goTelaVermelha() {
            let coordinator = VermelhaCoordinator(navigationController: navigationController)
            coordinator.start()
        }              
        
        func  goTelaAzul() {
            let coordinator = TelaAzulCoordinator(navigationController: navigationController)
            coordinator.start()
        }
    }
    

