//
//  HKBiologicalSex+StringRepresentation.swift
//  iHealth
//
//  Created by Filipp Krupnov on 13/4/21.
//

import HealthKit

extension HKBiologicalSex {
  
  var stringRepresentation: String {
    switch self {
    case .notSet: return "Unknown"
    case .female: return "Female"
    case .male: return "Male"
    case .other: return "Other"
    }
  }
}
