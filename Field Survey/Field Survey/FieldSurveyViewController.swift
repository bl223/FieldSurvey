//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Bryce Ligaya on 4/6/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var fieldSurveyTableView: UITableView!
    
    
    let fieldSurveys = SEJSONLoader.load(fileName: "field_survey")

    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurveys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FieldSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell{
            let fieldSurvey = fieldSurveys[indexPath.row]
            cell.FieldIconImageView.image = fieldSurvey.field.image
            cell.descriptionLabel.text = fieldSurvey.title
            cell.DateLabel.text = dateFormatter.string(from: fieldSurvey.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
            let row = fieldSurveyTableView.indexPathForSelectedRow?.row {
            destination.fieldSurvey = fieldSurveys[row]
        
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
