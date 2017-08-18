package ConwayRuby

import ConwayRuby.buildTypes.*
import ConwayRuby.vcsRoots.*
import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.Project

object Project : Project({
    uuid = "c6094632-b3c0-42ee-a078-ba2929af265c"
    extId = "ConwayRuby"
    parentId = "_Root"
    name = "Conway Ruby"

    vcsRoot(ConwayRuby_HttpsGithubComZtbrownConwayRubyRefsHeadsMaster)

    buildType(ConwayRuby_BuildTest)

    template(ConwayRuby_Ruby)
    steps {
        script {
            bundle install
            rspec spec
        }
    }
})
