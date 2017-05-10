//
//  Student.swift
//  ManagementStudent
//
//  Created by xuandieu on 5/7/17.
//  Copyright © 2017 xuandieu. All rights reserved.
//

import Foundation

class Student {
    var name: String
    var university: String
    var oldYear: Int
    var description: String
    
    init(name: String, university: String, oldYear: Int, description: String) {
        self.name = name
        self.university = university
        self.oldYear = oldYear
        self.description = description
    }
}
