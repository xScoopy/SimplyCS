//
//  ViewController.swift
//  SimplyCS
//
//  Created by Jeremiah Leary on 7/9/21.
//

import UIKit

class HomePageViewController: UIViewController {
    
    var titleText: UILabel!
    var titleImage: UIImage!
    var descriptionText: UILabel!
    var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        titleText = UILabel()
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.adjustsFontSizeToFitWidth = true
        titleText.font = UIFont.systemFont(ofSize: 24)
        titleText.text = "SimplyCS"
        titleText.textColor = .blue
        view.addSubview(titleText)
        titleImage = UIImage(named: "kidscs")
        imageView = UIImageView(image:titleImage)
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            titleText.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant:50),
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            imageView.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant:-25),
//            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            imageView.centerYAnchor.constraint(equalTo:view.centerYAnchor)
            
            
            
            // more constraints to be added here!
        ])
    }

}

