//
//  ComingSoonViewController.swift
//  SimplyCS
//
//  Created by Jeremiah Leary on 7/10/21.
//

import Foundation
import UIKit

class ComingSoonViewController: UIViewController {
    var comingSoonText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        comingSoonText = UILabel()
        comingSoonText.text = """
            Coming
            Soon!
        """
        comingSoonText.font = UIFont.boldSystemFont(ofSize: 32)
        comingSoonText.numberOfLines = 0
        comingSoonText.adjustsFontSizeToFitWidth = true
        setUpComingSoonView()
    }
    func setUpComingSoonView(){
            view.addSubview(comingSoonText)
            comingSoonText.translatesAutoresizingMaskIntoConstraints = false
            comingSoonText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            comingSoonText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            comingSoonText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            comingSoonText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        }
}
