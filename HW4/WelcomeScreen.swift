//
//  WelcomeScreen.swift
//  HW4
//
//  Created by Arman on 12/7/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack(spacing: 6){
            BGImage()
            .edgesIgnoringSafeArea(.top)
            VStack (spacing: 24){
                Title()
                MainButton()
            }
        }.background(.black)
    }
}

struct BGImage: View {
    var body: some View {
        Image("BG_Image")
            .resizable()
            .frame(width: 390, height: 614, alignment: .top)
            .aspectRatio(contentMode: .fit)
    }
}

struct Title: View {
    var body: some View {
            Text("See all interesting links in one app")
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(.white)
                .frame(width: 358, height: 92, alignment: .leading)
                .padding(.horizontal, 16)
                .lineLimit(nil)
//                .padding(.top,6)
        
            
    }
}

struct MainButton: View {
    var body: some View {
        Button (action: {}){
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                Text("Let's start surfing the web")
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .frame(width: 310, height: 22)
            }.frame(width: 358, height: 58)
                .padding(.bottom,50)
                .padding(.horizontal, 16)

        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
