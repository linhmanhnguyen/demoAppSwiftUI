//
//  WelcomeView.swift
//  MyApp
//
//  Created by Nguyễn Mạnh Linh on 10/05/2023.
//

import SwiftUI

struct WelcomeView: View {
    let WelcomeMessages: [WelcomeMessage] = [ // dinh nghia thuc the trong folder Models
        WelcomeMessage(title: "VietDevelopers", description: "Hợp Tác Cùng Thành Công." , content: "VietDevelopers Với Hơn 8 Năm Kinh Nghiệm Trong Lĩnh Vực CNTT"),
        WelcomeMessage(title: "VietDevelopers", description: "Sáng Tạo Để Bứt Phá.", content: "VietDevelopers Với Hơn 8 Năm Kinh Nghiệm Trong Lĩnh Vực CNTT"),
        WelcomeMessage(title: "VietDevelopers", description: "Tận Tâm Cùng Trường Tồn.", content: "VietDevelopers Với Hơn 8 Năm Kinh Nghiệm Trong Lĩnh Vực CNTT")
    ]
    var body: some View {
        ZStack {
            WelcomeShape()
            TabView { // dùng để chuyển tab giữa các màn hình
                ForEach(WelcomeMessages, id: \.self) { WelcomeMessage in
                    //Verticle Stack: dùng để phân bố từ trên xuống dưới trong 1 màn hình
                    VStack(alignment: .leading, spacing: 20) {
                        Text(WelcomeMessage.title)
                            .font(.system(size: 35))
                            .foregroundColor(Color.orange)
                            .fontWeight(.bold)
                        Text(WelcomeMessage.description)
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text(WelcomeMessage.content)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
//                        Button(
//                            action: {},
//                            label:{
//                                Text("Đăng Ký Học Ngay")
//                                    .frame(minWidth: 0, maxWidth: UIScreen.screenWidth/2)
//                                    .font(.system(size: 18))
//                                    .padding()
//                                    .foregroundColor(.yellow)
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 25).stroke(Color.orange, lineWidth: 2)
//                                    )
//                                    .background(Color(237, 75, 106))
//                                    .cornerRadius(25)
//                                    .fontWeight(.bold)
//                            }
//                        )
                        
                        NavigationView() {
                            VStack{
                                NavigationLink(destination: RegisterSwiftUIView()){
                                    Text("Đăng Ký Học Ngay")
                                        .frame(minWidth: 0, maxWidth: UIScreen.screenWidth/2)
                                        .font(.system(size: 18))
                                        .padding()
                                        .foregroundColor(.yellow)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25).stroke(Color.orange, lineWidth: 2)
                                        )
                                        .background(Color(237, 75, 106))
                                        .cornerRadius(25)
                                        .fontWeight(.bold)
                                }
                            }.navigationTitle("Trang Chủ")
                        }
                        
                    }
                    .padding(20) // căn 1 khoảng lề
                    .onAppear {
                        print("select item: \(WelcomeMessage.title)")
                    }
                }
            }.frame(width: UIScreen.screenWidth,
                    height: UIScreen.screenHeight,
                    alignment: .center)
            .tabViewStyle(PageTabViewStyle()) // tao list hien thi view dang tron
        }
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
