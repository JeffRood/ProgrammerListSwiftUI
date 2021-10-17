//
//  MapView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let cordinate = CLLocationCoordinate2D(latitude: 18.470200330404044, longitude: -69.89443548177947)
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        let regions = MKCoordinateRegion(center: cordinate, span: span);
        uiView.setRegion(regions, animated: true)
        
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
