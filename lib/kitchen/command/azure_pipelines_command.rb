require "kitchen/command"

module Kitchen
  module Command
    class AzurePipelines < Kitchen::Command::Base
      def call
        error("Could not generate azure-pipelines.yml")
      end
    end
  end
end
