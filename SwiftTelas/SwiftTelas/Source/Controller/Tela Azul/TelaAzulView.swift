//
//  TelaAzulView.swift
//  SwiftTelas
//
//  Created by IFBIOTIC10 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
           
            super.init(frame: frame)
          
            self.backgroundColor = .blue
            setupVisualElements()
            
        }
    var onTelaVerde: (() -> Void)?
    
    
    
    var buttonTelaVerde = ButtonDefault(botao: "Tela Verde")
    
    func setupVisualElements() {
        self.addSubview(buttonTelaVerde)
        
        buttonTelaVerde.addTarget(self, action: #selector(telaVerde), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
       private func telaVerde(){
           onTelaVerde?()
       }
    
}
