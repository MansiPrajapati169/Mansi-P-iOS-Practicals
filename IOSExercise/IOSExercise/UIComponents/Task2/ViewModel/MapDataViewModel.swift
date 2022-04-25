//
//  MapDataViewModel.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 04/03/22.
//

import Foundation
import CoreLocation

class MapDataModel {
    
    //MARK: - Variables
    var cities: [String]
    var location: [CLLocationCoordinate2D]
    
    init(cityNames: [String],locations: [CLLocationCoordinate2D]) {
        cities = cityNames
        location = locations
    }
    
}
