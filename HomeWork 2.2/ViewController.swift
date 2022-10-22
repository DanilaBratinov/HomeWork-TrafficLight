import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var buttonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layer.cornerRadius = 55
        redColorView.alpha = 0.5
        
        yellowColorView.layer.cornerRadius = 55
        yellowColorView.alpha = 0.5
        
        greenColorView.layer.cornerRadius = 55
        greenColorView.alpha = 0.5
        
        buttonOutlet.setTitle("START", for: .normal)
        buttonOutlet.layer.cornerRadius = 15
    }
    
    var tapCount = 0
    @IBAction func changeColorButton() {
        tapCount += 1
        changeColor()
    }
    
    private func changeColor() {
        switch tapCount {
        case 1:
            UIView.animate(withDuration: 0.3) {
                self.redColorView.alpha = 1
                self.buttonOutlet.setTitle("NEXT", for: .normal)
            }
        case 2:
            UIView.animate(withDuration: 0.3) {
                self.redColorView.alpha = 0.5
                self.yellowColorView.alpha = 1
            }
        case 3:
            UIView.animate(withDuration: 0.3) {
                self.yellowColorView.alpha = 0.5
                self.greenColorView.alpha = 1
            }
        case 4:
            UIView.animate(withDuration: 0.3) {
                self.redColorView.alpha = 0.5
                self.yellowColorView.alpha = 0.5
                self.greenColorView.alpha = 0.5
                self.buttonOutlet.setTitle("START", for: .normal)
            }
            tapCount = 0
        default:
            break
        }
    }
}

