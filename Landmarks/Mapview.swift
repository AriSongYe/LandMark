//
//  Mapview.swift
//  Landmarks
//
//  Created by  송에 on 2023/07/20.
//

import SwiftUI
import MapKit

struct Mapview: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.4909, longitude: 126.8532),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
        Mapview()
    }
}
