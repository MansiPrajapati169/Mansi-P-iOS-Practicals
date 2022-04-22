//
//  dataModel.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 04/03/22.
//

import Foundation

class DataModel {
    
    //MARK: - Variables
    var sectionTitle: String
    var names: [String]
    var images: [String]
    
    init(sectionTitle: String, names: [String],images: [String]) {
        self.sectionTitle = sectionTitle
        self.names = names
        self.images = images
    }
    
    static func getSocialMediaDetails() -> [DataModel] {
            return [DataModel(sectionTitle: "Social Media", names: ["Google","Facebook","Twitter","Youtube"],
                    images:["google_logo","facebook_logo","twitter_logo","youtube_logo"]),
                    DataModel(sectionTitle: "Flags", names: ["Morocco","New Zealand","India","South Korea"],
                    images:["flag_morocco","flag_new_zealand","flag_india","flag_south_korea"])]
   }
}
