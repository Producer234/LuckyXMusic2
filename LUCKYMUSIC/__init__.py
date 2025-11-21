from LUCKYMUSIC.core.bot import RAJA
from LUCKYMUSIC.core.dir import dirr
from LUCKYMUSIC.core.userbot import Userbot
from LUCKYMUSIC.misc import dbb, heroku

from SafoneAPI import SafoneAPI
from .logging import LOGGER

dirr()
dbb()
heroku()

app = RAJA()
api = SafoneAPI()
userbot = Userbot()


from .platforms import *

Apple = AppleAPI()
Carbon = CarbonAPI()
SoundCloud = SoundAPI()
Spotify = SpotifyAPI()
Resso = RessoAPI()
Telegram = TeleAPI()
YouTube = YouTubeAPI()
