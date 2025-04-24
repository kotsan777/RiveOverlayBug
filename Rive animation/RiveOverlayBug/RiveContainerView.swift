//
//  RivewView.swift

import RiveRuntime
import UIKit

final class RiveContainerView: UIView {
    private var riveView = RiveView()
    
    // MARK: - Initializers
    override init(frame: CGRect = .zero) {
        super.init(frame: .zero)
        
        setupSubviews()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }
}

// MARK: - Setup Subviews
private extension RiveContainerView {
    private func setupSubviews() {
        addSubview(riveView)
    }
    
    private func setupConstraints() {
        riveView.snp.makeConstraints {
            $0.size.equalTo(50)
            $0.center.equalToSuperview()
        }
    }
}

// MARK: - Constants
private extension RiveContainerView {
    private enum Constants {
        static let riveFileName: String = "bell_icon_animation"
    }
}
