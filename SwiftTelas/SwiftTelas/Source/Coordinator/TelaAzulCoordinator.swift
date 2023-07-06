//
//  TelaAzulCoordinator.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit
class TelaAzulCoordinator: Coordinator {
    

    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
   
     let viewController = TelaAzulViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onTelaVerde = {
              self.goTelaVerde()
          }
    }
    
   
    func  goTelaVerde() {
        
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
