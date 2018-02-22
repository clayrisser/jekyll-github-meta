lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-github-meta/version"
Gem::Specification.new do |spec|
  spec.name          = "jekyll-github-meta"
  spec.summary       = "Add meta data from GitHub account to site config"
  spec.description   = "Add meta data from GitHub account to site config"
  spec.version       = JekyllGithubMeta::VERSION
  spec.authors       = ["Jam Risser"]
  spec.email         = ["jam@jamrizzi.com"]
  spec.homepage      = "https://github.com/jamrizzi/jekyll-github-meta"
  spec.licenses      = ["MIT"]
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!)  }
  spec.require_paths = ["lib"]
  spec.add_dependency "jekyll", "~> 3.0"
  spec.add_dependency "octokit", "~> 4.8"
  spec.add_dependency "jekyll-site-config", "~> 0.1"
  spec.add_dependency "faraday-http-cache", "~> 2.0"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "rubocop", "~> 0.52"
end
