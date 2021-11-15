//
//  ViewController.swift
//  MapkitAndCoreLocation
//
//  Created by Mohd Saif on 28/10/21.
//

import UIKit
import MapKit
import CoreLocation


class customPin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle:String, pinSubTitle:String, location:CLLocationCoordinate2D) {
        self.title = pinTitle
        self.subtitle = pinSubTitle
        self.coordinate = location
    }
}





class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SDlocation()
        checkLocationServices()
    }
    
    func setLocationManager()
    {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerviewUser()
    {
        if let location = locationManager.location?.coordinate
        {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 10000, longitudinalMeters: 10000)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func checkLocationServices()
    {
        if CLLocationManager.locationServicesEnabled()
        {
            setLocationManager()
            checkLocationAuthorization()
            CreateAnnotations(locations: annotations)
        }
        else
        {
            
        }
    }
    
    
    func checkLocationAuthorization()
    {
        switch  locationManager.authorizationStatus{
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            centerviewUser()
            break
        case .denied:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
        case .authorizedAlways:
            break
        @unknown default:
            fatalError()
        }
}
    
    
    let annotations = [
        ["title": "Annotation_1", "latitude": 26.838025, "longitude": 80.925857],
        ["title": "Annotation_2", "latitude": 26.836746, "longitude": 80.926905],
        ["title": "Annotation_3", "latitude": 26.835099, "longitude": 80.926758],
        ["title": "Annotation_4", "latitude": 26.838894, "longitude": 80.930635],
        ["title": "Annotation_5", "latitude": 26.842323, "longitude": 80.933856]
    ]
    
    
    
    
    
    
    
    
    func CreateAnnotations(locations: [[String : Any]]){
        
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees , longitude: location["longitude"] as! CLLocationDegrees)
            mapView.addAnnotation(annotations)
        }
        
    }
    
    func SDlocation(){
        
        
        let sourceLocation = CLLocationCoordinate2D(latitude:26.838025 , longitude: 80.925857)
        let destinationLocation = CLLocationCoordinate2D(latitude:26.842323 , longitude: 80.933856)
        
        let sourcePin = customPin(pinTitle: "One", pinSubTitle: "", location: sourceLocation)
        let destinationPin = customPin(pinTitle: "Five", pinSubTitle: "", location: destinationLocation)
        self.mapView.addAnnotation(sourcePin)
        self.mapView.addAnnotation(destinationPin)
        
        let sourcePlaceMark = MKPlacemark(coordinate: sourceLocation)
        let destinationPlaceMark = MKPlacemark(coordinate: destinationLocation)
        
        let directionRequest = MKDirections.Request()
        directionRequest.source = MKMapItem(placemark: sourcePlaceMark)
        directionRequest.destination = MKMapItem(placemark: destinationPlaceMark)
        directionRequest.transportType = .automobile
        
        let directions = MKDirections(request: directionRequest)
        directions.calculate { (response, error) in
            guard let directionResonse = response else {
                if let error = error {
                    print("we have error getting directions==\(error.localizedDescription)")
                }
                return
            }
            
            let route = directionResonse.routes[0]
            self.mapView.addOverlay(route.polyline, level: .aboveRoads)
            
            let rect = route.polyline.boundingMapRect
            self.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
        }
        
        self.mapView.delegate = self

    }
    
    
}

extension ViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager : CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager, didChangeAuthorization status : CLAuthorizationStatus) {
        
    }
}
