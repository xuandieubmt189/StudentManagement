//
//  StudentList.swift
//  ManagementStudent
//
//  Created by xuandieu on 5/7/17.
//  Copyright © 2017 xuandieu. All rights reserved.
//

import Foundation

class StudentList {
    
    init() {
    }
    
    public class func getStudentList() -> [Student] {
        var students = [Student]()
        
        students.append(Student(name: "Lương Xuân Diệu", university: "HCMUTE", oldYear: 22, description: "Học ngành CNTT"))
        students.append(Student(name: "Nguyễn Văn Nhàn", university: "HCMUTE", oldYear: 22, description: "Học ngành CNTT"))
        students.append(Student(name: "Bùi Tấn Hiển", university: "HCMUTE", oldYear: 22, description: "Học ngành CNTT"))
        students.append(Student(name: "Trần Thành Khoa", university: "HCMUTE", oldYear: 22, description: "Học ngành CNTT"))
        students.append(Student(name: "Đậu Khắc Bắc", university: "HCMUTE", oldYear: 22, description: "Học ngành CNTT"))
        students.append(Student(name: "Đỗ Minh Nhật", university: "HCMUTE", oldYear: 22, description: "Học ngành Xây dựng"))
        students.append(Student(name: "Huỳnh Thị Ngọc Hảo", university: "HCMUTE", oldYear: 22, description: "Học ngành Công nghệ HH & TT"))
        students.append(Student(name: "Nguyễn Dương Quyền", university: "HCMUTE", oldYear: 22, description: "Học ngành Cơ khí"))
        students.append(Student(name: "Nguyễn Hữu Phong", university: "HCMUTE", oldYear: 22, description: "Học ngành Cơ khí"))
        students.append(Student(name: "Phạm Tấn Phúc", university: "HCMUTE", oldYear: 22, description: "Học ngành Cơ điện tử"))
        students.append(Student(name: "Lê Hà Xuyên", university: "HCMUTE", oldYear: 22, description: "Học ngành Công nghệ may"))
        students.append(Student(name: "Mai Thanh Định", university: "HCMUTE", oldYear: 22, description: "Học ngành Điện điện tử"))
        
        
        return students
    }
}
