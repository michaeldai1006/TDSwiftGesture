  import UIKit
  import PlaygroundSupport
  
  // View controller that hosts the target view
  class TDLiveViewController : UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Config background view
        let backgroundView = UIView()
        backgroundView.backgroundColor = .lightGray
        
        // Text field
        let textField = UITextField(frame: CGRect(x: 25.0, y: 100.0, width: self.view.frame.width - 50, height: 30))
        textField.backgroundColor = .white
        backgroundView.addSubview(textField)
        
        // End editing gesture
        TDSwiftGesture.addTapToEndEditingGesture(onView: backgroundView)
        
        // Present background view
        self.view = backgroundView
    }
  }
  
  // Present the view controller in the Live View window
  PlaygroundPage.current.liveView = TDLiveViewController()
