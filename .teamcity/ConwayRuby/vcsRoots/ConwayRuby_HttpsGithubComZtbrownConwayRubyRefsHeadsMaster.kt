package ConwayRuby.vcsRoots

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.vcs.GitVcsRoot

object ConwayRuby_HttpsGithubComZtbrownConwayRubyRefsHeadsMaster : GitVcsRoot({
    uuid = "dd0912bf-a904-4af4-a1e1-0dd0c95b0211"
    extId = "ConwayRuby_HttpsGithubComZtbrownConwayRubyRefsHeadsMaster"
    name = "https://github.com/ztbrown/conway-ruby#refs/heads/master"
    url = "https://github.com/ztbrown/conway-ruby"
    authMethod = password {
        userName = "ztbrown"
        password = "zxxd6aae2b36e2a803c45347a95c1ede63b2597f6e70b055896ed0f70419eecdbb8f280252fa33bad23775d03cbe80d301b"
    }
})
