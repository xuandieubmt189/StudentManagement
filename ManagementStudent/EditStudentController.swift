//
//  EditStudentController.swift
//  ManagementStudent
//
//  Created by xuandieu on 5/7/17.
//  Copyright © 2017 xuandieu. All rights reserved.
//

import UIKit

class EditStudentController: UITableViewController {

    @IBOutlet weak var descripTextField: UITextView!
    @IBOutlet weak var oldYearTextField: UITextField!
    @IBOutlet weak var nameSchoolTextFiled: UITextField!
    @IBOutlet weak var nameStudentTextField: UITextField!
    
    var student: Student?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureStudent()
    }
    
    func configureStudent() {
        self.nameStudentTextField.text = student?.name
        self.nameSchoolTextFiled.text = student?.university
        self.descripTextField.text = student?.description
        if let x = student?.oldYear {
            self.oldYearTextField.text = "\(x)"
        }
    }
    
    @IBAction func btn_Save_Click(_ sender: UIButton) {
        student?.name = nameStudentTextField.text!
        student?.university = nameSchoolTextFiled.text!
        student?.oldYear = Int(oldYearTextField.text!)!
        student?.description = descripTextField.text!
        
        _ = navigationController?.popViewController(animated: true)
        
    }
}
