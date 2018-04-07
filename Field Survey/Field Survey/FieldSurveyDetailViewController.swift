//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Bryce Ligaya on 4/6/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var FSiconimageView: UIImageView!
    
    @IBOutlet weak var labelType: UILabel!
    
    @IBOutlet weak var datelabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        FSiconimageView.image = fieldSurvey?.field.image
        labelType.text = fieldSurvey?.title
        
        if let date = fieldSurvey?.date {
            datelabel.text = dateFormatter.string(from: date)
        }
        else {
            datelabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
