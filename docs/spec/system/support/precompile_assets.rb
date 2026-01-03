# frozen_string_literal: true

# Helper to check if Tailwind is running
module Tailwind
  def self.running_in_current_directory?
    pids = `pgrep -f tailwindcss`.split("\n").map(&:to_i)
    return false if pids.empty?

    current_dir = Dir.pwd
    pids.any? do |pid|
      cwd = `lsof -p #{pid} 2>/dev/null | grep cwd`.strip
      cwd.include?(current_dir)
    rescue StandardError
      false
    end
  end
end

RSpec.configure do |config|
  config.before(:suite) do
    unless ENV["CI"] || ENV["GITHUB"]
      examples = RSpec.world.filtered_examples.values.flatten
      has_no_system_tests = examples.none? do |example|
        example.metadata[:type].in?([:system, :controller, :request])
      end

      if has_no_system_tests
        $stdout.puts "\n🚀️️  No system test selected. Skip assets compilation.\n"
        next
      end

      # Find tailwindcss processes and check if they're running in the current directory
      if Tailwind.running_in_current_directory?
        $stdout.puts "\n💨  Tailwind already running. Skip assets compilation.\n"
      else
        original_stdout = $stdout.clone
        start = Time.current

        $stdout.reopen(File.new(File::NULL, "w"))
        $stdout.puts "\n🐢  Precompiling assets.\n"
        system("bun run build:css &> /dev/null")

        $stdout.reopen(original_stdout)
        $stdout.puts "Finished in #{(Time.current - start).round(2)} seconds"
      end
    end
  end

  config.after(:suite) do
    if ENV["CI"].blank? && ENV["GITHUB"].blank? && !Tailwind.running_in_current_directory?
      $stdout.puts "\n🐇  Clobbering assets.\n"
      system(<<~SH)
        bin/rails assets:clobber &&
          touch app/assets/stylesheets/application.tailwind.css
      SH
    end
  end
end
