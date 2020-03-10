class GenerateCustomStyle < ApplicationRecord
    attr_reader :custom_style, :body, :env, :filename, :scss_file

    def initialize(style_id)  
      @custom_style = Style.find(style_id)
      @filename = "#{custom_style.user_id}_#{custom_style.updated_at.to_i}"
      @scss_file = File.new(scss_file_path, 'w')
      @body = ERB.new(File.read(template_file_path)).result(binding)
      @env = Rails.application.assets
    end

    def scss_file_path
        @scss_file_path ||= File.join(scss_tmpfile_path, "#{filename}.scss")
    end

    def scss_tmpfile_path  
    @scss_file_path ||= File.join(Rails.root, 'tmp', 'generate_css')
        unless File.exists?(@scss_file_path)
            FileUtils.mkdir_p(@scss_file_path) 
        end
    @scss_file_path
    end

    def template_file_path  
        @template_file_path ||= File.join(Rails.root, 'app', 'assets', 'stylesheets', '_template.scss.erb')
      end
end