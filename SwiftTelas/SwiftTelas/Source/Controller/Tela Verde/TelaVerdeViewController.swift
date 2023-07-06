//
//  TelaVerdeViewController.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//


import Foundation
import UIKit

class TelaVerdeViewController: UIViewController {

    var onTelaVermelha: (() -> Void)?
    var onTelaAZul: (() -> Void)?
    
    lazy var telaVerdeView: TelaVerdeView = {
        let telaVerdeView = TelaVerdeView()
        
        telaVerdeView.onTelaVermelha = {
            self.onTelaVermelha?()
        }
        
        telaVerdeView.onTelaAzul = {
            self.onTelaAZul?()
        }
        
    
        return telaVerdeView
    
        }()
    

           override func loadView(){
               self.view = telaVerdeView
           }
           
           override func viewDidLoad() {
               super.viewDidLoad()
            self.title = "Tela verde"
               
               self.navigationController?.navigationBar.prefersLargeTitles=true
          }

    }
