Pod::Spec.new do |s|
  s.name             = "EPShapes"
  s.version          = "1.0.0"
  s.summary          = "Design shapes(polygons, hearts, arrows, stars) in Interface builder"

  s.description      = <<-DESC
1. Design shapes in interface builder using IBInspectable and IBDesignable Protocols
2. UIBezierPath extensions that can easily draw polygons, stars, arrows and hearts
3. Designable classes that can be used with custom views
4. Support for creating programmatically
5. Scale shapes
6. Apply extursions for stars to generate star shapes
7. Equilateral Polygons with 'n' number of shapes can be designed directly from IB/ Storyboards

DESC

  s.homepage         = "https://github.com/ipraba/EPShapes"
  s.license          = 'MIT'
  s.author           = { "Prabaharan" => "mailprabaharan.e@gmail.com" }
  s.source           = { :git => "https://github.com/ipraba/EPShapes.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
#s.resource_bundles = {
#    'EPShapes' => ['Pod/Assets/*.png']
#  }

end
