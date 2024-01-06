//
//  TabButton.swift
//  FineDining
//
//  Created by 진호정 on 2024/01/07.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        Button {
            withAnimation(.spring()) {
                selected = title
            }
        } label: {
            HStack {
                Image(systemName: image)
                    .font(.title2)
                    .foregroundStyle(selected == title ? Color.black : black)
                    .frame(width: 25)
                
                Text(title)
                    .fontWeight(selected == title ? .semibold : .none)
                    .foregroundStyle(selected == title ? Color.black : black)
                
                Spacer()
                
                ZStack {
                    Capsule()
                        .fill(Color.clear)
                        .frame(width: 3, height: 25)
                    
                    if selected == title {
                        Capsule()
                            .fill(Color.black)
                            .frame(width: 3, height: 25)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                   
                }
            }
            .padding(.leading)
        }
        .buttonStyle(.plain)

        
    }
    
}

var black = Color.black.opacity(0.5)
//#Preview {
   // TabButton()
//}
