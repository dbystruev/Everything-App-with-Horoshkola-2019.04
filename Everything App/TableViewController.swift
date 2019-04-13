//
//  TableViewController.swift
//  Everything App
//
//  Created by Denis Bystruev on 13/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        models = [
            Model(
                title: "Барабан там-там «Черепаха»",
                detail: """
                    Иногда так хочется отвести душу и постучать в барабаны, а негде. Дома – нельзя, соседи, а место для репетиций есть не у каждого. Барабан там-там «Черепаха» легкий и удобный к переноске, что позволит вам стучать в любом месте и при любой погоде, ведь хорошему стукачу все по-барабану.

                    Материал: дерево, кожа
                    Высота: 15 см
                    Диаметр: 12 см
                """,
                image: UIImage(named: "baraban-tam-tam")
            )
        ]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.bounds.height / 8
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubtitleCellIdentifier")!
        let model = models[indexPath.row]
        
        configure(cell, with: model)
        
        return cell
    }
    
    func configure(_ cell: UITableViewCell, with model: Model) {
        cell.textLabel?.text = model.title
        cell.detailTextLabel?.text = model.detail
        cell.imageView?.image = model.image
    }
}
