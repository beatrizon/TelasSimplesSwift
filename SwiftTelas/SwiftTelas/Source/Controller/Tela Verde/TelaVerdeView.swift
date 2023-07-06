//
//  TelaVerdeView.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
           
            super.init(frame: frame)
          
            self.backgroundColor = .green
            setupVisualElements()
            
        }
    
    var onTelaVermelha: (() -> Void)?
    
    var onTelaAzul: (() -> Void)?
    
    var buttonTelaVermelha = ButtonDefault(botao: "Tela vermelha")
    
    var buttonTelaAzul = ButtonDefault(botao: "Tela azul")
    
    func setupVisualElements() {
        self.addSubview(buttonTelaVermelha)
        self.addSubview(buttonTelaAzul)
        
        buttonTelaVermelha.addTarget(self, action: #selector(telaVermelha), for: .touchUpInside)
        
        buttonTelaAzul.addTarget(self, action: #selector(telaAzul), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVermelha.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            buttonTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVermelha.bottomAnchor, constant: 25),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
       private func telaVermelha(){
           onTelaVermelha?()
       }
    
    @objc
       private func telaAzul(){
           onTelaAzul?()
       }
    
}
