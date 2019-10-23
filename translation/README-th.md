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

ซอร์สโค้ดสำหรับ orbs บางตัว ที่ถูกเผยแพร่โดย CircleCI

orbs บางตัวจะมี repos เป็นของตัวเองแต่จะอยู่ภายใต้องค์กร CircleCI-Public GitHub; [ซึ่งจะใช้แท็กว่า `circleci-orbs`](https://github.com/search?q=topic%3Acircleci-orbs+org%3ACircleCI-Public&type=Repositories) เพื่อดูแหล่งเก็บข้อมูลต้นฉบับสำหรับ orbs ที่เผยแพร่โดย CircleCI ทั้งหมด

## orbs อะไรคือ?

Orbs are packages of CircleCI configuration that can be shared across projects. Orbs allow you to make a single bundle of jobs, commands, and executors that can reference each other and can be imported into a CircleCI build configuration and invoked in their own namespace. Orbs are registered with CircleCI, with revisions expressed using the SemVer pattern.

Orbs เป็นแพ็คเกจในการกำหนดค่า CircleCI ที่สามารถแชร์ข้ามโปรเจ็กต์ได้ Orbs อนุญาตให้คุณสร้างกลุ่มงานคำสั่งและตัวดำเนินการที่สามารถอ้างอิงซึ่งกันและกันและสามารถนำเข้าสู่การกำหนดค่าการสร้าง CircleCI และเรียกใช้ในเนมสเปซของตนเอง Orb ได้รับการลงทะเบียนกับ CircleCI โดยมีการแก้ไขแสดงโดยใช้รูปแบบของ SemVer

You can find additional documentation detailing orbs, including how to use and create them, in [this repo](https://github.com/CircleCI-Public/config-preview-sdk/tree/master/docs).

คุณสามารถค้นหาเอกสารรายละเอียดเพิ่มเติมของ orbs รวมถึงวิธีการใช้งาน [ได้ที่น่ี่](https://github.com/CircleCI-Public/config-preview-sdk/tree/master/docs).

## Publishing Orbs
Orbs are added to the registry through the CircleCI API. The build in this repository (`.circleci/config.yml`) uses that API via the [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli) to take the source of orbs located in the `src` folder and register them as orbs.

To register an orb via the CLI you can point at a local file containing the YAML of the orb or pass the YAML of your orb to STDIN as a string.

## การเผยแพร่ Orbs
Orbs ถูกเพิ่มเข้าไปในรีจิสทรีผ่าน CircleCI API จะทำการสร้างภายไฟล์นี้ (`.circleci/config.yml`) โดยจะต้องใช้ผ่าน API [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli) เพื่อใช้แหล่งที่มาของ orbs ที่อยู่ใน `src` โฟลเดอร์และลงทะเบียนเป็น orbs

สำหรับการลงทะเบียน orb ผ่าน CLI คุณสามารถชี้ไปที่ไฟล์ local ที่เป็นไฟล์ YAML ของ orb ด้วยคำสั่งด้านล่างนี้

`circleci orb publish $PATH_TO_FILE_WITH_ORB_YAML mynamespace/myorb@dev:mytag`

สำหรับข้อมูลเพิ่มเติมเกี่ยวกับการใช้งาน CLI สามารถดูได้จากคำสั่งด้านล่างนี้:

`circleci orb publish --help or -h`

TODO: The above will default to use the main circleci.com service. If you are publishing orbs to a registry on your private CircleCI server installation you can pass your root domain in as an argument or by setting it in your  file.

สิ่งที่ต้องทำ: ค่าเริ่มต้นจะใช้บริการหลักของ circleci.com หากคุณกำลังเผยแพร่ orbs ไปที่รีจิสตรีในการติดตั้งเซิร์ฟเวอร์ CircleCI ส่วนตัวของคุณคุณสามารถส่งโดเมนรูทของคุณเป็นอาร์กิวเมนต์หรือโดยการตั้งค่าในไฟล์ `.circleci/config.yml`

## Contributing
We welcome [issues](https://github.com/CircleCI-Public/circleci-orbs/issues) (bugs or feature requests) and [pull requests](https://github.com/CircleCI-Public/circleci-orbs/pulls)!

## สนับสนุน
เรายินดีต้อนรับ [ปัญหา](https://github.com/CircleCI-Public/circleci-orbs/issues) (ข้อบกพร่องหรือการร้องขอคุณสมบัติ) และ [คำขอดึง] (https://github.com/CircleCI-Public/circleci-orbs/pulls)!

All pull requests will initially merge to `staging`, triggering automatic dev releases of any modified orbs and allowing open-source contributors working on forks of the repository to test out their code changes. Once we have confirmed the stability/functionality of modifications (via either manual or to-be-added automated integration testing), we will merge the changes in `staging` to `master`.

สำหรับคำขอ (Pull Request) ทั้งหมดจะถูกนำมารวมกันที่ `staging` โดยจะถูกนำมารวมกันโดยอัตโนมัติเมื่อผู้พัฒนาได้ทำการแก้ไข orbs และอนุญาตให้ทำการแก้ไขผ่าน repository ที่ทำการ forks เพื่อทำการทดสอบสำหรับการเปลี่ยนแปลง และเมื่อเราได้ทำการยืนยันความเสถียร / ฟังก์ชั่นของการดัดแปลง (ผ่านการทดสอบการรวมอัตโนมัติ) เราจะรวมการเปลี่ยนแปลงใน `staging` เป็น `master`
