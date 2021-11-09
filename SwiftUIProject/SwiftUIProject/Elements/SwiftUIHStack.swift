//
//  SwiftUIHStack.swift
//  SwiftUIProject
//
//  Created by Mohd Saif on 10/11/21.
//
import SwiftUI

struct SwiftUIHStack: View {
    var body: some View {
        HStack {
            Text("First Horizontal Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
            Text("Second Horizontal Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
        }
        .background(Color.gray)
        .padding(.all, 10.0)
    }
}

#if DEBUG
struct HorizontalStackSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIHStack()
    }
}
#endif
