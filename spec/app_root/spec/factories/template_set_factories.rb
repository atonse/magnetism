Factory.define :template_set do |f|
  f.sequence(:name) { |n| "Template Set Name - #{n}" }
end
