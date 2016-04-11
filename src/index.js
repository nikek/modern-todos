// This is a hook to make webpack package the css for us
import './style.less'

import riot from 'riot'
import './tags/app.tag'
import './tags/title.tag'

riot.mount('*')
