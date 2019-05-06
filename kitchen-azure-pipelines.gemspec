Gem::Specification.new do |s|
  s.name        = 'kitchen-azure-pipelines'
  s.version     = '0.5.0'
  s.date        = '2019-05-06'
  s.summary     = 'Generate an Azure Pipelines build template for Kitchen CI.'
  s.description = 'A simple hello world gem'
  s.authors     = ['Eric Hanko']
  s.email       = 'eric.hanko1@gmail.com'
  s.files       = ['azure-pipelines.yml.erb', 'azure_pipeline_generator.rb']
  s.license     = 'MIT'
end
