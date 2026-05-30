//
//  ContentView.swift
//  PiggyBank
//
//  Created by SM J on 5/30/26.
//

import SwiftUI

struct ContentView: View {
    // 나중에 데이터베이스와 연결될 총 저금액 임시 변수
    @State private var totalAmount: Int = 0
    
    var body: some View {
        // 화면 전체를 수직(위아래)으로 쌓는 VStack
        VStack {
            
            // 1. 상단 영역: 총 저금액과 달력 (수평으로 배치하는 HStack)
            HStack {
                // 저금액 텍스트를 위아래로 묶음
                VStack(alignment: .leading) {
                    Text("총 모은 돈")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("\(totalAmount) 원")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                // Spacer()는 양옆의 UI를 양끝으로 밀어내는 투명한 스프링 역할을 합니다.
                Spacer()
                
                // 달력 버튼
                Button(action: {
                    print("달력 클릭됨 - 나중에 달력 화면으로 이동")
                }) {
                    Image(systemName: "calendar")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                        // 터치 영역을 넓히기 위해 약간의 배경을 줍니다
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20) // 양옆 여백
            .padding(.top, 20)        // 위쪽 여백
            
            Spacer() // 상단 영역과 중앙 돼지를 떨어뜨리기 위한 빈 공간
            
            // 2. 중앙 영역: 돼지 저금통 버튼
            Button(action: {
                print("돼지 클릭됨 - 나중에 팝업 띄우기")
            }) {
                Image("PiggyBank")
                    .resizable() // 이미지 크기를 조절할 수 있게 만듭니다.
                    .scaledToFit() // 이미지의 원래 비율을 유지하면서 화면에 맞춥니다.
                    .frame(width: 550) // 원하는 크기로 조절
                    .offset(x: -20, y: -120)
                    .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 10)
            }
            
            Spacer() // 돼지를 화면 중앙에 위치시키기 위한 하단 빈 공간
            
        }
    }
}

// Xcode 우측 Preview(미리보기) 화면을 띄워주는 코드
#Preview {
    ContentView()
}
