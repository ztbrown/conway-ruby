package ConwayRuby.buildTypes

import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.ScriptBuildStep.*
import jetbrains.buildServer.configs.kotlin.v10.buildSteps.script

object ConwayRuby_Ruby : Template({
    uuid = "b4c0b4cb-bb2c-4b08-aac0-dfb1738d0159"
    extId = "ConwayRuby_Ruby"
    name = "Ruby"

    steps {
        script {
            name = "Bundle / Unit Test"
            id = "RUNNER_2"
            scriptContent = "bundle install && rspec spec"
        }
    }
})
