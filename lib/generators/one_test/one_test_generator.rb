#require 'rails/generators/test_unit'
#require 'rails/generators/base'
#require 'rails/generators/resource_helpers'
#
    class OneTestGenerator < Rails::Generators::Base # :nodoc:
    end
#
#      RESERVED_YAML_KEYWORDS = %w(y yes n no true false on off null)
#
#      argument :attributes, type: :array, default: [], banner: "field:type field:type"
#      class_option :fixture, type: :boolean
#
#      #check_class_collision suffix: "Test"
#
#      def create_test_file
#        template 'one_test_model.rb', File.join('test/models', class_path, "#{file_name}_test.rb")
#      end
#
#      hook_for :fixture_replacement
#      
#
#      def create_fixture_file
#        if options[:fixture] && options[:fixture_replacement].nil?
#          template 'fixtures.yml', File.join('test/fixtures', class_path, "#{fixture_file_name}.yml")
#        end
#      end
#
#      private
#        def yaml_key_value(key, value)
#          if RESERVED_YAML_KEYWORDS.include?(key.downcase)
#            "'#{key}': #{value}"
#          else
#            "#{key}: #{value}"
#          end
#        end
#    end
#  end
