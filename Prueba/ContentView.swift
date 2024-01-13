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
            Annotation("Parking", coordinate: .parking){
                ZStack{
                    RoundedRectangle(cornerRadius: 5).fill(.background)
                    RoundedRectangle(cornerRadius: 5).stroke(.secondary, lineWidth: 5)
                    Image(systemName: "car").padding(5)
                }
            }
            .annotationTitles(.hidden)
        }
        .mapStyle(.standard(elevation: .realistic))
    }
}

#Preview {
    ContentView()
}
