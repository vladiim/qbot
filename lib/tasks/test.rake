task :test

namespace 'test' do
  INTEGRATION_FILES = "#{Dir.pwd}/spec/integrations/**/*_spec.rb"
  RECORD_FILES      = "#{Dir.pwd}/spec/records/*_spec.rb"
  UNIT_FILES        = "#{Dir.pwd}/spec/models/**/*_spec.rb"

  desc 'integration specs'
  task :integrations do
    sh "rspec #{INTEGRATION_FILES}"
  end

  desc 'records structure specs'
  task :records do
    sh "rspec #{RECORD_FILES}"
  end

  desc 'slow ass specs'
  task :slow do
    sh "rspec #{INTEGRATION_FILES} #{RECORD_FILES}"
  end

  desc 'unit specs'
  task :unit do
    sh "rspec #{UNIT_FILES}"
  end
end

# def run_tests(type)
#   test_files = Dir.glob("test/#{type}/*_test.rb").each do |test_file|
#     sh "ruby #{test_file}"
#   end
# end