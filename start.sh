if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Darshan2348/SP-FILTER2-BOT /SP-FILTER2-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SP-FILTER2-BOT
fi
cd /SP-FILTER2-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
