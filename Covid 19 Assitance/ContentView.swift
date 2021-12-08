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
    var body: some View {
        VStack {
            
            HStack{
                TextField("Search:", text: $input)
                Button(action:{}, label: {})
            }
            .padding()
            MapView()
        }
    }
}

struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> MKMapView{
        let map = MKMapView()
        map.mapType = .standard
        map.isRotateEnabled = false
        
        let location = CLLocation(latitude: 41.8781, longitude: -87.6298)
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        map.setRegion(region, animated: false)
        return map
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
