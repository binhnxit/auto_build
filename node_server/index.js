var Botkit = require('botkit')
var axios = require('axios');

var controller = Botkit.slackbot({
  debug: true
})

var _token = 'xxx-xxx-xxx-xxx'

controller.spawn({
  token: _token,
}).startRTM()

controller.hears(
  ['(.*)'],
  ['direct_message', 'direct_mention', 'mention'],
  function (bot, message) {
    var isCommand = false
    var name = message.match[1]
    var url = ''
    /**
     * DMM Landing Page Prod
     */
    if (name == 'deploy dmm_lp:prod') {
      isCommand = true
      deployLp()
    }

    /**
     * DMM Backend API Prod
     */
    if (name == 'deploy dmm_backend_api:prod') {
      isCommand = true
      deployBackendApi()
    }

    /**
     * DMM Admin ILance Prod
     */
    if (name == 'deploy dmm_ilance_admin:prod') {
      isCommand = true
      deployAdmin()
    }


    if (isCommand) {
      controller.storage.users.get(message.user, function (err, user) {
        bot.reply(message, 'Yes sir! Please waiting....')
      })
    } else {
      controller.storage.users.get(message.user, function (err, user) {
        bot.reply(message, 'Are you kidding me?')
      })
    }
  })

function deployLp() {
  for (var i = 1; i <= 8; i++) {
    var url = `http://abc.com`
    axios.get(url)
      .then(function (response) {
        console.log('Success call deploy')
      })
      .catch(function (error) {
        console.log(error);
      });
  }
}

function deployAdmin() {
  for (var i = 1; i <= 2; i++) {
    var url = `http://abc.com`
    axios.get(url)
      .then(function (response) {
        console.log('Success call deploy')
      })
      .catch(function (error) {
        console.log(error);
      });
  }
}

function deployBackendApi() {
  for (var i = 1; i <= 8; i++) {
    var url = `http://abc.com`
    axios.get(url)
      .then(function (response) {
        console.log('Success call deploy')
      })
      .catch(function (error) {
        console.log(error);
      });
  }
}