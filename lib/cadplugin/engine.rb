Gem.loaded_specs['cadplugin'].dependencies.each do |d|
 require d.name
end

module Cadplugin
  class Engine < ::Rails::Engine
    isolate_namespace Cadplugin
  end
end
