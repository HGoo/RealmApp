//
//  Extension + UItableViewCell.swift
//  RealmApp
//
//  Created by Николай Петров on 24.03.2022.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TasksList, cell: UITableViewCell) {
        let currentTasks = taskList.tasks.filter("isComplet = false")
        let completedTasks = taskList.tasks.filter("isComplet = true")
      
        var content = cell.defaultContentConfiguration()
        
        content.text = taskList.name
        
        if !currentTasks.isEmpty {
            content.secondaryText = "\(completedTasks.count)/\(taskList.tasks.count)"
        } else if !completedTasks.isEmpty {
            content.secondaryText = "✅"
            content.imageProperties.tintColor = .green
        } else {
            content.secondaryText = "0"
        }
        
        cell.contentConfiguration = content
    }
}
