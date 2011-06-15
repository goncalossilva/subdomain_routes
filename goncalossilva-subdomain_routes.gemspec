# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{goncalossilva-subdomain_routes}
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthew Hollingworth", "Akihiro Matsumura", "Goncalo Silva"]
  s.date = %q{2011-06-15}
  s.description = %q{      SubdomainRoutes add subdomain conditions to the Rails routing system. Routes may be restricted to
      one or many specified subdomains. An URL will be recognised only if the host subdomain matches the
      subdomain specified in the route. Route generation is also enhanced, so that the subdomain of a
      generated URL (or path) will be changed if the requested route has a different subdomain to that of
      the current request. Model-based subdomain routes can also be defined.
}
  s.email = %q{goncalossilva@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.textile"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.textile",
    "Rakefile",
    "VERSION.yml",
    "history.txt",
    "lib/subdomain_routes.rb",
    "lib/subdomain_routes/assertions.rb",
    "lib/subdomain_routes/config.rb",
    "lib/subdomain_routes/mapper.rb",
    "lib/subdomain_routes/request.rb",
    "lib/subdomain_routes/resources.rb",
    "lib/subdomain_routes/routes.rb",
    "lib/subdomain_routes/split_host.rb",
    "lib/subdomain_routes/url_writer.rb",
    "lib/subdomain_routes/validations.rb",
    "rails/init.rb",
    "spec/assertions_spec.rb",
    "spec/extraction_spec.rb",
    "spec/mapping_spec.rb",
    "spec/recognition_spec.rb",
    "spec/resources_spec.rb",
    "spec/routes_spec.rb",
    "spec/spec_helper.rb",
    "spec/test_unit_matcher.rb",
    "spec/url_writing_spec.rb",
    "spec/validations_spec.rb",
    "subdomain_routes.gemspec"
  ]
  s.homepage = %q{http://github.com/goncalossilva/subdomain_routes}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A Rails library for incorporating subdomains into route generation and recognition.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, ["~> 2.3.9"])
    else
      s.add_dependency(%q<actionpack>, ["~> 2.3.9"])
    end
  else
    s.add_dependency(%q<actionpack>, ["~> 2.3.9"])
  end
end

