class Application < MG::Application
  def start
    director = MG::Director.shared
    size = director.size
    director.glview.design_resolution_size(700, 1200, MG::ResolutionPolicy::SHOW_ALL)
    director.content_scale_factor = 1.0
    director.run(MG::GameScene.new)
  end

  def resume
    # Will be called when app will move to active state from background.
  end

  def pause
    # Will be called when app will move to background from active state.
  end
end
