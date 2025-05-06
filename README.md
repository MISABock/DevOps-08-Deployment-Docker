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

Ich habe im Projekt einen weiteren Build Step hinzugefügt damit von meinem soeben erstelltem Image bei starten des Jenkins-Prozess der Container gestartet wird: (![BuildStepCreateContainerFormCustomImage](images/DocBuildStepCreateContainerFormCustomImagekerImageCreated.png))


Zusätzlich noch das Port-Binding definiert: (![PortForContainer](images/PortForContainer.png))

Um die Container ID des letzten Schrittes zu erfahren, habe ich noch folgendes Implementiert, damit mir die ContainerID beim build immer wieder gezeigt wird.  (![ShowDockerId](images/ShowDockerId.png))

Ich habe nochmals den container Namen angepasst und das so das Build konfiguriert, dass das Build auf einen Freien Platz auf Port 3000 warten soll: (![waitFor3000](images/waitFor3000.png))

letztlich habe ich dann noch definiert, dass zuerst das image gebaut werden soll und erst dannach der Job des Docker Deployement getriggered werden soll: (![BuildFirstThanDockerDeploy](images/BuildFirstThanDockerDeploy.png))

mit localhost:3001 habe ich dann geprüft, ob die App läuft: (![RunningOn3001](images/RunningOn3001.png))
(![RunningOn3000Logs](images/RunningOn3000Logs.png))