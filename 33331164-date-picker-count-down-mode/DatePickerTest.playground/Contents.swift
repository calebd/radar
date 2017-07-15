import UIKit
import PlaygroundSupport

/*:
 This example demonstrates a bug in `UIDatePicker` when in `.countDownTimer` mode. The first time the user changes the picker, no `.valueChanged` event it sent. Subsequent changes are delivered as expected. The bug can be seen by opening the assistant editor and the console in this playground and manipulating the date picker.

 The example view controller prints the selected count down duration when it changes. The first time the date picker is changed there will be no print statement. Print statements work as expected after that.

 This bug has been present since iOS 7.
 */

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let picker = UIDatePicker()
        picker.datePickerMode = .countDownTimer
        picker.countDownDuration = 3600

        picker.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        picker.frame = view.bounds
        view.addSubview(picker)

        picker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
    }

    @objc func datePickerValueChanged(_ picker: UIDatePicker) {
        print(#function, picker.countDownDuration)
    }
}

PlaygroundPage.current.liveView = ViewController()
