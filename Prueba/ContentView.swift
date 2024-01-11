//
//  ContentView.swift
//  Prueba
//
//  Created by Dismar Quiroz on 20-11-23.
//

import MapKit
import SwiftUI

extension CLLocationCoordinate2D{
    static let parking = CLLocationCoordinate2D(latitude: -36.8294411, longitude: -73.0594820)
}

struct ContentView: View {
    var body: some View {
        Map{
            Marker("Parking", coordinate: .parking)
        }
    }
}

#Preview {
    ContentView()
}
