//
//  SwiftUIText.swift
//  SwiftUIProject
//
//  Created by Mohd Saif on 10/11/21.
//

import SwiftUI

struct SwiftUIText : View {
    var body: some View {
        Text("Sample Text with various attributes, which also auto resizes irrespective of the number of lines.")
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .padding(.all, 10.0)
            .lineLimit(nil)
    }
}

#if DEBUG
struct TextSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIText()
    }
}
#endif
