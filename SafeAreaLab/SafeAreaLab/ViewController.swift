//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by Harshit Bhargava  on 05/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
    }
    func setUp() {
        let topLabel = makeLabel(withText: "top", colour: .yellow, tSize: 32)
        view.addSubview(topLabel)
        
        
        let bottomLabel = makeLabel(withText: "bottom", colour: .gray, tSize: 32)
        view.addSubview(bottomLabel)
        
        let leadingLAbel = makeLabel(withText: "leading", colour: .brown, tSize: 32)
        view.addSubview(leadingLAbel)
        
        let trailingLabel = makeLabel(withText: "trailing", colour: .cyan, tSize: 32)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            trailingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            leadingLAbel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            leadingLAbel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func makeLabel(withText text:String, colour bgColour:UIColor, tSize textSize: Int? = nil ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = bgColour
        if let size = textSize {
            label.font = UIFont.systemFont(ofSize: CGFloat(size))
        }
        return label
    }
}

