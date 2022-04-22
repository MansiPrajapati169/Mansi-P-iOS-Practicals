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
    
    static let mapData = MapDataModel(cityNames: ["Ahmedabad","Vadodara","Surat"],
                                      locations: [CLLocationCoordinate2D(latitude: 23.02446213260744, longitude: 72.569708091261),
                                                  CLLocationCoordinate2D(latitude: 22.30947175804538, longitude: 73.179899499692),
                                                  CLLocationCoordinate2D(latitude: 21.17077770371674, longitude: 72.83135937728582)])
}
