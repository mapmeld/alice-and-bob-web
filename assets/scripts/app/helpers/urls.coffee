@Travis.Urls =
  plainTextLog: (id) ->
    "#{Travis.config.api_endpoint}/jobs/#{id}/log.txt?deansi=true"

  githubPullRequest: (slug, pullRequestNumber) ->
    "https://github.com/#{slug}/pull/#{pullRequestNumber}"

  githubCommit: (slug, sha) ->
    "https://github.com/#{slug}/commit/#{sha}"

  githubRepo: (slug) ->
    "https://github.com/#{slug}"

  githubWatchers: (slug) ->
    "https://github.com/#{slug}/watchers"

  githubNetwork: (slug) ->
    "https://github.com/#{slug}/network"

  githubAdmin: (slug) ->
    "https://github.com/#{slug}/settings/hooks#travis_minibucket"

  statusImage: (slug, branch) ->
    "#{location.protocol}//#{location.host}/#{slug}.svg" + if branch then "?branch=#{branch}" else ''

  ccXml: (slug) ->
    "#{Travis.config.api_endpoint}/repos/#{slug}/cc.xml"

  email: (email) ->
    "mailto:#{email}"

  gravatarImage: (email, size) ->
    "https://www.gravatar.com/avatar/#{md5(email)}?s=#{size}&d=#{encodeURIComponent(Travis.config.avatar_default_url)}"
