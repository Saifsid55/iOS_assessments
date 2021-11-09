//
//  SwiftUIVStack.swift
//  SwiftUIProject
//
//  Created by Mohd Saif on 10/11/21.
//

import SwiftUI

struct SwiftUIVStack : View {
    var body: some View {
        List{
            VStack {
            Text("Hello! I am Ironman")
                    .font(.largeTitle)
            Image("ironman")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 150.0, alignment: .center)
            .clipShape(Circle())
//            .padding(.top, 100.0)
            Spacer()
            Text("Hello! I am Spiderman")
                    .font(.largeTitle)
            Image("spiderman")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 150.0, alignment: .center)
            .clipShape(Circle())
//            .padding(.top, 100.0)
            Spacer()
            Text("Hello! I am Thor")
                    .font(.largeTitle)
            Image("Thor")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 150.0, alignment: .center)
            .clipShape(Circle())
//            .padding(.top, 100.0)
            Spacer()
            
        }
        }
        
    }
}

#if DEBUG
struct VerticalStackSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIVStack()
    }
}
#endif
