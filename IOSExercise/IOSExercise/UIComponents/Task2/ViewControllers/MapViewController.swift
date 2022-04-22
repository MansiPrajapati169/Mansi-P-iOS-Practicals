//
//  MapViewController.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 04/03/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    //MARK: - Variables
    let annotations = MKPointAnnotation()
    let mapDataModel = MapDataModel.mapData
    
    //MARK: - Outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
    }
}

//MARK: - UIPickerViewDataSource
extension MapViewController : UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return Constants.intOne
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mapDataModel.cities.count
    }
}

//MARK: - UIPickerViewDelegate
extension MapViewController : UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mapDataModel.cities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        updateMap(row)
    }
}

//MARK: - Extra Functions
extension MapViewController {
    
    fileprivate func updateMap(_ cityIndex: Int) {
        mapView.removeAnnotation(annotations)
        annotations.title = mapDataModel.cities[cityIndex]
        annotations.coordinate = mapDataModel.location[cityIndex]
        mapView.addAnnotation(annotations)
        
        let region = MKCoordinateRegion(center: annotations.coordinate, latitudinalMeters: CLLocationDistance(Constants.threeThausand), longitudinalMeters: Constants.threeThausand)
        mapView.setCameraBoundary(
            MKMapView.CameraBoundary(coordinateRegion: region),animated: true)
        
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: Constants.twoThausand)
        mapView.setCameraZoomRange(zoomRange, animated: true)
        
        UIView.animate(withDuration: Constants.mapDuration) {
            self.mapView.setRegion(region, animated: true)
        }
    }
}
