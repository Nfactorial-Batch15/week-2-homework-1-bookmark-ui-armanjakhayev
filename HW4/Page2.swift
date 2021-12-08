//
//  Page2.swift
//  HW4
//
//  Created by Arman on 12/7/21.
//

import SwiftUI

struct Page2: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Page1()
                .opacity(0.2)
                .background(.gray)
            VStack {
                Spacer()
                Rectangle()
                    .frame(height: 360)
            }
            Spacer()
            SaveWindow()
            .padding(.top, 440)
        }
    }
}

struct SaveWindow: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(width: 390, height: 362)
            VStack {
                    HStack{
                        Spacer()
                        Image(systemName: "xmark")
                            .frame(width: 12, height: 12)
                            .padding(.horizontal,22)
                    }
                    HStack{
                        Text("Title")
                            .font(.system(size: 17))
                            .padding(.bottom,12)
                            .padding(.horizontal,16)
                        Spacer()
                    }
                        TextField("Bookmark title", text: .constant(""))
                            .frame(width: 326, height: 46, alignment: .center)
                            .font(.system(size: 17))
                            .padding(.horizontal,16)
                            .background(.gray)
                            .opacity(0.4)
                            .cornerRadius(12)
                    HStack{
                        Text("Link")
                            .font(.system(size: 17))
                            .padding(.top,16)
                            .padding(.horizontal,16)
                        Spacer()
                    }
                    TextField("Bookmark link (URL)", text: .constant(""))
                    .frame(width: 326, height: 46, alignment: .center)
                    .font(.system(size: 17))
                    .padding(.horizontal,16)
                    .background(.gray)
                    .opacity(0.4)
                    .cornerRadius(12)
                        .padding(.bottom,11)
                SaveButton()
                    .padding(.top, 24)
            }
        }
    }
}

struct SaveButton: View {
    var body: some View {
        Button(action: {}){
        ZStack {
            RoundedRectangle(cornerRadius: 16)
            .fill(Color.black)
            Text("Save")
            .font(.system(size: 16))
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(width: 310, height: 22)
        }.frame(width: 358, height: 58)
    }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}

