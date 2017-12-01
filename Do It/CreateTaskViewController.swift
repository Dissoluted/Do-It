//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Sophie Amin on 2017-11-26.
//  Copyright © 2017 Sophie Amin. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create a Task from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add new task in previous view controller
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
    navigationController!.popViewController(animated: true)
    }

    



}
