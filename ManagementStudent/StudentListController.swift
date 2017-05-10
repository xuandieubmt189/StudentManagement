//
//  StudentListController.swift
//  ManagementStudent
//
//  Created by xuandieu on 5/7/17.
//  Copyright © 2017 xuandieu. All rights reserved.
//

import UIKit

class StudentListController: UITableViewController, UISearchResultsUpdating {
    
    var studentList: [Student] = {
       return StudentList.getStudentList()
    }()
    
    var filteredStudents = [Student]()
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.sizeToFit()
        self.tableView.tableHeaderView = searchController.searchBar
        definesPresentationContext = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredStudents.count
        }
        return studentList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Student Cell", for: indexPath) as! StudentViewCell
        let student: Student
        
        if searchController.isActive && searchController.searchBar.text != "" {
            student = filteredStudents[indexPath.row]
        } else {
            student = studentList[indexPath.row]
        }

        cell.configureStudentViewCell(student: student)

        return cell
    }
    
    func filterContentForSearchText(searchText: String) {
        filteredStudents = studentList.filter { student in
            return  student.name.lowercased().contains(searchText.lowercased())
        }
        
        tableView.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
    
    func foundInStudentList(student: Student) -> Int{
        for i in 0...studentList.count {
            if student.name == studentList[i].name && student.university == studentList[i].university {
                return i
            }
        }
        return -1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Detail Edit" {
            let indexPath = tableView.indexPathForSelectedRow
            var student: Student
            
            if searchController.isActive && searchController.searchBar.text != "" {
                student = filteredStudents[(indexPath?.row)!]
            } else {
                student = studentList[(indexPath?.row)!]
            }
            
            let editVC = segue.destination as! EditStudentController
            editVC.student = student
            editVC.navigationItem.leftItemsSupplementBackButton = true
        }
        
        if segue.identifier == "Show Add" {
            let addVC = segue.destination as! AddNewStudentController
            addVC.studentList = studentList
        }
    }
}
