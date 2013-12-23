task :spec do
  Dir.glob("spec/**/*_spec.rb") do |spec|
    system("rspec #{spec}")
  end
end

task :default => :spec

