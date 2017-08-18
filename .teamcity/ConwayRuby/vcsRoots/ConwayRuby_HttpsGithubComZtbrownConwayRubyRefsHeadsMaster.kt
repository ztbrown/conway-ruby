package ConwayRuby.vcsRoots

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.vcs.GitVcsRoot

object ConwayRuby_HttpsGithubComZtbrownConwayRubyRefsHeadsMaster : GitVcsRoot({
    uuid = "9573bccc-9918-4e8d-9b5d-954c18acb0c3"
    extId = "ConwayRuby_HttpsGithubComZtbrownConwayRubyRefsHeadsMaster"
    name = "https://github.com/ztbrown/conway-ruby#refs/heads/master"
    url = "https://github.com/ztbrown/conway-ruby"
    branchSpec = "+:refs/heads/*"
    authMethod = password {
        userName = "ztbrown"
        password = "zxxd6aae2b36e2a803c45347a95c1ede63b2597f6e70b055896ed0f70419eecdbb8f280252fa33bad23775d03cbe80d301b"
    }
})
