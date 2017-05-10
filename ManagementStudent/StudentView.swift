//
//  StudentView.swift
//  ManagementStudent
//
//  Created by xuandieu on 5/7/17.
//  Copyright © 2017 xuandieu. All rights reserved.
//

import UIKit

class StudentViewCell: UITableViewCell {
    
    @IBOutlet weak var nameStudentLabel: UILabel!
    @IBOutlet weak var nameUniversityLabel: UILabel!
    
    func configureStudentViewCell(student: Student) {
        self.nameStudentLabel.text = student.name
        self.nameUniversityLabel.text = student.university
    }

}
