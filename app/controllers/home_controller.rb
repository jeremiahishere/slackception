class HomeController < ApplicationController
  def index
    @groups = [
      ["lunch","G029RFQA6"],
      ["perforce", "G029TL68S"],
      ["technical-discussion", "G029RL5PQ"],
      ["watercooler", "G029CMT1P"]]

    @users = [ 'SMACK PUNCHDEATH', 'JAM HEADSTRIKE', 'BUZZ KILLINGTON', 'BUTTZ IRONDUKES', 'TURD BURGLINGTON', 'SLURGE ROCKMEAT', 'BLAKE STONE', 'LUNGE KILLINGTON', 'BUFF SMASHINGTON', 'SLAB IRONSTROKE', 'JENS MCSMASHEDUP', 'ROCK BONEBREAKER', 'BROCK STEAL', 'MAX FIGHTMASTER', 'LANCE ARMSTRONG', 'SLEDGE TALLROUGH', 'RAGE NIGHTSTALK', 'RAGNOR SLAGPOUNDER', 'JAXX HUNTER', 'RAPIER MCSTABGUTS', 'SNAKE EYEJAB', 'COMMANDER KILLZONE', 'SERGEANT SLAUGHTER', 'SPIKE RAILKILL', 'MAD ROCKRAGE', 'CLENCH WONDERSHANK', 'CHAINSAW GUTFUCK', 'PINCH UNDERTHRUST', 'SWIFT THUNDERBONER', 'HUNT FRIGHTENING', 'SEX MCBALLSDEEP', 'KEITH KILLJOY', 'SCHYLER HATEFUCK', 'BULK MURDERFIELD', 'SHAKE DAGGERPUNCH', 'BLADE SPINERIPPER', 'BOARD RAZORFIST', 'JERK SLAPPINGTON', 'ROGUE STEALTHY', 'XANDER SLICEFLESH', 'BUCK LANDSLIDE', 'BRONT TRUNKTHUMPER', 'DEX DENTSTEEL', 'RANDALL GUTSNATCHER', 'FRAGGLE DIAMONDCRUNCH', 'NUTTS BALLSTOMP', 'BUFF STRONGMAN', 'AXE BURLY', 'SLEDGE DEFTBLOW', 'ROD GUNMAN']
  end

  def submit
    puts 'gets to here'
    username = params[:username]
    text = params[:message]
    channel = params[:group]

    chat_request = Slackbot::ApiRequest::Base.new("chat.postMessage", {username: username, text: text, channel: channel})
    chat_request.make_request
    render :json => {:success => true }
  end
end
