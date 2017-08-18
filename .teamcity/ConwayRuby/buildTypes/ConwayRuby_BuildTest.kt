package ConwayRuby.buildTypes

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.script
import jetbrains.buildServer.configs.kotlin.v10.triggers.VcsTrigger
import jetbrains.buildServer.configs.kotlin.v10.triggers.VcsTrigger.*
import jetbrains.buildServer.configs.kotlin.v10.triggers.vcs

object ConwayRuby_BuildTest : BuildType({
    uuid = "8c094c6e-2665-4fe1-80af-eb7c83b26523"
    extId = "ConwayRuby_BuildTest"
    name = "Build / Test"

    vcs {
        root(ConwayRuby.vcsRoots.ConwayRuby_HttpsGithubComZtbrownConwayRubyRefsHeadsMaster)

    }

    steps {
        script {
            scriptContent = "bundle install && rspec spec"
        }
    }

    triggers {
        vcs {
        }
    }
})
