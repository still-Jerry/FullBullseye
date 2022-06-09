//
//  ShapesView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 08.06.2022.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        VStack {
            Circle()
        }
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
