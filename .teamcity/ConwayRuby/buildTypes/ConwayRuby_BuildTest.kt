package ConwayRuby.buildTypes

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.script

object ConwayRuby_BuildTest : BuildType({
    uuid = "5342d256-92db-46f0-a031-bd702493ffc6"
    extId = "MyProject_Build"
    name = "Build"

    steps {
        script {
            bundle install && rspec spec
        }
    }
})
