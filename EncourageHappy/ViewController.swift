//
//  ViewController.swift
//  EncourageHappy
//
//  Created by Nguyễn Lực on 7/20/19.
//  Copyright © 2019 Nguyễn Lực. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var imgViewBG: UIImageView!
    @IBOutlet weak var lblAuthor: UILabel!
    
    var authors : [String] = []
    var quotes : [[String]] = []
    var quoteType : Int = Int(arc4random_uniform(3))
    var selectedIndex : Int = 0
    
    
    func generate(upper : Int) -> Int {
        let i : Int = Int(arc4random_uniform(UInt32(upper)))
        return i
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        authors.append("Tèo")
        authors.append("Tý")
        authors.append("Sửu")
        authors.append("Dần")
        authors.append("Mão")
        authors.append("Thìn")
        authors.append("Ngọ")
        authors.append("Mùi")
        authors.append("Tuất")
        
        quotes += [["Càng trưởng thành, bạn sẽ nhận ra rằng tranh luận đúng sai hơn thua với người khác đôi khi không còn quan trọng nữa. Quan trọng hơn cả là chỉ muốn bình yên." ,
                    "Khi ta sinh ra, mọi người cười còn ta thì khóc. Hãy sống sao cho khi ta chết đi rồi, mọi người khóc còn ta thì cười",
                    " Cuộc sống như một trang sách, kẻ điên sẽ giở qua nhanh chóng. Người khôn ngoan thì vừa đọc, vừa suy nghĩ vì biết rằng mình chỉ được đọc một lần.",
                    "Người đàn ông tình nguyện vì bạn mà theo đuổi mọi thứ chưa hẳn đã thật lòng yêu bạn, bởi vì thứ mà anh ta theo đuổi được không hẳn thuộc về bạn.",
                    "Nơi lạnh nhất không phải là Bắc cực mà là nơi không có tình người",
                    "Chúng ta thường đánh giá người khác theo tiêu chuẩn của mình nhưng rồi sau đó lại dành cả đời để sống theo tiêu chuẩn của người khác.",
                    "Đừng kể rắc rối của bạn cho bất cứ ai. 20% chẳng quan tâm, còn 80% thì vui mừng vì bạn gặp chuyện.","Cuộc sống rất đơn giản, nhưng chúng ta cứ bắt nó phải phức tạp",
                    "Một đứa trẻ hỏi Thượng đế: “Nếu mọi thứ đều đã được viết vào số mệnh vậy tại sao con phải ước?” Thượng đế mỉm cười và trả lời: “Có thể một số trang ta đã viết như con ước."]]
        
        quotes += [[" Hãy chậm rãi trong việc chọn bạn và càng chậm rãi trong việc thay bạn.","Hãy đếm tuổi của bạn bằng số bạn bè chứ không phải số năm. Hãy đếm cuộc đời bạn bằng nụ cười chứ không phải bằng nước mắt.",
                    " Bạn là người ta cảm thấy thoải mái khi ở cùng, ta sẵn lòng trung thành, đem lại cho ta lời chúc phúc và ta cảm thấy biết ơn vì có họ trong đời.",
                    "Ai cũng lắng nghe điều bạn phải nói. Bạn bè lắng nghe điều bạn nói. Bạn thân lắng nghe điều bạn không nói.",
                    "Không ai có thể hạnh phúc mà không có bạn bè, hay chắc chắn về bạn bè mình cho tới khi gặp bất hạnh.",
                    "Mất đi một người bạn cũng như mất đi một cánh tay. Thời gian có thể chữa lành nỗi đau nhưng sự thiếu hụt không bao giờ được lấp đầy."]]
        
        quotes += [["Hạnh phúc lớn nhất trên đời là niềm tin vững chắc rằng chúng ta được yêu – được yêu vì chính bản thân, hay đúng hơn được yêu bất chấp bản thân ta.",
            "Cuộc sống trở nên khó khăn hơn khi chúng ta sống vì người khác, nhưng nó cũng trở nên đẹp đẽ và hạnh phúc hơn.",
            "Thành công và hạnh phúc nằm trong bạn. Quyết tâm hạnh phúc, và niềm vui sẽ đi cùng bạn để hình thành đạo quân bất khả chiến bại chống lại nghịch cảnh.",
            "Làm điều bạn thích là tự do. Thích điều bạn làm là hạnh phúc.",
            "Thành công không phải là chìa khóa mở cánh cửa hạnh phúc. Hạnh phúc là chìa khóa dẫn tới cánh cửa thành công. Nếu bạn yêu điều bạn đang làm, bạn sẽ thành công."]]
        
        selectedIndex = generate(upper: quotes[quoteType].count)
        lblQuote.text = quotes[quoteType][selectedIndex]
        lblAuthor.text = authors[selectedIndex]
        imgViewBG.image = UIImage(named: "bg\(selectedIndex).jpg")
    }
}

