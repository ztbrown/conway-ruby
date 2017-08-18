package ConwayRuby.vcsRoots

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.vcs.GitVcsRoot

object ConwayRuby_GitRoot : GitVcsRoot({
    uuid = "97b19678-9911-4955-b8d8-2a83bc77d253"
    extId = "ConwayRuby_GitRoot"
    name = "GitRoot"
    url = "https://github.com/ztbrown/conway-ruby"
    branchSpec = "+:refs/heads/*"
    authMethod = password {
        userName = "ztbrown"
        password = "zxx26086a353274e12401234e2e751d395fdd7b75023fce7ef1"
    }
})
