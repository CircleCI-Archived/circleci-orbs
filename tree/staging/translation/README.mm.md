# CircleCI Orbs ![CircleCI status](https://circleci.com/gh/CircleCI-Public/circleci-orbs.svg?style=shield "CircleCI status") [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/circleci-public/circleci-orbs/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

- `circleci/aws-s3`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/aws-s3)](https://circleci.com/orbs/registry/orb/circleci/aws-s3)
- `circleci/codecov-clojure`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov-clojure)](https://circleci.com/orbs/registry/orb/circleci/codecov-clojure)
- `circleci/codecov`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov)](https://circleci.com/orbs/registry/orb/circleci/codecov)
- `circleci/gradle`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/gradle)](https://circleci.com/orbs/registry/orb/circleci/gradle) 
- `circleci/heroku`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/heroku)](https://circleci.com/orbs/registry/orb/circleci/heroku)
- `circleci/lein-nvd`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/lein-nvd)](https://circleci.com/orbs/registry/orb/circleci/lein-nvd)
- `circleci/maven`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/maven)](https://circleci.com/orbs/registry/orb/circleci/maven)
- `circleci/rollbar`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/rollbar)](https://circleci.com/orbs/registry/orb/circleci/rollbar)

CircleCI မှထုတ်လုပ်ထာသေား orbs အချို့၏ source code များဖြစ်သည်။

အချို့ orbs များမှာမူ CircleCI-Public GitHub အဖွဲ့အစည်းအောက်တွင် သူတို့၏ကိုယ်ပိုင်ပရောဂျက်များရှိပါသည်။ ; [`circleci-orbs` tag ကိုအသုံးပြု၍ ](https://github.com/search?q=topic%3Acircleci-orbs+org%3ACircleCI-Public&type=Repositories) CircleCI မှထုတ်လုပ်ထားသော orbs အားလုံး၏ မူရင်း ပရောဂျက်ကိုကြည့်ရှုနိုင်သည်။

## Orbs ဆိုတာဘာလဲ?

Orbs ဆိုသည်မှာ မိမိတို့၏ပရောဂျက်အချင်းချင်းမျှဝေအသုံးပြုနိုင်သောCircleCI configuration ဖိုင်ဖြစ်သည်။ Orbs များသည်သင့်အတွက် အလုပ်များ ကုဒ်များ အချင်းချင်း reference ပေးနိုင်ရုံသာမက CircleCI ၏ build configuration ထဲသို့လည်းတင်သွင်းပြီးမိမိ၏ကိုယ်ပိုင်အမည်များသတ်မှတ်နိုင်ပါသေးသည်။ Orbs များသည် semver pattern ကိုအသုံးပြု၍ CircleCI တွင်မှတ်ပုံတင်ထားပါသည်။

Orbs နှင့်ပတ်သက်သောအသေးစိတ်အချက်အလက်များ မည်ကဲ့သို့အသုံးပြုရကြောင်း မည်ကဲ့သို့ဖန်တီးနိုင်ကြောင်း စသည့်အကြောင်းအရာများကို ဤ [ရီပို](https://circleci.com/docs/2.0/orb-intro/) ကြည့်နိုင်ပါသည်။

##  Orbs များကိုဖန်တီးခြင်း
Orbs များကို CircleCI API မှတစ်ဆင့် registry ထဲသို့ထည့်သွင်းနိုင်သည်။ ဤ ရီပိုသည် (`.circleci/config.yml`) [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli) မှ API ကိုအုံးပြု၍ `src` folder မှ orbs များကိုယူကာ orbs အဖြစ်မှတ်ပုံတင်လိုက်သည်။

CLI မှတစ်ဆင့် orbs များကိုမှတ်ပုံတင်လိုပါက orb ၏ YAML file ရှိသည့်တည်နေရာသို့သွား၍သော်လည်းကောင်း (သို့မဟုတ်) သင့် orb ၏ YAML ကို STDIN ဟူသောစာသားပြောင်း၍သော်လည်းကောင်း မှတ်ပုံတင်နိုင်ပါသည်။

`circleci orb publish $PATH_TO_FILE_WITH_ORB_YAML mynamespace/myorb@dev:mytag`

CLI ကိုသုံး၍ orb ကိုထုတ်လုပ်ရန်အကူအညီလိုပါကအောက်ပါ command ကိုသုံး၍လေ့လာနိုင်သည်။

`circleci orb publish --help`

သတိ: အထက်ဖော်ပြပါအကြောင်းအရာတို့သည်  main circleci.com service ကိုအသုံးပြုပါသည်။ အကယ်၍ သင်သည် သင်၏ကိုယ်ပိုင် CircleCI ဆာဗာ installation ဖြင့် orbs များကိုထုတ်လုပ်ပါက သင်၏ root domain ကို argument ပေး၍သော်လည်းကောင်း သို့မဟုတ် `.circleci/config.yml` ဖိုင်ထဲတွင်ဆက်တင်ချိန်၍သော်လည်းကောင်းပြုလုပ်နိုင်ပါသည်။

## ကူညီပံ့ပိုးလိုပါက
ကျွန်ုပ်တို့သည် [issues](https://github.com/CircleCI-Public/circleci-orbs/issues) များ (ဥပမာ- ချို့ယွင်းမှုများ လုပ်ဆောင်ချက်အသစ်များ) နှင့် [pull requests](https://github.com/CircleCI-Public/circleci-orbs/pulls) များကိုအစဉ်အမြဲလက်ခံအားပေးနေမည်ဖြစ်ပါသည်။

Pull requests အားလုံးသည် `staging` branch သို့ပထမဦးစွာသွားရောက်ပူးပေါင်းမည်ဖြစ်သည်။ အခြားပြုပြင်ထားသော orbs များ နှင့် သူတို့၏ကိုယ်ပိုင်ပရောဂျက်များတွင်ဝင်ရောက်လုပ်ကိုင်နေသည့် open-source contributors များသည် သူတို့၏ ကုဒ်အပြောင်းအလဲများကို စစ်ဆေးမည်ဖြစ်သည်။ ကျွန်ုပ်တို့သည် သင်တို့၏ပြုပြင်ပြောင်းလဲမှုများကို အလိုအလျောက်နည်း (သို့မဟုတ်) ကိုယ်တိုင်ကိုယ်ကျ စစ်ဆေးပြီးသည်နှင့်တစ်ပြိုင်နက် ပြုပြင်ပြောင်းလဲမှုများကို `staging` မှ `master` သို့ပေါင်းမည်ဖြစ်သည်။
