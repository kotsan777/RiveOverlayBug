//
//  RiveOverlayBugViewController.swift

import RiveRuntime

final class RiveOverlayBugViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RiveTableViewCell.self, forCellReuseIdentifier: "RiveTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RiveTableViewCell") as! RiveTableViewCell
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
}

