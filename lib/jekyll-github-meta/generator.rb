require "jekyll"
require "jekyll-site-config"
require "octokit"
require "faraday-http-cache"
require "json"

module JekyllGithubMeta
  class Generator < Jekyll::Generator
    def generate(site)
      stack = Faraday::RackBuilder.new do |builder|
        builder.use Faraday::HttpCache, serializer: Marshal, shared_cache: false
        builder.use Octokit::Response::RaiseError
        builder.adapter Faraday.default_adapter
      end
      Octokit.middleware = stack
      Octokit.auto_paginate = true
      client = Octokit::Client.new(:access_token => site.config["github_token"])
      repos = []
      client.repos.each do |repo|
        repos.push(JSON.parse(repo.attrs.to_json))
      end
      site.config["github_meta"] = {
        "user" => JSON.parse(client.user.attrs.to_json),
        "repos" => repos
      }
    end
  end
end
