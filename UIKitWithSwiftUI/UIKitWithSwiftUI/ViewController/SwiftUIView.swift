//
//  SwiftUIView.swift
//  UIKitWithSwiftUI
//
//  Created by Aitor Iglesias Pubill on 11/12/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "person")
                .resizable()
                .frame(width: 200, height: 200)
            HStack  {
                Spacer()
                Text("Aitor iglesias Pubill")
                Spacer()
            }
            Spacer()
        }
        .padding(10)
        .font(.title)
        .foregroundColor(.white)
        .background(.orange)
        .navigationTitle("ESTO ES SWIFTUI")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
