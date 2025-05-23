config.load_autoconfig(False)

config.set('auto_save.interval', 5000)
config.set('auto_save.session', True)
config.set('colors.webpage.darkmode.enabled', True)
config.set('content.notifications.enabled', True)

config.bind('td', 'config-cycle colors.webpage.darkmode.enabled')
