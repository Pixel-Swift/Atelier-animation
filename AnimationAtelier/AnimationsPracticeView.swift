//
//  AnimationsPracticeView.swift
//  AnimationAtelier
//
//  Created by Dimitri on 02/07/2025.
//

import SwiftUI

struct AnimationsPracticeView: View {
    @State private var isScaled = false
    @State private var isFaded = false
    @State private var isRotated = false
    @State private var isOffset = false
    @State private var withAnimationState = false
    @State private var repeatAngle: Double = 0
    @State private var isRepeating = false

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("scaleEffect")
                            .font(.headline)
                            .fontWeight(.bold)
                        Image(systemName: "star.fill")
                            .font(.largeTitle)
                          
                            .scaleEffect(isScaled ? 1 : 0.5)
                            .animation(.easeInOut(duration: 1), value: isScaled)
                    }

                    Spacer()

                    Button("Zoom") {
                        isScaled.toggle()
                    }
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.black)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)


                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("opacity")
                            .font(.headline)

                        Image(systemName: "eye")
                            .font(.largeTitle)
                            .opacity(isFaded ? 0.0 : 1.0)
                            .animation(.linear(duration: 1), value: isFaded)
                    }

                    Spacer()

                    Button("Cacher") {
                        isFaded.toggle()
                    }
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.black)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)


                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("rotationEffect")
                            .font(.headline)

                        Image(systemName: "arrow.2.circlepath")
                            .font(.largeTitle)
                          
                            .rotationEffect(.degrees(isRotated ? 360 : 0))
                            .animation(.easeInOut(duration: 1), value: isRotated)
                    }

                    Spacer()

                    Button("Tourner") {
                        isRotated.toggle()
                    }
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.black)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)

     
                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("offset")
                            .font(.headline)

                        Image(systemName: "paperplane.fill")
                            .font(.largeTitle)
                          
                            .offset(x: isOffset ? 200 : 0)
                            .animation(.easeInOut(duration: 1), value: isOffset)
                    }

                    Spacer()

                    Button("Décoller") {
                        isOffset.toggle()
                    }
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.black)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)


                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("repeatForever()")
                            .font(.headline)

                        Image(systemName: "globe")
                            .font(.largeTitle)
                          
                            .rotationEffect(.degrees(repeatAngle))
                            .onAppear {
                                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                                    repeatAngle = 360
                                }
                            }
                    }

                    Spacer()

            
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)

                Spacer(minLength: 40)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AnimationsPracticeView()
}
