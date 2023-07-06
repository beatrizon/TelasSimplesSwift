//
//  TelaVermelhaViewController.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaViewController: UIViewController {

    var onTelaVerde: (() -> Void)?
       var onTelaAzul: (() -> Void)?
    
    lazy var telaVermelhaView: TelaVermelhaView = {
            let telaVermelhaView = TelaVermelhaView()
        
        telaVermelhaView.onTelaVerde = {
                self.onTelaVerde?()
            }
            
            telaVermelhaView.onTelaAzul = {
                self.onTelaAzul?()
            }
            
            return telaVermelhaView
        }()
        
    override func loadView(){
        self.view = telaVermelhaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     self.title = "Tela vermelha"
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
   }

}

