//
//  SwiftUIimage.swift
//  SwiftUIProject
//
//  Created by Mohd Saif on 10/11/21.
//

import SwiftUI

struct SwiftUIimage: View {
    var body: some View {
        VStack{
            Text("Hello! I am Ironman")
                    .font(.largeTitle)
            Image("ironman")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250.0, height: 250.0, alignment: .center)
            .clipShape(Circle())
            .padding(.top, 100.0)
            Spacer()
            
        }
    }

}

#if DEBUG
struct ImageSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIimage()
    }
}
#endif

