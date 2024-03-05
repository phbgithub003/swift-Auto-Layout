//
//  ViewController.swift
//  Auto-Layout
//
//  Created by Harshit Bhargava  on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
    }

    func setUp() {
        let upperLeftLabel = makeLabel(withText: "Upper Left", colour: .yellow)
        self.view.addSubview(upperLeftLabel)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        let upperRightLabel = makeLabel(withText: "Upper Right", colour: .blue)
        view.addSubview(upperRightLabel)
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        let bottomLeftLabel = makeLabel(withText: "Bottom Left", colour: .brown, tSize: 12)
        view.addSubview(bottomLeftLabel)
        bottomLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        
        let button = makeButton(withText: "Bottom Right")
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        
        let displayView = customView()
        view.addSubview(displayView)
        displayView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        displayView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        displayView.heightAnchor.constraint(equalToConstant: 150).isActive = true
//        displayView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        displayView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        displayView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        displayView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        displayView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true

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
    
    func makeButton(withText text:String)->UIButton {
        let button = UIButton()
        button.setTitle(text, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.backgroundColor = .red
        return button
    }
    @objc func buttonTapped(){
        print("hello harshit")
    }
    
    func customView() -> UIView {
        let display = UIView()
        display.backgroundColor = .red
        display.translatesAutoresizingMaskIntoConstraints = false
        return display
    }
}

