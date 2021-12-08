//
//  Page3.swift
//  HW4
//
//  Created by Arman on 12/7/21.
//

import SwiftUI

struct Page3: View {
    var body: some View {
        VStack{
            ListNav()
            List()
            Spacer()
            AddButton()
        }
    }
}

struct List: View {
    var body: some View {
        VStack{
            HStack(spacing: 3){
                Text("Google")
                    .font(.system(size: 17))
                        Spacer()
                        LinkImage()
                    .padding([.trailing],19)
                    }
            Divider()
                .padding(.top,5)
                .padding(.bottom,33)
            HStack(spacing: 3){
                Text("nFactorial School")
                    .font(.system(size: 17))
                        Spacer()
                        LinkImage()
                    .padding([.trailing],19)
                    }
            Divider()
                .padding(.top,5)
                .padding(.bottom,33)
            HStack(spacing: 3){
                Text("NY Times")
                    .font(.system(size: 17))
                        Spacer()
                        LinkImage()
                    .padding([.trailing],19)
                    }
            Divider()
                .padding(.top,5)
                .padding(.bottom,33)
            HStack(spacing: 3){
                Text("Bloomberg")
                    .font(.system(size: 17))
                        Spacer()
                        LinkImage()
                    .padding([.trailing],19)
                    }
            Divider()
                .padding(.top,5)
                .padding(.bottom,33)
        }.padding([.leading],16)
    }
    
}

struct LinkImage: View {
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image("link")
            Image("link1")
            Image("link2")
        }
    }
}

struct ListNav: View {
    var body: some View {
            Text("List")
            .font(.system(size: 17, weight: .bold))
            .padding(.horizontal,130)
            .padding(.bottom , 31)
    }
}



struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
