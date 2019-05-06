require_relative 'azure_pipeline_generator'

file 'azure-pipelines.yml' do |t|
  azure_pipelines_erb = AzurePipelineGenerator.render_template
  File.open(t.name, 'w+') do |f|
    f.write azure_pipelines_erb
  end
end

task build: 'azure-pipelines.yml'
