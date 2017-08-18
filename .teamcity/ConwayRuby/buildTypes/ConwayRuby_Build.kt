package ConwayRuby.buildTypes

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.script
import jetbrains.buildServer.configs.kotlin.v10.triggers.VcsTrigger
import jetbrains.buildServer.configs.kotlin.v10.triggers.VcsTrigger.*
import jetbrains.buildServer.configs.kotlin.v10.triggers.vcs

object ConwayRuby_Build : BuildType({
    uuid = "4f7019ef-4534-4a0d-90b9-3a59f86d2828"
    extId = "ConwayRuby_Build"
    name = "Build"

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
