//
//  SEJSONLoader.swift
//  Field Survey
//
//  Created by Bryce Ligaya on 4/6/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import Foundation

class SEJSONLoader{
    
    class func load(fileName: String) -> [FieldSurvey]{
        var e = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            e = FieldSurveyJSONparser.parse(data)
        }
    return e
}
}
