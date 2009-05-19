# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jcommons-rack-upload}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charles Lowell"]
  s.date = %q{2009-05-19}
  s.description = %q{Use Apache Commons File upload with a rack environment to handle upload file streams}
  s.email = ["cowboyd@thefrontside.net"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/jcommons/rack_upload.rb", "lib/jcommons/native", "lib/jcommons/native/commons-fileupload-1.2.jar", "lib/jcommons/native/commons-io-1.3.1.jar", "lib/jcommons/native/servlet-api-2.3.jar", "script/console", "script/destroy", "script/generate", "spec/jcommons-rack-upload_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake"]
  s.homepage = %q{http://github.com/cowboyd/jcommons-rack-upload}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jcommons-rack-upload}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Use Apache Commons File upload with a rack environment to handle upload file streams}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_development_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<newgem>, [">= 1.4.1"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
