module Blog
  class Engine < ::Rails::Engine
    isolate_namespace Blog

    initializer 'blog.asset_precompile_paths' do |app|
    	app.config.assets.precompile += ["blog/manifests/*"]
    end

  end
end
