//
//  Story2.swift
//  
//
//  Created by 이승용 on 2023/03/29.
//

import SwiftUI

struct Story2: View {
    var body: some View {
        ZStack{
            Image("Story2_MainLab")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Image("Story2_BackgroundBlur")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Image("Story2_QWithMask")
                .resizable()
                .scaledToFit()
                .frame(height: 122)
            VStack{
                Text("2023.03.13")
                    .foregroundColor(.white)
                    .font(.custom("HeirofLightOTFRegular", size: 18))
                    .padding(5)
                Text("첫째날")
                    .foregroundColor(.white)
                    .font(.custom("HeirofLightOTFRegular", size: 30))
            }.offset(y: -120)
            
            ZStack{
                Image("Story2_TextBackground")
                    .resizable()
                    .scaledToFit()
                Text("가면을 쓰고 처음 만난 우리")
                    .foregroundColor(.white)
                    .font(.custom("HeirofLightOTFRegular", size: 16))
            }.offset(y: 130)
            
            Image("Story2_Arrow")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
                .offset(x: 350, y: 130)
        }
    }
}

struct Story2_Previews: PreviewProvider {
    static var previews: some View {
        Story2().previewInterfaceOrientation(.landscapeRight)
    }
}
