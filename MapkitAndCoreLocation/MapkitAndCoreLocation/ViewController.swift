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
//        SDlocation()
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
            drawLineBetweenTwoAnnotations()
        }
//        else
//        {
//
//        }
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
    func drawLineBetweenTwoAnnotations() {
        let sourceC = CLLocationCoordinate2D(latitude: 26.838025, longitude: 80.925857)
        let destC = CLLocationCoordinate2D(latitude: 26.842323, longitude: 80.933856)

        let sourcePlacemark = MKPlacemark(coordinate: sourceC)
        let destPlacemark = MKPlacemark(coordinate: destC)

        let requestForDirection = MKDirections.Request()
        requestForDirection.source =  MKMapItem(placemark: sourcePlacemark)
        requestForDirection.destination = MKMapItem(placemark: destPlacemark)
        requestForDirection.transportType = .automobile

        let directions = MKDirections(request: requestForDirection)
        directions.calculate { ( response, error) in
            guard let directionResponse = response else {
                if let error = error {
                    print("We have an issue in response. (\(error.localizedDescription))")
                }
                 return
            }
//            print(directionResponse.routes)
            let route = directionResponse.routes[0]
            self.mapView.addOverlay(route.polyline, level: .aboveRoads)
        }
    }

    
}

extension ViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager : CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager, didChangeAuthorization status : CLAuthorizationStatus) {
        
    }
}
