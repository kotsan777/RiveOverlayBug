//
//  RiveTableViewCell.swift

import SnapKit
import UIKit

final class RiveTableViewCell: UITableViewCell {
    private let riveContainerView = RiveContainerView()
    
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        setupView()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }
}


extension RiveTableViewCell {
    private func setupView() {
        contentView.addSubview(riveContainerView)
    }
    
    private func setupConstraints() {
        riveContainerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.size.equalTo(52.0)
        }
    }
}
