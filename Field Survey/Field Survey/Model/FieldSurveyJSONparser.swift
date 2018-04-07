//
//  FieldSurveyJSONparser.swift
//  Field Survey
//
//  Created by Bryce Ligaya on 4/6/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import Foundation

class FieldSurveyJSONparser{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey]{
    var fieldSurvey = [FieldSurvey]()
        
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"{
            if let observations = root["observations"] as? [Any]{
                for obs in observations{
                    if let obs = obs as? [String: String]{
                        if let className = obs["classification"],
                            let title = obs["title"],
                            let descriptionString = obs["description"],
                            let dateString = obs["date"],
                            let date = dateFormatter.date(from: dateString){
                            
                            if let fieldSurveys = FieldSurvey(fieldName: className, title: title, description: descriptionString, date: date){
                            fieldSurvey.append(fieldSurveys)
                                }
                        }
            }
        }
    }
}
        return fieldSurvey
        }

}

