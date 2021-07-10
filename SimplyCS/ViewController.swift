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
        titleText.font = UIFont.boldSystemFont(ofSize: 32)
        titleText.text = "SimplyCS"
        titleText.textColor = .systemBlue
        view.addSubview(titleText)
        titleImage = UIImage(named: "kidscs")
        imageView = UIImageView(image:titleImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        descriptionText = UILabel()
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.adjustsFontSizeToFitWidth = false
        descriptionText.font = UIFont.systemFont(ofSize: 12)
        descriptionText.text = """
            Discover new passions in computer science
            earlier than ever with our easy to navigate
            and use learning tools for beginner to advanced
            data structures and algorithms. With technology
            becoming accessible to younger generations more
            easily, it only makes sense we learn how to create
            such technologies earlier too!
        """
        descriptionText.textColor = .systemBlue
        descriptionText.textAlignment = .center
        descriptionText.numberOfLines = 0
        view.addSubview(descriptionText)
        NSLayoutConstraint.activate([
            titleText.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant:50),
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo:view.centerYAnchor),
            imageView.topAnchor.constraint(equalTo:titleText.bottomAnchor),
            descriptionText.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            descriptionText.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor),
            descriptionText.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
            
            
            
            
            
            
            // more constraints to be added here!
        ])
    }

}

