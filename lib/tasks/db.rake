namespace :db do
  desc "Dumps all models into fixtures."
  task dumpfixtures: :environment do
    models = Dir.glob(Rails.root.to_s + '/app/models/**.rb').map do |s|
      Pathname.new(s).basename.to_s.gsub(/\.rb$/,'').camelize
    end

    puts "Found models: " + models.join(', ')

    models.each do |m|
      model = m.constantize
      next unless model.ancestors.include?(ActiveRecord::Base)

      puts "Dumping model: " + m
      entries = model.unscoped.all.order('id ASC')

      increment = 1

      model_file = Rails.root.to_s + '/test/fixtures/' + m.underscore.pluralize + '.yml'
      File.open(model_file, 'w') do |f|
        entries.each do |a|
          attrs = a.attributes
          attrs.delete_if{|k,v| v.blank?}

          output = {m + '_' + increment.to_s => attrs}
          f << output.to_yaml.gsub(/^--- \n/,'') + "\n"

          increment += 1
        end
      end
    end
  end

end
