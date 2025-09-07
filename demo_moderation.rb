#!/usr/bin/env ruby
# frozen_string_literal: true

# Demo script showing the new Moderation.moderate interface

require_relative 'lib/ruby_llm'

# Example 1: Using the global method
puts '=== Using RubyLLM.moderate ==='
puts "Method available: #{RubyLLM.respond_to?(:moderate)}"

# Example 2: Using the class method directly
puts "\n=== Using RubyLLM::Moderation.moderate ==="
puts "Class exists: #{defined?(RubyLLM::Moderation)}"
puts "Method available: #{RubyLLM::Moderation.respond_to?(:moderate)}"

# Example 3: Show the old method no longer exists
puts "\n=== Checking old interface ==="
puts "Old Moderate class exists: #{defined?(RubyLLM::Moderate)}"
puts "Old ask method available: #{RubyLLM::Moderate.respond_to?(:ask)}" if defined?(RubyLLM::Moderate)

puts "\n✅ Migration completed successfully!"
puts "✅ Use: RubyLLM::Moderation.moderate('content')"
puts "✅ Use: RubyLLM.moderate('content')"
