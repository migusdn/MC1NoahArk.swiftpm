//
//  Story1.swift
//  
//
//  Created by HyunwooPark on 2023/03/28.
//

import SwiftUI

struct Story4: View {
    let a: CGFloat = 1200
    let b: CGFloat = 500
    @State var moveAlongCircularPath = false;
    @State private var angle: Double = 180
    
    @State private var ellipseX: CGFloat = .zero
    @State private var ellipseY: CGFloat = .zero
    let timer = Timer.publish(every:0.013, on:.main, in:.common).autoconnect()
    var body: some View {
        
        
        ZStack{
            HStack{
                Image("Story4_background").resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
            HStack{
                
            }
            VStack{
                GeometryReader{ geometry in
                    Ellipse()
                        .frame(width: a,height: b)
                        .position(x:400,y:250).opacity(0)
                        .overlay(
                            Image("Story4_Moon").resizable().frame(width: 222,height: 222, alignment: .leading).scaledToFit()
                                .rotationEffect(
                                    .degrees(angle))
                                .offset(x: ellipseX, y: ellipseY)
                            
                        )
                        .onReceive(timer){ _ in
                            if angle>360 {
                                angle=180
                            }
                            angle += 0.3
                            let theta = CGFloat(.pi * angle / 180)
                            ellipseX = a / 2 * cos(theta)
                            ellipseY = b / 2 * sin(theta)+100
                        }
                    }
            }
            Image("Story4_Text")
                .resizable()
                .frame(width: 1000, height: 100)
                .position(x:380,y:340)
        }
        
    }
    
}

struct Story4_Previews: PreviewProvider {
    static var previews: some View {
        Story4().previewInterfaceOrientation(.landscapeRight)
    }
}
