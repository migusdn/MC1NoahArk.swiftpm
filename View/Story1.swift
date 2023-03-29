//
//  Story1.swift
//  MC1NoahArk
//
//  Created by 이승용 on 2023/03/29.
//

import SwiftUI
import CoreGraphics

struct Story1: View {
    
//    public static func registerFonts() {
//            registerFont(bundle: Bundle.main , fontName: "HeirofLightOTFRegular", fontExtension: ".otf") //change according to your ext.
//        }
//        fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
//
//            guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
//                  let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
//                  let font = CGFont(fontDataProvider) else {
//                fatalError("Couldn't create font from data")
//            }
//
//            var error: Unmanaged<CFError>?
//
//            CTFontManagerRegisterGraphicsFont(font, &error)
//        }
    
    @State private var fadeInOut = false
    
    
    var body: some View {
        ZStack{
            Image("Story1_Sunset")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            HStack{
                Image("Story1_GroupOfQ")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .offset(y:49)
                
            }
            
            HStack{
                Image("Story1_Boat")
                    .resizable()
                    .scaledToFit()
                    .offset(y:105)
            }
            
            HStack{
                Image("Story1_TextBackground")
                    .resizable()
                    .scaledToFit()
                    .offset(y:120)
            }
            
            Text("솔직하고 싶었던 우리...어쩌면 솔직하기 못했을 수도...\n")
                .foregroundColor(.white)
                .offset(y:-100)
                .font(.custom("HeirofLightOTFRegular", fixedSize: 16))
                .padding()
            Text("\"노아의 방주\"")
                .foregroundColor(.white)
                .offset(y:-80)
                .font(.custom("HeirofLightOTFRegular", fixedSize: 30))
                .padding()
            Text("- START -")
                .onAppear(){
                    withAnimation(Animation
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: true)){
                            fadeInOut.toggle()
                        }
                }.opacity(fadeInOut ? 0 : 1)
                .foregroundColor(.white)
                .offset(y: 120)
                .font(.custom("HeirofLightOTFRegular", fixedSize: 16))
        }
    }
}

struct Story1_Previews: PreviewProvider {
    static var previews: some View {
        Story1().previewInterfaceOrientation(.landscapeRight)
    }
}
