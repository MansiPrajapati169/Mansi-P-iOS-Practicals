//
//  CollectionDataViewModel.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 07/03/22.
//

import Foundation

class CollectionDataViewModel {
    
    //MARK: - Variables
    var collectionName: String
    var collectionImage: String
    
    init(names: String,images: String) {
        collectionName = names
        collectionImage = images
    }
    
}
