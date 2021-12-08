//
//  Page1.swift
//  HW4
//
//  Created by Arman on 12/7/21.
//

import SwiftUI

struct Page1: View {
    var body: some View {
        VStack(alignment: .center, spacing: 6){
            TopNav()
            Spacer()
            Title1()
            Spacer()
        AddButton()
        }            
    }
}

struct Title1: View {
    var body: some View {
        VStack{
            Text("Save your first\n bookmark")        }
        .font(.system(size: 36, weight: .bold))
                .foregroundColor(.black)
                .frame(width: 358, height: 92)
                .multilineTextAlignment(.center)

    }
}


struct TopNav: View {
    var body: some View {
            Text("Bookmark App")
            .foregroundColor(.black)
            .fontWeight(.semibold)
            .frame(width: 130, height: 22)
    }
}


struct AddButton: View {
    var body: some View {
        Button(action: {}){
        ZStack {
            RoundedRectangle(cornerRadius: 16)
            .fill(Color.black)
            Text("Add bookmark")
            .font(.system(size: 16))
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(width: 310, height: 22)
        }.frame(width: 358, height: 58)
            .padding(.horizontal,16)

    }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
