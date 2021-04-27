//
//  MapViewController.swift
//  iHealth
//
//  Created by Filipp Krupnov on 2/12/20.
//

import UIKit
import MapKit
import CoreLocation
import Contacts

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var mapView: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func loadView() {
        
        // Create a map view
        mapView = MKMapView()
        mapView.delegate = self
        locationManager = CLLocationManager()
        locationManager.delegate = self
        view = mapView

        let segmentedControl
            = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor
            = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self,
                                   action: #selector(MapViewController.mapTypeChanged(_:)),
                                   for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint =
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        let margins = view.layoutMarginsGuide
        let leadingConstraint =
            segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint =
            segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
                
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        initLocalizationButton(segmentedControl)
        //places on map
        
        
        let coords = CLLocationCoordinate2DMake(42.87455463001191, 74.60002867301648)
        let address = [CNPostalAddressStreetKey: "Kyrgyz Republic Hospital", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312620987", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place = MKPlacemark(coordinate: coords, addressDictionary: address)
        
        mapView.addAnnotation(place)
        
        let coords1 = CLLocationCoordinate2DMake(42.87097120051947, 74.59687425767225)
        let address1 = [CNPostalAddressStreetKey: "National Hospital", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312621014", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place1 = MKPlacemark(coordinate: coords1, addressDictionary: address1)
        
        mapView.addAnnotation(place1)
        
        let coords2 = CLLocationCoordinate2DMake(42.88387061062341, 74.62970015396739)
        let address2 = [CNPostalAddressStreetKey: "Azmi Hospital(Asian Medical Institute)", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312932645", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place2 = MKPlacemark(coordinate: coords2, addressDictionary: address2)
        
        mapView.addAnnotation(place2)
        
        let coords3 = CLLocationCoordinate2DMake(42.88069311052076, 74.61137518733227)
        let address3 = [CNPostalAddressStreetKey: "3-Detskaya Bol'nitsa", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312544655", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place3 = MKPlacemark(coordinate: coords3, addressDictionary: address3)
        
        mapView.addAnnotation(place3)
        
        let coords4 = CLLocationCoordinate2DMake(42.882564230659106, 74.65082232786146)
        let address4 = [CNPostalAddressStreetKey: "Chuyskaya Oblastnaya Bol'nitsa", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312367150", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place4 = MKPlacemark(coordinate: coords4, addressDictionary: address4)
        
        mapView.addAnnotation(place4)
        
        let coords5 = CLLocationCoordinate2DMake(42.845908302572816, 74.61027524041877)
        let address5 = [CNPostalAddressStreetKey: "Bol'nitsa 6", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312570976", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place5 = MKPlacemark(coordinate: coords5, addressDictionary: address5)
        
        mapView.addAnnotation(place5)
        
        let coords6 = CLLocationCoordinate2DMake(42.853907734307114, 74.58386084603946)
        let address6 = [CNPostalAddressStreetKey: "Family medical center #2", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996312882184", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place6 = MKPlacemark(coordinate: coords6, addressDictionary: address6)
        
        mapView.addAnnotation(place6)
        
        
        let coords7 = CLLocationCoordinate2DMake(42.84164672066802, 74.56618542794244)
        let address7 = [CNPostalAddressStreetKey: "Jal Hospital", CNPostalAddressCityKey: "Bishkek",CNPostalAddressPostalCodeKey: "+996771969256", CNPostalAddressISOCountryCodeKey: "KG"]
        
        let place7 = MKPlacemark(coordinate: coords7, addressDictionary: address7)
        
        mapView.addAnnotation(place7)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    func initLocalizationButton(_ anyView: UIView!){
        let localizationButton = UIButton.init(type: .system)
        localizationButton.setTitle("Localization", for: .normal)
        localizationButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(localizationButton)
        
        //Constraints
        let topConstraint = localizationButton.topAnchor.constraint(equalTo:anyView
            .topAnchor, constant: 32 )
        let leadingConstraint = localizationButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let trailingConstraint = localizationButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        localizationButton.addTarget(self, action: #selector(MapViewController.showLocalization(sender:)), for: .touchUpInside)
    }
    
    @objc func showLocalization(sender: UIButton!){
        locationManager.requestWhenInUseAuthorization()
        mapView.userTrackingMode = .follow
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        //This is a method from MKMapViewDelegate, fires up when the user`s location changes
        let zoomedInCurrentLocation = MKCoordinateRegion(center: userLocation.coordinate, latitudinalMeters: 50, longitudinalMeters: 50)
        mapView.setRegion(zoomedInCurrentLocation, animated: true)
    }
}
