# CircleCI Orbs ![CircleCI status](https://circleci.com/gh/CircleCI-Public/circleci-orbs.svg?style=shield "CircleCI status") [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/circleci-public/circleci-orbs/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

- `circleci/aws-s3`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/aws-s3)](https://circleci.com/orbs/registry/orb/circleci/aws-s3)
- `circleci/codecov-clojure`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov-clojure)](https://circleci.com/orbs/registry/orb/circleci/codecov-clojure)
- `circleci/codecov`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov)](https://circleci.com/orbs/registry/orb/circleci/codecov)
- `circleci/gradle`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/gradle)](https://circleci.com/orbs/registry/orb/circleci/gradle)
- `circleci/heroku`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/heroku)](https://circleci.com/orbs/registry/orb/circleci/heroku)
- `circleci/lein-nvd`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/lein-nvd)](https://circleci.com/orbs/registry/orb/circleci/lein-nvd)
- `circleci/maven`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/maven)](https://circleci.com/orbs/registry/orb/circleci/maven)
- `circleci/rollbar`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/rollbar)](https://circleci.com/orbs/registry/orb/circleci/rollbar)

Kode sumber untuk beberapa orbs yang diterbitkan oleh CircleCI.

Beberapa orbs memliki repo senidiri dibawah CircleCI-Public Github; [gunakan tanda tag   `circleci-orbs`](https://github.com/search?q=topic%3Acircleci-orbs+org%3ACircleCI-Public&type=Repositories) untuk melihat semua CircleCI-published orbs.

## Apa itu orbs?

Orbs adalah paket konfigurasi CircleCI yang dapat dibagikan di seluruh proyek. Orbs memungkinkan Anda untuk membuat satu bundel pekerjaan, perintah, dan pelaksana yang dapat saling referensi dan dapat diimpor ke konfigurasi build CircleCI dan dipanggil di namespace mereka sendiri. Orbs terdaftar di CircleCI, dengan revisi yang diekspresikan menggunakan pola semver.

Kamu dapat menemukan info lebih lanjut tentang orbs ,
termasuk bagaimana menggunakannya dan membuatnya di [repo ini](https://github.com/CircleCI-Public/config-preview-sdk/tree/v2.1/docs).

## Menerbitkan Orbs
Orbs ditambahkan ke registri melalui CircleCI API. Build dalam repositori ini (`.circleci/config.yml`) menggunakan API melalui [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli) untuk mengambil sumber orbs yang terletak di folder `src` dan mendaftarkannya sebagai orbs.

Untuk mendaftarkan orb melalui CLI, Anda dapat menunjuk ke file lokal yang berisi YAML dari orb tersebut atau meneruskan YAML dari orb Anda ke STDIN sebagai string.

`circleci orb publish $PATH_TO_FILE_WITH_ORB_YAML mynamespace/myorb@dev:mytag`

Untuk info lebih lanjut tentang penggunaan CLI, lihat bantuan tentang penerbitan orb di dalam CLI:

`circleci orb publish --help`

TODO: Di atas akan menggunakan layanan utama circleci.com secara default. Jika Anda menerbitkan orbs ke registri pada instalasi server CircleCI pribadi Anda, Anda dapat meneruskan domain root sebagai argumen atau dengan menyetelnya di file `.circleci / config.yml` Anda.

## Berkontribusi
Kami menyambut [issues](https://github.com/CircleCI-Public/circleci-orbs/issues) (bugs or feature requests) dan [pull requests](https://github.com/CircleCI-Public/circleci-orbs/pulls)!

Semua permintaan tarikan pada awalnya akan bergabung menjadi `staging`, memicu rilis dev otomatis dari setiap orb yang dimodifikasi dan memungkinkan kontributor sumber terbuka yang bekerja pada garpu repositori untuk menguji perubahan kode mereka. Setelah kami mengonfirmasi stabilitas / fungsionalitas modifikasi (melalui pengujian integrasi otomatis manual atau yang akan ditambahkan), kami akan menggabungkan perubahan dalam `staging` ke` master`.
