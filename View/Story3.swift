//
//  Story3.swift
//  MC1NoahArk
//
//  Created by 이승용 on 2023/03/29.
//

import SwiftUI

struct Story3: View {
    var body: some View {
        ZStack{
            Image("Story3_Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            HStack{
                Image("Story3_LeftQ")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 99)
                    .padding()
                Image("Story3_RightQ")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 99)
                    .padding()
            }
        }
    }
}

struct Story3_Previews: PreviewProvider {
    static var previews: some View {
        Story3().previewInterfaceOrientation(.landscapeRight)
    }
}
