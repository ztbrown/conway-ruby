package ConwayRuby

import ConwayRuby.vcsRoots.*
import ConwayRuby.vcsRoots.ConwayRuby_GitRoot
import jetbrains.buildServer.configs.kotlin.v10.*
import jetbrains.buildServer.configs.kotlin.v10.Project
import jetbrains.buildServer.configs.kotlin.v10.projectFeatures.VersionedSettings
import jetbrains.buildServer.configs.kotlin.v10.projectFeatures.VersionedSettings.*
import jetbrains.buildServer.configs.kotlin.v10.projectFeatures.versionedSettings

object Project : Project({
    uuid = "c6094632-b3c0-42ee-a078-ba2929af265c"
    extId = "ConwayRuby"
    parentId = "_Root"
    name = "Conway Ruby"

    vcsRoot(ConwayRuby_GitRoot)

    features {
        versionedSettings {
            id = "PROJECT_EXT_4"
            mode = VersionedSettings.Mode.ENABLED
            buildSettingsMode = VersionedSettings.BuildSettingsMode.PREFER_SETTINGS_FROM_VCS
            rootExtId = ConwayRuby_GitRoot.extId
            showChanges = true
            settingsFormat = VersionedSettings.Format.KOTLIN
        }
    }
    buildType {
        uuid = "4f7019ef-4534-4a0d-90b9-3a59f86d2828"
        extId = "ConwayRuby_Build"
        name = "Build"

        vcs {
            root(ConwayRuby.vcsRoots.ConwayRuby_GitRoot)

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
    }
})
