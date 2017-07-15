import UIKit
import PlaygroundSupport

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let outlineView = UIView()
        outlineView.translatesAutoresizingMaskIntoConstraints = false
        outlineView.layer.borderColor = UIColor.blue.cgColor
        outlineView.layer.borderWidth = 1
        view.addSubview(outlineView)

        let firstLabel = UILabel()
        firstLabel.layer.borderColor = UIColor.red.cgColor
        firstLabel.layer.borderWidth = 1
        firstLabel.font = .systemFont(ofSize: 15)
        firstLabel.text = "text"

        let secondLabel = UILabel()
        secondLabel.layer.borderColor = UIColor.red.cgColor
        secondLabel.layer.borderWidth = 1
        secondLabel.font = .systemFont(ofSize: 30)
        secondLabel.text = "text"

        let thirdLabel = UILabel()
        thirdLabel.layer.borderColor = UIColor.red.cgColor
        thirdLabel.layer.borderWidth = 1
        thirdLabel.font = .systemFont(ofSize: 30)
        thirdLabel.text = "text"

        let stackView = UIStackView(arrangedSubviews: [
            firstLabel, secondLabel, thirdLabel
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .firstBaseline
        stackView.spacing = 8
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            outlineView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            outlineView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            outlineView.topAnchor.constraint(equalTo: stackView.topAnchor),
            outlineView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
        ])
    }
}

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = ViewController()
