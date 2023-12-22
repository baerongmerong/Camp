//
//  Cells.swift
//  My todo List check
//
//  Created by Bae on 12/21/23.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var doneSwitch: UISwitch!

    var todo: Todo?
    
    @IBAction func switchChanged(_ sender: Any) {
        guard let todo else { return }
        if doneSwitch.isOn {
            textLabel?.text = nil
            textLabel?.attributedText = todo.title.strikeThrough()
        } else {
            textLabel?.attributedText = nil
            textLabel?.text = todo.title
        }
    }
    
    func setTask(_ _todo: Todo) {
        todo = _todo
        guard let todo else { return }
        if todo.isCompleted {
            textLabel?.text = nil
            textLabel?.attributedText = todo.title.strikeThrough()
        } else {
            textLabel?.attributedText = nil
            textLabel?.text = todo.title
        }
        doneSwitch.isOn = todo.isCompleted
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
