import UIKit
import AKLabel

class ViewController: UIViewController {

	@IBOutlet weak var label: AKLabel!
	override func viewDidLoad() {
        super.viewDidLoad()
    }

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		label.animate(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", duration: 10, completion: nil)
	}
}

