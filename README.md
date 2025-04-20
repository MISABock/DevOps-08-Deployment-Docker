# DevOps 07 CI2

## Lernjournal

Als erstes habe ich den Shell-Befehle für Sonar Analyse ins CMD eingeben damit das Project auf Sonar verfügbar ist und analysiert wird. (![SonarBackendCMD](images/SonarBackendCMD.png)) (![SonarBackendLocalhost](images/SonarBackendLocalhost.png))

Das gleiche fürs Frontend: (![SonarFrontendCMD](images/SonarFrontendCMD.png)) (![SonarFrontendLLocalhost](images/SonarFrontendLLocalhost.png))


Als nächstes habe ich auf Jenkins eine Pipeline angelegt: (![JenkinsPipeline](images/JenkinsPipeline.png)) (![JenkinsPipileConf](images/JenkinsPipileConf.png))

Mit einem Build dann geprüft ob alles funktioniert soweit: (![PipelineBuildCheck](images/PipelineBuildCheck.png))

Als nächstes habe ich eine neue Cloud erstellt: (![JenkisnCloud](images/JenkisnCloud.png)) (![JenkinsCloudConfig](images/JenkinsCloudConfig.png))

Auf folgenden Logs sieht man, dass die Applikation auf der Jenkins Cloud läuft: (![RunningOnJenkinsCloud](images/RunningOnJenkinsCloud.png) (![PipelineOnDockerAgent](images/PipelineOnDockerAgent.png)