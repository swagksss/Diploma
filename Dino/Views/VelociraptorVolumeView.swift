//
//  VelociraptorVolumeView.swift
//  Dinopedia
//
//
//

import SwiftUI
import RealityKit
import RealityKitContent

struct VelociraptorVolumeView: View {
    
    var body: some View {
        TimelineView(.animation) { context in
            Model3D(named: "Velociraptor", bundle: realityKitContentBundle) { model in
                model
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.6)
                    .rotation3DEffect(.degrees(context.date.timeIntervalSinceReferenceDate * 10 ),  axis: .y)
            } placeholder: {
                ProgressView()
            }
           
        }
    }
}

#Preview {
    VelociraptorVolumeView()
}


