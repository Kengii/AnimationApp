//
//  AnimatonModel.swift
//  AnimationApp
//
//  Created by Владимир Данилович on 23.02.22.
//

import UIKit
import Spring
struct Curve {
    var curve: [String] = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
}

struct AnimationType {
    let animationType: [String] = ["shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX",
                                   "flipY", "fall", "squeezeLeft", "squeezeRight", "squeezeDown",
                                   "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp",
                                   "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown",
                                   "fadeInUp", "zoomIn", "zoomOut", "flash",]
}


