require "yaml"

module Alfredo
  class Settings
    attr_reader :path

    def initialize(path: "settings.yml")
      @path = path
      @yaml = YAML.load_file(@path)
      define_methods_by_keys
    end

    def [](key)
      @yaml[key]
    end

    def []=(key, value)
      @yaml[key] = value
      save!
    end

    def all
      @yaml
    end

    private

    def save!
      File.open("w", @path) do |file|
        file.puts @yaml.to_yaml
      end
    end

    def define_methods_by_keys
      @yaml.keys.each do |key|
        define_singleton_method(key) do
          @yaml[key]
        end

        define_singleton_method("#{key}=") do |value|
          @yaml[key] = value
          save!
        end
      end
    end
  end
end
