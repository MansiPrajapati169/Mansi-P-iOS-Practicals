//
//  CollectionDataViewModel.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 07/03/22.
//

import Foundation

class CollectionDataModel {
    
    //MARK: - Variables
    var collectionName: String
    var collectionImage: String
    
    init(names: String,images: String) {
        collectionName = names
        collectionImage = images
    }
    
    static let collectionData = [CollectionDataModel(names: "Googley",images: "google_logo"),
                                 CollectionDataModel(names: "Youtube",images: "youtube_logo"),
                                 CollectionDataModel(names: "Facebook",images: "facebook_logo"),
                                 CollectionDataModel(names: "Google",images: "google_logo"),
                                 CollectionDataModel(names: "Youtube",images: "youtube_logo"),
                                 CollectionDataModel(names: "Facebook",images: "facebook_logo")]
}
