//
//  ContentView.swift
//  Covid 19 Assitance
//
//  Created by Central States SER Mac 18 on 12/7/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var input: String = ""
    
    struct AnnotatedItem: Identifiable {
        let id = UUID()
        var name: String
        var coordinate: CLLocationCoordinate2D
    }
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.84553285, longitude: -87.72347359), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.01))
    
    private var pointsOfInterest = [
               AnnotatedItem(name: "Walgreens", coordinate: .init(latitude: 41.84404815, longitude: -87.72490806)),
               AnnotatedItem(name: "Jorge Prieto Health Center", coordinate: .init(latitude: 41.84714515, longitude: -87.72498431)),
                AnnotatedItem(name: "Lawndale Christian Health Center", coordinate: .init(latitude: 41.8525733, longitude: -87.72179109)),
                AnnotatedItem(name: "Atlantic Mall", coordinate: .init(latitude: 41.844480, longitude: -87.723830)),
                AnnotatedItem(name: "Drive Thru Testing Ogden Ave", coordinate: .init(latitude: 41.851370, longitude: -87.723830)),
                AnnotatedItem(name: "Howard Brown Health and Project Vida", coordinate: .init(latitude: 41.842550, longitude: -87.728680))
               ]

    
    var body: some View {
        VStack {
            
            HStack{
                TextField("Search:", text: $input)
                Button(action:{}, label: {})
            }
            .padding()
            Map(coordinateRegion: $region, annotationItems: pointsOfInterest) {
                item in MapMarker(coordinate: item.coordinate)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
