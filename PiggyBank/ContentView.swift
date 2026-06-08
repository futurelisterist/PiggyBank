//
//  ContentView.swift
//  PiggyBank
//
//  Created by SM J on 5/30/26.
//

import SwiftUI

struct ContentView: View {
    @State private var totalAmount: Int = 0
    
    var body: some View {
        VStack {
            
            //총 저금액과 달력
            HStack {
                VStack(alignment: .leading) {
                    Text("총 모은 돈")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("\(totalAmount) 원")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                // 달력 버튼
                Button(action: {
                    print("달력 클릭됨 - 나중에 달력 화면으로 이동")
                }) {
                    Image(systemName: "calendar")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            Spacer()
            
            ZStack {
                //배경 동전 이미지
                Image("Coin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 550)
                    .offset(x: -10, y: -120)
                
                //돼지 저금통
                Button(action: {
                    print("돼지 클릭됨 - 나중에 팝업 띄우기")
                }) {
                    Image("PiggyBank2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 550)
                        .offset(x: 10, y: -120)
                        .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 10)
                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
