//
//  Story1.swift
//  
//
//  Created by HyunwooPark on 2023/03/28.
//

import SwiftUI

struct Story1: View {
    @State var moveAlongCircularPath = false;
    var body: some View {
        
        
        ZStack{
            HStack{
                Image("Story4_background").resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
            HStack{
                
            }
            GeometryReader{ geometry in
                Ellipse().ignoresSafeArea().frame(width: 1200)
                    .position(x:400,y:250).opacity(0.3)
                
                
                Image("Story4_Moon").resizable().frame(width: 222,height: 222, alignment: .leading).scaledToFit()
                    .offset(y:-150)
                    .rotationEffect(.degrees(moveAlongCircularPath ? 0:360))
                    .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false))
                    .onAppear(){
                        self.moveAlongCircularPath.toggle()
                    }
                
            }
        }
        HStack(){
            
//
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(0)
        .background(
            )
        
    }
     
}

struct Story1_Previews: PreviewProvider {
    static var previews: some View {
        Story1().previewInterfaceOrientation(.landscapeRight)
    }
}
