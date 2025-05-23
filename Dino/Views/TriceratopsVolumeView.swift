//
//  TriceratopVolumeView.swift
//  Dinopedia
//
//  
//

import SwiftUI
import RealityKit
import RealityKitContent

struct TriceratopsVolumeView: View {

    var body: some View {
        RealityView { content in
            if let triceratops = try? await Entity(named: "Triceratops", in: realityKitContentBundle) {
                triceratops.position += [0, -1, 0]
                triceratops.scale *= 0.3
                
                if let anim = triceratops.availableAnimations.first {
                    triceratops.playAnimation(anim.repeat())
                }
                
            
                triceratops.enumerateHierarchy { entity, stop in
                    if entity is ModelEntity{
                        entity.components.set(GroundingShadowComponent(castsShadow: true))
                    }
                }
                content.add(triceratops)
            }
        }
    }
}

#Preview {
    TriceratopsVolumeView()
}

