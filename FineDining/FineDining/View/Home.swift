//
//  ContentView.swift
//  FineDining
//
//  Created by 진호정 on 2024/01/07.
//

import SwiftUI

struct HomeView: View {
    
    var window = NSScreen.main?.visibleFrame
   
    var body: some View {
       
        HStack {
            SideBar()
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: window!.width / 1.5,
               height: window!.height - 40
        )
        .background(Color.white.opacity(0.6))
    .background(BlurWindow())
    
        
    }
}

struct ListView: View {
    var body: some View {
        Text("List")
    }
}

struct MainView: View {
    var body: some View {
        Text("List")
    }
}

#Preview {
    HomeView()
}

struct SideBar: View {
    @State var selected: String = "Home"
    @Namespace var animation
    @State var flip: Bool = false
    var body: some View {
        HStack(spacing: 0) {
            VStack(spacing: 22) {
                Group {
                    HStack {
                        Image(systemName: "fork.knife")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45,
                                   height: 45)
                            .onTapGesture {
                                self.flip.toggle()
                            }
                        
                        Text("Find-Dining")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.black)
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.top, 35)
                    .padding(.leading, 10)
                    .padding(.leading)
                    
                    //탭버튼
                    TabButton(image: "house.fill", title: "Home",
                              selected: $selected,
                              animation: animation
                    )
                    
                    TabButton(image: "clock.fill", title: "Recents",
                              selected: $selected,
                              animation: animation
                    )
                    
                    TabButton(image: "person.2.fill", title: "Following",
                              selected: $selected,
                              animation: animation
                    )
                    
                    HStack {
                        Text("Insights")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.gray)
                        
                        Spacer()
                    }
                    .padding()
                    
                    TabButton(image: "message.fill", title: "Message",
                              selected: $selected,
                              animation: animation
                    )
                    
                    TabButton(image: "bell.fill", title: "Bell",
                              selected: $selected,
                              animation: animation
                    )
                }
                
                Spacer(minLength: 0)
                
                VStack(spacing: 8) {
                    Image.init(systemName:  "person.line.dotted.person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Button {
                        
                    } label: {
                        Text("Buisness Tools")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.blue)
                    }
                    .buttonStyle(.plain)
                    
                    Text("Hurry! Up Now you can unlock our new business tools at Your convience")
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                    
                }
                Spacer(minLength: 0)
                //Profile View ...
                
                HStack(spacing: 10) {
                    Image.init(systemName: "person.crop.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("iJustine")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.black)
                    }
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.gray)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 8)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 10))
                .shadow(color: .black.opacity(0.1),
                        radius: 5, x: 5, y: 5)
                .shadow(color: .black.opacity(0.1),
                        radius: 5, x: -5, y: -5)
                .padding(.horizontal)
                .padding(.bottom,20)
                
            }
            
            Divider()
                .offset(x: -2)
        }
        //사이드바 기본사이즈
        .frame(width: flip ? 50 : 240)
    }
}
