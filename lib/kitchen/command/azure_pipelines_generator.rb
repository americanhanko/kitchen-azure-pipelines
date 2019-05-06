require 'erb'
require 'yaml'
require 'kitchen/command'

module Kitchen
  module Command
    # Command to generate the azure-pipelines.yml file
    class AzurePipelineGenerator < Kitchen::Command::Base
      def call
        azure_pipelines_erb = render_template
        File.open(t.name, 'w+') do |f|
          f.write azure_pipelines_erb
        end
      end

      def render_template
        template = File.join __dir__, 'templates', 'azure-pipelines.yml.erb'
        content = IO.read template
        render = ERB.new content,
                         safe_level = nil,
                         trim_mode = '-',
                         eoutvar = '_erbout'
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
        YAML.safe_load k
      end
    end
  end
end
