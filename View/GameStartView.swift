//
//  GameStart.swift
//  MC1NoahArk
//
//  Created by 채영민 on 2023/03/28.
//

import SwiftUI

struct GameStart: View {
    var body: some View {
        ZStack {
            Image("backgroundImage") // background
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            GeometryReader { geometry in
                Image("게임제목(고정)")
                    .resizable()
                    .frame(width: 475, height: 212)
                    .position(x: geometry.size.width/2.4, y: geometry.size.height/3.5)
                Image("뀨 뱅글 (모션)")
                    .resizable()
                    .frame(width: 279, height: 279)
                    .position(x: geometry.size.width/1.25, y: geometry.size.height/2.15)
                Image("타이포(고정)")
                    .resizable()
                    .frame(width: 165, height: 100)
                    .position(x: geometry.size.width/1.18, y: geometry.size.height/1.55)
                Image("리큐 이미지(고정)")
                    .resizable()
                    .frame(width: 101, height: 22)
                    .position(x: geometry.size.width/1.14, y: geometry.size.height/4)
                Image("와 아이들(고정)")
                    .resizable()
                    .frame(width: 517, height: 272)
                    .position(x: geometry.size.width/2, y: geometry.size.height/1.45)
                Image("노아(모션)")
                    .resizable()
                    .frame(width: 150, height: 310)
                    .position(x: geometry.size.width/2.11, y: geometry.size.height/1.55)
                Image("게임시작(모션)")
                    .resizable()
                    .frame(width: 256, height: 118)
                    .position(x: geometry.size.width/1.2, y: geometry.size.height/1.13)
                Image("타이포 좌우(모션)")
                    .resizable()
                    .frame(width: 462, height: 19)
                    .position(x: geometry.size.width/2, y: geometry.size.height/18)
            }
        }
    }
}

struct gameStart_Previews: PreviewProvider {
    static var previews: some View {
        GameStart().previewInterfaceOrientation(.landscapeRight)
    }
}
