//
//  Mapview.swift
//  Landmarks
//
//  Created by  송에 on 2023/07/20.
//

import SwiftUI
import MapKit

struct Mapview: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
        Mapview(coordinate: CLLocationCoordinate2D(latitude: 37.4909, longitude: 126.8532))
    }
}
