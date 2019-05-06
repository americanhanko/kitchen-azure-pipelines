require 'erb'
require 'yaml'

class AzurePipelineGenerator
  class << self
    def render_template
      template = File.join __dir__, 'azure-pipelines.yml.erb'
      render = ERB.new IO.read(template), safe_level = nil, trim_mode = '-', eoutvar = '_erbout'
      render.result binding
    end

    def kitchen_suites
      instances['suites']
    end

    def kitchen_platforms
      instances['platforms']
    end

    def kitchen_yaml
      File.join __dir__, '.kitchen.yml'
    end

    def instances
      k = IO.read kitchen_yaml
      YAML.load k
    end
  end
end
