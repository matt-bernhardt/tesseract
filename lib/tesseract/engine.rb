module Tesseract
  class Engine < ::Rails::Engine
    isolate_namespace Tesseract

    initializer "tesseract.assets.precompile" do |app|
      app.config.assets.precompile += %w( favicon.ico mitlib-wordmark.svg vi-shape7-tp.svg libraries-main.css )
    end
  end
end
