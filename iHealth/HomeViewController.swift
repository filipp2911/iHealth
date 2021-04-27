//
//  HomeViewController.swift
//  iHealth
//
//  Created by Filipp Krupnov on 2/12/20.
//

import UIKit
import SceneKit
import HealthKit

let healthKitStore:HKHealthStore = HKHealthStore ()

class HomeViewController: UIViewController {
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblHeartRate: UILabel!
    
    func getCurrentDateTime() {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMMM dd, yyyy hh:mm a"
        let str = formatter.string(from: Date())
        date.text = str
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentDateTime()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   /* func dataTypesToRead() -> Set<> {
        var heightType: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .height)
        var weightType: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .bodyMass)
        var systolic: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .bloodPressureSystolic)
        var dystolic: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .bloodPressureDiastolic)
        var sleepAnalysis: HKCategoryType? = HKObjectType.categoryType(forIdentifier: .sleepAnalysis)
        var step: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .stepCount)
        var walking: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)
        var cycling: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .distanceCycling)
        var basalEnergyBurned: HKQuantityType? = HKObjectType.quantityType(forIdentifier: .basalEnergyBurned)
        
        return Any
    }*/
        
}
