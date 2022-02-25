//
//  ViewController.swift
//  AnimationApp
//
//  Created by Владимир Данилович on 23.02.22.
//

import UIKit
import Spring
import SideMenu

final class ViewController: UIViewController {

    private var animationTypes = AnimationType()
    private var curves = Curve()

    @IBOutlet weak private var nameAnimation: UILabel!
    @IBOutlet weak private var animationView: SpringView!
    @IBOutlet weak private var lableForce: UILabel!
    @IBOutlet weak private var labelDuration: UILabel!
    @IBOutlet weak private var labelDelay: UILabel!
    @IBOutlet weak private var labelCurve: UILabel!
    @IBOutlet weak private var lableCurveItem: UILabel!
    @IBOutlet weak private var sliderForce: UISlider!
    @IBOutlet weak private var sliderDuration: UISlider!
    @IBOutlet weak private var sliderDelay: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction private func sliderChangeForce() {
        let shortValue = round(Double(sliderForce.value) * 10) / 10
        lableForce.text = "Force: \(shortValue)"
    }

    @IBAction private func sliderChangeDuration() {
        let shortValue = round(Double(sliderDuration.value) * 10) / 10
        labelDuration.text = "Duration: \(shortValue)"
    }

    @IBAction private func sliderChangeDelay() {
        let shortValue = round(Double(sliderDelay.value) * 10) / 10
        labelDelay.text = "Delay: \(shortValue)"
    }

    @IBAction private func startAnimation(_ sender: UIButton) {

        animationView.animation = animationTypes.animationType.randomElement() ?? "shake"
        animationView.curve = curves.curve.randomElement() ?? "linear"
        animationView.force = CGFloat(sliderForce.value)
        animationView.duration = CGFloat(sliderDuration.value)
        animationView.delay = CGFloat(sliderDelay.value)
        animationView.animate()
        lableCurveItem.text = "\(animationView.curve)"
        nameAnimation.text = "\(animationView.animation)"
    }

    @IBAction private func button() {
        SideMenuManager.default.leftMenuNavigationController = storyboard?.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? SideMenuNavigationController
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: view)
        guard let textForce = lableForce.text else { return }
        guard let textDelay = labelDelay.text else { return }
        guard let textDuration = labelDuration.text else { return }
        Array.shared.array.append(textForce)
        Array.shared.array.append(textDelay)
        Array.shared.array.append(textDuration)
    }

    private func setupUI() {
        sliderForce.value = 0
        sliderForce.minimumValue = 0
        sliderForce.maximumValue = 3

        sliderDuration.value = 0
        sliderDuration.minimumValue = 0
        sliderDuration.maximumValue = 3

        sliderDelay.value = 0
        sliderDelay.minimumValue = 0
        sliderDelay.maximumValue = 3
    }
}
