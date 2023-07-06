//
//  TelaVermelhaView.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
           
            super.init(frame: frame)
          
            self.backgroundColor = .red
            setupVisualElements()
            
        }
    
    var onTelaVerde: (() -> Void)?
    
    var onTelaAzul: (() -> Void)?
    
    var buttonTelaVerde = ButtonDefault(botao: "Tela verde")
    
    var buttonTelaAzul = ButtonDefault(botao: "Tela azul")
    
    func setupVisualElements() {
        self.addSubview(buttonTelaVerde)
        self.addSubview(buttonTelaAzul)
        
        buttonTelaVerde.addTarget(self, action: #selector(telaVerde), for: .touchUpInside)
        
        buttonTelaAzul.addTarget(self, action: #selector(telaAzul), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVerde.bottomAnchor, constant: 25),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func telaVerde(){
       onTelaVerde?()
   }
    @objc
    private func telaAzul(){
           onTelaAzul?()
       }
    
}
