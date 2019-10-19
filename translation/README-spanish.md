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

El código fuente de algunos de los orbes publicados por CircleCI.

Algunos orbes tienen sus propios repositorios bajo la organización CircleCI-Public GitHub; [use the `circleci-orbs` topic tag](https://github.com/search?q=topic%3Acircleci-orbs+org%3ACircleCI-Public&type=Repositories) para ver repositorios de origen para todos los orbes publicados por CircleCI

## ¿Qué son los orbes?

Los orbes son paquetes de configuración CircleCI que se pueden compartir entre proyectos. Los orbes le permiten crear un solo paquete de trabajos, comandos y ejecutores que pueden referenciarse entre sí y pueden importarse a una configuración de compilación CircleCI e invocarse en su propio espacio de nombres. Los orbes están registrados con CircleCI, con revisiones expresadas utilizando el patrón SemVer.

Puede encontrar documentación adicional que detalla orbes, incluido cómo usarlos y crearlos, en [este repositorio](https://github.com/CircleCI-Public/config-preview-sdk/tree/master/docs).

## Orbes de publicación
Los orbes se agregan al registro a través de la API CircleCI. La compilación en este repositorio (`.circleci/config.yml`) usa esa API a través de [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli) para tomar la fuente de orbes ubicados en la carpeta `src` y registrarlos como orbes.

Para registrar un orbe a través de la CLI, puede apuntar a un archivo local que contenga el YAML del orbe o pasar el YAML de su orbe a STDIN como una cadena.

`circleci orb publish $PATH_TO_FILE_WITH_ORB_YAML mynamespace/myorb@dev:mytag`

Para obtener más información sobre el uso de la CLI, consulte la ayuda sobre la publicación de orbes dentro de la CLI:

`circleci orb publish --help or -h`

TODO: lo anterior usará de manera predeterminada el servicio principal circleci.com. Si está publicando orbes en un registro en su instalación privada del servidor CircleCI, puede pasar su dominio raíz como argumento o configurándolo en su `.circleci/config.yml` archivo.

## Contribuyendo
¡Damos la bienvenida a [issues](https://github.com/CircleCI-Public/circleci-orbs/issues) (errores o solicitudes de funciones) y [pull requests](https://github.com/CircleCI-Public/circleci-orbs/pulls)!


Todas las solicitudes de extracción se fusionarán inicialmente con la "staging", lo que desencadenará lanzamientos de desarrollo automáticos de cualquier orbe modificado y permitirá a los contribuyentes de código abierto que trabajan en los tenedores del repositorio probar sus cambios de código. Una vez que hayamos confirmado la estabilidad / funcionalidad de las modificaciones (ya sea a través de pruebas de integración automatizadas manuales o que se agregarán), fusionaremos los cambios en `staging` a` master`.
