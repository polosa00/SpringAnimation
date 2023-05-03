//
//  Model.swift
//  SpringAnimationHW
//
//  Created by Александр Полочанин on 3.05.23.
//


struct SpringAnimation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> SpringAnimation {
        SpringAnimation(
            name: Animations.shared.names.randomElement() ?? "pop",
            curve: Animations.shared.curves.randomElement() ?? "linear",
            force: Double.random(in: 0.0...1.5),
            duration: Double.random(in: 0.0...1.5),
            delay: Double.random(in: 0.0...1.5)
        )
    }
    
}
