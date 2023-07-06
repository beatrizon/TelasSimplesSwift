//
//  TelaAzulViewController.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulViewController: UIViewController {
    
    var onTelaVerde: (() -> Void)?
    
    lazy var telaVerde: TelaAzulView = {
        let telaVerde = TelaAzulView()
        telaVerde.onTelaVerde = {
            self.onTelaVerde?()
        }
        
        return telaVerde
    }()
    
       override func loadView(){
           self.view = telaVerde
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Azul"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
