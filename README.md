# DevOps 08 Docker

## Lernjournal





Als erstes habe ich die Repo geändert und das Docker build step Plugin installiert 

(![DockerBuildPluggin](images/DockerBuildPluggin.png))

Als weiteres habe ich ein neues Freestyle-Projekt eröffnet mit Git Version Control 
![newFreestyleProject](images/newFreestyleProject.png) https://github.com/zhaw-iwi/DevOpsNodeWebApp

Als nächstes habe ich den Docker Builder konfiguriert und die Verbindung zum tcp 2375 geprüft:  (![DockerConfig](images/DockerConfig.png))


Desweiteren den Buildstep des Docker Images damit dieses erstellt wird: (![BuildDockerImage](images/BuildDockerImage.png))

Nachdem starten des Build-Prozesses auf Jenkins konnte ich übers cmd sehen, dass mein image erfolgreicch erstellt wurde: 
(![DockerImageCreated](images/DockerImageCreated.png))