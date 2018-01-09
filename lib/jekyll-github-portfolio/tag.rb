module JekyllGithubPortfolio
  class Tag < Liquid::Tag
    def render(context)
      "wow baby"
    end
  end
end

Liquid::Template.register_tag('github_portfolio', JekyllGithubPortfolio::Tag)
