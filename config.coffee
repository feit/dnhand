
env = process.env.NODE_ENV

if env is 'production'
  config =
    wechat:
      # 'wx3ff5c48ba9ac6552', '6e1b422de4b33e385165ab80f73492df'
      appid: process.env.WX_APPID
      secret: process.env.WX_SECRET
      canThis: process.env.HAS_ADVANCED_INTERFACE
    mongodb:
      user: process.env.MONGO_USER
      pass: process.env.MONGO_PASS
      host: process.env.MONGO_HOST
      port: process.env.MONGO_PORT
      dbname: process.env.MONGO_DBNAME
    email:
      user: process.env.EMALL_USER
      pass: process.env.EMALL_PASS

else if env is 'development'
  config =
    wechat:
      openid: 'wx15c96420dd54edf9'
      appid: 'wx15c96420dd54edf9'
      secret: '5bf2a19b70f0aa9b05ea4da757ee3e1a'
      canThis: true
    mongodb:
      user: ''
      pass: ''
      host: 'mongo'
      port: '27017'
      dbname: 'dnhand_dev'
    email:
      user: ''
      pass: ''

else if env is 'test'
  config =
    wechat:
      openid: 'ofu7Ts4-v3xMIqAXfkEbyuEvb_Uc'
      appid: 'wxc49d99a484205dd0'
      secret: '75676597753ddb51c8d74273650daa76'
      canThis: true
    mongodb:
      user: ''
      pass: ''
      host: 'mongo'
      port: '27017'
      dbname: 'dnhand_test'
    email:
      user: ''
      pass: ''

module.exports = config