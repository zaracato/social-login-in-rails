# lib/generators/all/scaffold/scaffold_generator.rb
require 'rails/generators/erb'
require 'rails/generators/named_base'
require 'rails/generators/resource_helpers'

module Partial # :nodoc:
  module Generators # :nodoc:
    class ScaffoldGenerator < Rails::Generators::NamedBase # :nodoc:
      include Rails::Generators::ResourceHelpers

      source_root File.join(Rails.root, 'lib', 'templates', 'scaffold', File::SEPARATOR)

      argument :attributes, type: :array, default: [], banner: "field:type field:type"
      

      def create_root_folder
        empty_directory File.join("app/views", controller_file_path)
      end
      

      def copy_view_files
        generate_locales()
        available_views.each do |view|
          template view, File.join("app/views", controller_file_path, view)
        end
      end

    protected
      def available_views
        # use all template files contained in source_root ie 'lib/templates/scaffold/**/*'
        base = self.class.source_root
        base_len = base.length
        Dir[File.join(base, '**', '*')].select { |f| File.file?(f) }.map{|f| f[base_len..-1]}
      end
      
      def locales
        tab6 = 6.times.map{' '}.join 
        tab8 = tab6 + '  '
        
        str = "\n#{tab6}#{singular_table_name}:\n"
        atts = attributes.reject(&:password_digest?).map do |attribute|
          tab8 + attribute.name + ': "' + attribute.name.capitalize + '"'
        end
        str + atts.join("\n")
      end
      
      def model_name
        tab6 =  '      '
        tab4 =  '    '
        
        str = tab6
        str += singular_table_name
        str += ': "'
        str += singular_table_name 
        str += "\"\n"
        
        str += tab6
        str += plural_table_name
        str += ': "'
        str += plural_table_name 
        str += "\"\n"
        
        str += tab4
        str += "attributes:"
        str
      end
      
      def generate_locales
        sustitution = "    attributes:"
        gsub_file 'config/locales/activerecord.es.yml', sustitution, model_name()
        gsub_file 'config/locales/activerecord.en.yml', sustitution, model_name()
        
        append_file 'config/locales/simple_form.es.yml',  locales()
        append_file 'config/locales/simple_form.en.yml',  locales()
        append_file 'config/locales/activerecord.es.yml', locales()
        append_file 'config/locales/activerecord.en.yml', locales()
      end   
    end
  end
end