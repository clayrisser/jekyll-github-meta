module Jekyll
  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['github_token'] = ENV['GITHUB_TOKEN'] || 'development'
    end
  end
end
