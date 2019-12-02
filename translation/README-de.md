# CircleCI Orbs ![CircleCI status](https://circleci.com/gh/CircleCI-Public/circleci-orbs.svg?style=shield "CircleCI status") [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/circleci-public/circleci-orbs/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

- `circleci/aws-code-deploy`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/aws-code-deploy)](https://circleci.com/orbs/registry/orb/circleci/aws-code-deploy)
- `circleci/aws-s3`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/aws-s3)](https://circleci.com/orbs/registry/orb/circleci/aws-s3)
- `circleci/codecov-clojure`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov-clojure)](https://circleci.com/orbs/registry/orb/circleci/codecov-clojure)
- `circleci/codecov`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov)](https://circleci.com/orbs/registry/orb/circleci/codecov)
- `circleci/gradle`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/gradle)](https://circleci.com/orbs/registry/orb/circleci/gradle) 
- `circleci/heroku`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/heroku)](https://circleci.com/orbs/registry/orb/circleci/heroku)
- `circleci/lein-nvd`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/lein-nvd)](https://circleci.com/orbs/registry/orb/circleci/lein-nvd)
- `circleci/maven`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/maven)](https://circleci.com/orbs/registry/orb/circleci/maven)
- `circleci/rollbar`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/rollbar)](https://circleci.com/orbs/registry/orb/circleci/rollbar)

Der Quellcode für die Orbs die CircleCI veröffentlichten gemacht hat.

Einige Orbs haben ihre eigenen Repos unter der Organisation CircleCI-Public GitHub; Verwenden Sie das Themen-Tag "circleci-orbs", um die Quell-Repositorys für die veröffentlich Orbs von CircleCI anzuzeigen.

## Was sind Orbs?

Orbs sind Pakete mit CircleCI-Konfiguration, die projektübergreifend verwendet werden können. Mit Orbs können Sie ein einzelnes Bündel von Jobs, Befehlen und Ausführern erstellen, die aufeinander verweisen und in eine CircleCI-Build-Konfiguration importiert und in ihrem eigenen Namespace aufgerufen werden können. Orbs werden bei CircleCI registriert, wobei Revisionen anhand des SemVer-Musters ausgedrückt werden.

Auf [CircleCI.com](https://circleci.com/docs/2.0/orb-intro/) finden Sie zusätzliche Dokumentationen zu Orbs, einschließlich deren Verwendung und Erstellung.

## Orbs Veröffentlichen

Orbs werden der Registrierung über die CircleCI-API hinzugefügt. Der Build in diesem Repository (`.circleci / config.yml`) verwendet diese API über die [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli), um die Quelle der Kugeln im zu ermitteln `src` ordner und registriere sie als orbs.
To register an orb via the CLI you can point at a local file containing the YAML of the orb or pass the YAML of your orb to STDIN as a string.

`circleci orb publish $PATH_TO_FILE_WITH_ORB_YAML mynamespace/myorb@dev:mytag`

Weitere Informationen zur Verwendung der CLI finden Sie in der Hilfe zur Orb-Veröffentlichung in der CLI:

`circleci orb publish --help or -h`

TODO: Mit dem obigen Befehl wird standardmäßig der Hauptdienst circleci.com verwendet. Wenn Sie Orbs in einer Registrierung auf Ihrer privaten CircleCI-Serverinstallation veröffentlichen, können Sie Ihre Stammdomäne als Argument übergeben oder in Ihrer Datei `.circleci / config.yml` festlegen.

## Mitmachen

Wir freuen uns über [Issues](https://github.com/CircleCI-Public/circleci-orbs/issues) (Bugs oder Feature Requests) und [Pull Requests](https://github.com/CircleCI-Public/circleci-orbs/pulls)!

Alle Pull-Anforderungen werden anfänglich zu "Staging" zusammengefasst, wodurch automatische Entwicklerfreigaben für modifizierte Orbs ausgelöst werden und Open-Source-Autoren, die an Forks des Repositorys arbeiten, die Möglichkeit erhalten, ihre Codeänderungen zu testen. Sobald wir die Stabilität / Funktionalität von Modifikationen bestätigt haben (entweder manuell oder durch automatisierte Integrationstests), werden wir die Änderungen in "Staging" zu "Master" zusammenführen.
