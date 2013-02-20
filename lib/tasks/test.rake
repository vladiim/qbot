task :test

namespace 'test' do

  desc 'integration tests'
  task :integration do
    test_files = Dir.glob("spec/integrations/**/*_spec.rb").each do |test_file|
      sh "ruby #{test_file}"
    end
  end

  desc 'database tests'
  task :db do
    test_files = Dir.glob("spec/db/*_spec.rb").each do |test_file|
      sh "ruby #{test_file}"
    end
  end

  desc 'unit tests'
  task :unit do
    test_files = Dir.glob("spec/models/*_spec.rb").each do |test_file|
      sh "ruby #{test_file}"
    end
  end
end

# def run_tests(type)
#   test_files = Dir.glob("test/#{type}/*_test.rb").each do |test_file|
#     sh "ruby #{test_file}"
#   end
# end