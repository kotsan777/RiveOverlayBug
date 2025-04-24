use_frameworks!

platform :ios, '15.0'

target 'Rive animation' do
  pod 'RiveRuntime', '6.5.3'
  pod 'SnapKit', '5.7.1'
end

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
            end
        end
    end
end
