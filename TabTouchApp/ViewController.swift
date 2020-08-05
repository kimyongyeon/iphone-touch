//
//  ViewController.swift
//  TabTouchApp
//
//  Created by p151541 on 2020/08/04.
//  Copyright © 2020 p151541. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMessage: UILabel!
    @IBOutlet weak var txtTapsLevel: UILabel!
    @IBOutlet weak var txtTouchsLevel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 터치 시작할 때 호출
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch // 현재 발생한 터치 이벤트를 가져 옵니다.
        txtMessage.text = "Touches Began" // 메서드에서 현재 발생한 이벤트의 종류를 출력합니다. 메서드마다 내용이 조금씩 다르니 주의하세요.
        txtTapsLevel.text = String(touch.tapCount) // touches 세트안에 포함된 터치의 개수를 출력합니다.
        txtTouchsLevel.text = String(touches.count) // 터치 객체들중 첫 번째 객체에서 탭의 개수를 가져와 출력 합니다.
        
    }
    // 터치된 손가락이 움직였을때 호출됩니다.
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Moved"
        txtTapsLevel.text = String(touch.tapCount)
        txtTouchsLevel.text = String(touches.count)
        
    }
    // 화면에서 손가락을 떼었을때 호출됩니다.
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Ended"
        txtTapsLevel.text = String(touch.tapCount)
        txtTouchsLevel.text = String(touches.count)
        
        
    }


}

