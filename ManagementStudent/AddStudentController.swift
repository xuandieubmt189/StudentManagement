//
//  AddStudentController.swift
//  ManagementStudent
//
//  Created by xuandieu on 5/7/17.
//  Copyright © 2017 xuandieu. All rights reserved.
//

import UIKit

class AddNewStudentController: UITableViewController {
    @IBOutlet weak var descripTextField: UITextView!
    @IBOutlet weak var oldYearTextField: UITextField!
    @IBOutlet weak var nameSchoolTextFiled: UITextField!
    @IBOutlet weak var nameStudentTextField: UITextField!
    
    var studentList: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btn_Add_Click(_ sender: UIButton) {
        let student: Student = Student(name: nameSchoolTextFiled.text!, university: nameSchoolTextFiled.text!, oldYear: Int(oldYearTextField.text!)!, description: descripTextField.text)
        
        studentList.append(student)
        
        _ = navigationController?.popViewController(animated: true)
    }
}
