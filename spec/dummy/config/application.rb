# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.load_defaults Rails::VERSION::STRING.to_f
    config.api_only = true

    # ActiveStorage config
    config.active_storage.variant_processor = :mini_magick
    config.active_storage.analyzers = []
  end
end
