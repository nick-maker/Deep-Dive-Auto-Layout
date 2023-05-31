//
//  ViewController.swift
//  Deep Dive Auto Layout
//
//  Created by Nick Liu on 2023/5/31.
//

import UIKit

class ViewController: UIViewController {

    
    let yellowView = UIView()
    let purpleView = UIView()
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialUI()
    }
    
    override func viewDidLayoutSubviews() {
        refactUI()
    }
    

    func initialUI() {
        [yellowView, purpleView, redView].forEach {view.addSubview($0)}
        [yellowView, purpleView, redView].forEach { $0.translatesAutoresizingMaskIntoConstraints = false}
        
        NSLayoutConstraint.activate([
            
            yellowView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yellowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            yellowView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            yellowView.heightAnchor.constraint(equalTo: yellowView.widthAnchor, constant: 0),
            
            redView.centerYAnchor.constraint(equalTo: yellowView.centerYAnchor),
            redView.widthAnchor.constraint(equalTo: yellowView.widthAnchor, multiplier: 0.5),
            redView.heightAnchor.constraint(equalTo: redView.widthAnchor, constant:0),
            redView.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor),
            
            purpleView.centerYAnchor.constraint(equalTo: yellowView.centerYAnchor),
            purpleView.widthAnchor.constraint(equalTo: yellowView.widthAnchor, multiplier: 0.5),
            purpleView.heightAnchor.constraint(equalTo: redView.widthAnchor, constant:0),
            purpleView.trailingAnchor.constraint(equalTo: yellowView.trailingAnchor)
            
        ])
    }
    
    func refactUI() {
        yellowView.backgroundColor = UIColor.systemYellow
        redView.backgroundColor = UIColor.systemRed
        purpleView.backgroundColor = UIColor.purple
        
        [yellowView, redView, purpleView].forEach {$0.layer.cornerRadius = $0.frame.width * 1/2 }
        
    }
    
    

}

