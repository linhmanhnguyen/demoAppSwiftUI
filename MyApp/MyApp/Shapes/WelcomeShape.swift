//
//  WelcomeShape.swift
//  MyApp
//
//  Created by Nguyễn Mạnh Linh on 10/05/2023.
//

import SwiftUI

struct WelcomeShape: View {
    var body: some View {
        GeometryReader(content: { geometry in
            Path { path in // Tao hcn co width, height = voi man hinh
                // CGRect: CoreGraphicRectangle
                path.addRect(CGRect(x: 0, y: 0, width: UIScreen.screenWidth, height: UIScreen.screenHeight))
            }
            // .fill: hàm dùng để đổ màu
            .fill(.linearGradient(Gradient(colors: [Color(43,63,121), Color(154,55,126)]),
                                  startPoint: UnitPoint(x: 0, y: 0),
                                  endPoint: UnitPoint(x: 1, y: 1)
                                 ))
            // hinh tren
            Path { path in
                path.move(to: CGPoint(x: 0 , y: 0))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y: 0))
                path.addLine(to: CGPoint(x: UIScreen.screenHeight, y: 30))
                path.addQuadCurve(to: CGPoint(x: 0, y: 300), control: CGPoint(x: UIScreen.screenWidth/3, y: 100))
            }.fill(Color(233, 75, 106))
            Path { path in
                path.addEllipse(in: CGRect(origin: CGPoint(x: 40, y: 70), size: CGSize(width: 70, height: 70)))
            }.fill(Color.white)
                .shadow(color: .black.opacity(0.2), radius: 10, x:1, y:1)
            
            // hinh duoi
            Path { path in
                path.move(to: CGPoint(x: 0 , y: UIScreen.screenHeight))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y: UIScreen.screenHeight))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y:UIScreen.screenHeight - 300))
                path.addQuadCurve(to: CGPoint(x: 0, y:UIScreen.screenHeight - 30), control: CGPoint(x: 2 * UIScreen.screenWidth/3, y:UIScreen.screenHeight - 100))
            }.fill(Color(233, 75, 106))
            Path { path in
                path.addEllipse(in: CGRect(origin: CGPoint(x: UIScreen.screenWidth - 130, y: UIScreen.screenHeight - 120), size: CGSize(width: 70, height: 70)))
            }.fill(Color.white)
                .shadow(color: .black.opacity(0.2), radius: 10, x:1, y:1)
            
            
        }).ignoresSafeArea()
    }
}

struct WelcomeShape_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeShape()
    }
}
