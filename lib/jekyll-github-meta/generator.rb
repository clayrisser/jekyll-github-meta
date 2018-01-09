require "jekyll"
require "jekyll-site-config"
require "octokit"

module JekyllGithubMeta
  class Generator < Jekyll::Generate
    def generate(site)
      client = Octokit::Client.new(:access_token => site.config["github_token"])
      user = client.user
      github_meta = {
        "user" => {
          "name" => user.name
        }
      }
      JekyllSiteConfig.set_config("github_meta", github_meta)
    end
  end
end
