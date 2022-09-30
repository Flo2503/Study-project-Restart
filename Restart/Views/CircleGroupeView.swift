//
//  CircleGroupeView.swift
//  Restart
//
//  Created by Florent on 30/09/2022.
//

import SwiftUI

struct CircleGroupeView: View {
    // MARK: - PROPERTY
    
    @State var shapeColor: Color
    @State var shapeOpacity: Double
        
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
    }
}

struct CircleGroupeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupeView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
