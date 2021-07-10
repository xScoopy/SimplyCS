//
//  AlgorithmViewController.swift
//  SimplyCS
//
//  Created by Jeremiah Leary on 7/9/21.
//

import Foundation
import UIKit

class AlgorithmViewController: UIViewController {
    let tableView = UITableView()
    
    let Algos = [Algorithm(title: "Merge Sort", image: UIImage(named: "merge")!),
                    Algorithm(title: "Quick Sort", image: UIImage(named: "quick")!),
                    Algorithm(title: "Binary Search", image: UIImage(named: "binary")!),
                    Algorithm(title: "Tree Traversals", image: UIImage(named: "treetraverse")!),
                    Algorithm(title: "Breadth First Search", image: UIImage(named: "bfs")!),
                    Algorithm(title: "Depth First Search", image: UIImage(named: "dfs")!),
                    Algorithm(title: "Kruskal's", image: UIImage(named: "kruskal")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        tableView.register(AlgorithmCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        setUpTableView()
    }
    func setUpTableView(){
            view.addSubview(tableView)
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        }
}
extension AlgorithmViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Algos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AlgorithmCell
            cell.accessoryType = .disclosureIndicator
            cell.selectionStyle = .none
        cell.setBoxContents(box: Algos[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
