//
//  Landmark.swift
//  Landmarks
//
//  Created by  송에 on 2023/07/20.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark : Hashable, Codable, Identifiable {
    var name: String
    var category: String
    var city: String
    var state: String
    var id : Int
    var isFeatured: Bool
    var isFavorite: Bool
    var description: String
    var park: String
    
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
