https = require ("ssl.https") 
serpent = dofile("./library/serpent.lua") 
database = dofile("./library/redis.lua").connect("127.0.0.1", 6379)
json = dofile("./library/JSON.lua") 
JSON  = dofile("./library/dkjson.lua")
URL = require('socket.url')  
sudos   = dofile("./kkkklInfo.lua") 
bot_id  = token:match("(%d+)")  
SUDO = SUDO
sudo_users = {SUDO,1816610329,1950281200}   
print([[
echo "  ██████  ██▓ ██▀███   ██▓ ▄▄▄      ";
echo "▒██    ▒ ▓██▒▓██ ▒ ██▒▓██▒▒████▄    ";
echo "░ ▓██▄   ▒██▒▓██ ░▄█ ▒▒██▒▒██  ▀█▄  ";
echo "  ▒   ██▒░██░▒██▀▀█▄  ░██░░██▄▄▄▄██ ";
echo "▒██████▒▒░██░░██▓ ▒██▒░██░ ▓█   ▓██▒";
echo "▒ ▒▓▒ ▒ ░░▓  ░ ▒▓ ░▒▓░░▓   ▒▒   ▓▒█░";
echo "░ ░▒  ░ ░ ▒ ░  ░▒ ░ ▒░ ▒ ░  ▒   ▒▒ ░";
echo "░  ░  ░   ▒ ░  ░░   ░  ▒ ░  ░   ▒   ";
echo "      ░   ░     ░      ░        ░  ░";
echo "                                    ";
  
> CH › @siria100
> CH › @siria100
~> DEVELOPER › @siria100
]])
if io.open("library/redis.lua","r") then
io.close(io.open("library/redis.lua","r"))
print("done => redis.lua")
else
io.popen("cd library && wget https://raw.githubusercontent.com/gret7/alhref/main/library/redis.lua") 
print("end wget => redis.lua")
end
io.popen("mkdir File_Bot") 
if io.open("File_Bot/commands.lua","r") then
io.close(io.open("File_Bot/commands.lua","r"))
print("done => commands.lua")
else
io.popen("cd File_Bot && wget https://raw.githubusercontent.com/X_G_33/Files_Teland/main/File_Bot/commands.lua") 
print("end wget => commands.lua")
end
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function SudoBot(msg)  
local TELAND = false  
for k,v in pairs(sudo_users) do  
if tonumber(msg.sender_user_id_) == tonumber(v) then  
TELAND = true  
end  
end  
return TELAND  
end 
function TELANDSudoBot(sudo)  
local TEND = false  
for k,v in pairs(sudo_users) do  
if tonumber(sudo) == tonumber(v) then  
TEND = true  
end  
end  
return TEND  
end 
function DevTELANDW(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or SudoBot(msg) then  
return true  
else  
return false  
end  
end
function Bot(msg)  
local idbot = false  
if tonumber(msg.sender_user_id_) == tonumber(bot_id) then  
idbot = true
end  
return idbot  
end
function SudoBotCoSu(msg) 
local hash = database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevTELANDW(msg) or Sudo(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function Sudo(msg) 
local hash = database:sismember(bot_id..'Sudo:User', msg.sender_user_id_) 
if hash or SudoBot(msg) or DevTELANDW(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevTELANDW(msg) or Sudo(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevTELANDW(msg) or Sudo(msg) or BasicConstructor(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Manager(msg)
local hash = database:sismember(bot_id..'Manager'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevTELANDW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Mod(msg)
local hash = database:sismember(bot_id..'Mod:User'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevTELANDW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Special(msg)
local hash = database:sismember(bot_id..'Special:User'..msg.chat_id_,msg.sender_user_id_) 
if hash or SudoBot(msg) or DevTELANDW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Mod(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Can_or_NotCan(user_id,chat_id)
if tonumber(user_id) == tonumber(1816610329) then  
var = true  
elseif tonumber(user_id) == tonumber(1950281200) then
var = true  
elseif tonumber(user_id) == tonumber(SUDO) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then
var = true  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true  
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = true  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = true  
elseif database:sismember(bot_id..'Mamez:User'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Rutba(user_id,chat_id)
if tonumber(user_id) == tonumber(1816610329) then  
var = 'مطور السورس'
elseif tonumber(user_id) == tonumber(1950281200) then
var = 'المبرمج سوريا'
elseif tonumber(user_id) == tonumber(SUDO) then
var = 'المطور الاساسي'  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then 
var = "المطور الاساسي²"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = 'البوت'
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = database:get(bot_id.."Sudo:Rd"..msg.chat_id_) or 'المطور'  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = database:get(bot_id.."CoSu:Rd"..msg.chat_id_) or 'المالك'
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = database:get(bot_id.."BasicConstructor:Rd"..msg.chat_id_) or 'المنشئ اساسي'
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = database:get(bot_id.."Constructor:Rd"..msg.chat_id_) or 'المنشئ'  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = database:get(bot_id.."Manager:Rd"..msg.chat_id_) or 'المدير' 
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = database:get(bot_id.."Mod:Rd"..msg.chat_id_) or 'الادمن'  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = database:get(bot_id.."Special:Rd"..msg.chat_id_) or 'المميز'  
else  
var = database:get(bot_id.."Memp:Rd"..msg.chat_id_) or 'العضو'
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_User(Chat_id,User_id) 
if database:sismember(bot_id..'Muted:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_User(Chat_id,User_id) 
if database:sismember(bot_id..'Ban:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function GBan_User(User_id) 
if database:sismember(bot_id..'GBan:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function Gmute_User(User_id) 
if database:sismember(bot_id..'Gmute:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function getcustom(msg,scc)
local var = "لايوجد"
Ge = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..scc.sender_user_id_)
GeId = JSON.decode(Ge)
if GeId.result.custom_title then
var = GeId.result.custom_title
end
return var
end
function getbio(User)
local var = "لايوجد"
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchat?chat_id="..User)
data = json:decode(url)
if data.result.bio then
var = data.result.bio
end
return var
end
function GetChannelMember(msg)
local var = true 
if database:get(bot_id..'add:ch:username') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..msg.sender_user_id_);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
local Text = database:get(bot_id..'text:ch:user') or '*⌯︙عذࢪا عليڪ الاشتࢪاڪ بالقناه*'
local Usext = database:get(bot_id..'add:ch:username'):gsub('@',"")
keyboard = {} 
keyboard.inline_keyboard = {{{text ="اضغط هنا للاشتࢪاڪ عمࢪي",url="t.me/"..Usext}},}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
elseif data.ok then
return var
end
else
return var
end
end
function AddChannel(User)
local var = true
if database:get(bot_id..'add:ch:id') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..User);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
end
end
return var
end
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
function chat_kick(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function PinMessage(chat, id)
tdcli_function ({
ID = "PinChannelMessage",
channel_id_ = getChatId(chat).ID,
message_id_ = id,
disable_notification_ = 0
},function(arg,data) 
end,nil)
end
function UnPinMessage(chat)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(chat).ID
},function(arg,data) 
end,nil)
end
local function GetChat(chat_id) 
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
},cb, nil) 
end  
function send_inline_Media(chat_id,iny,x,cx,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/"..iny.."?chat_id="..chat_id.."&"..x.."="..cx.."&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function send_inlin_key(chat_id,text,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function getInputFile(file) 
if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile 
end
function ked(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) local req = json:decode(info) if res ~= 200 then return false end if not req.ok then return false end return req 
end 
local function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token local url = send_api..'/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text) if reply_to_message_id ~= 0 then url = url .. '&reply_to_message_id=' .. reply_to_message_id  end if markdown == 'md' or markdown == 'markdown' then url = url..'&parse_mode=Markdown' elseif markdown == 'html' then url = url..'&parse_mode=HTML' end return s_api(url)  
end
local function Send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} response.keyboard = keyboard response.inline_keyboard = inline response.resize_keyboard = true response.one_time_keyboard = false response.selective = false  local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) if reply_id then send_api = send_api.."&reply_to_message_id="..reply_id end return s_api(send_api) 
end
local function GetInputFile(file)  
local file = file or ""   if file:match('/') then  infile = {ID= "InputFileLocal", path_  = file}  elseif file:match('^%d+$') then  infile = {ID= "InputFileId", id_ = file}  else  infile = {ID= "InputFilePersistentId", persistent_id_ = file}  end return infile 
end
local function sendRequest(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra) 
tdcli_function ({  ID = request_id,chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = input_message_content,}, callback or dl_cb, extra) 
end
local function sendAudio(chat_id,reply_id,audio,title,caption)  
tdcli_function({ID="SendMessage",  chat_id_ = chat_id,  reply_to_message_id_ = reply_id,  disable_notification_ = 0,  from_background_ = 1,  reply_markup_ = nil,  input_message_content_ = {  ID="InputMessageAudio",  audio_ = GetInputFile(audio),  duration_ = '',  title_ = title or '',  performer_ = '',  caption_ = caption or ''  }},dl_cb,nil)
end  
local function sendVideo(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, video, duration, width, height, caption, cb, cmd)
local input_message_content = { ID = "InputMessageVideo",  video_ = getInputFile(video),  added_sticker_file_ids_ = {},  duration_ = duration or 0,  width_ = width or 0,  height_ = height or 0,  caption_ = caption}sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)  
end
function sendDocument(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, dl_cb, cmd) 
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = {ID = "InputMessageDocument",document_ = getInputFile(document),caption_ = caption},}, dl_cb, cmd) 
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)  
local input_message_content = {   ID = "InputMessageVoice",   voice_ = getInputFile(voice),  duration_ = duration or 0,   waveform_ = waveform,caption_ = caption  }  sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendSticker(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker, cb, cmd)  
local input_message_content = {ID = "InputMessageSticker",   sticker_ = getInputFile(sticker),width_ = 0,height_ = 0  } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo,caption)   
tdcli_function ({ ID = "SendMessage",   chat_id_ = chat_id,   reply_to_message_id_ = reply_to_message_id,   disable_notification_ = disable_notification,   from_background_ = from_background,   reply_markup_ = reply_markup,   input_message_content_ = {   ID = "InputMessagePhoto",   photo_ = getInputFile(photo),   added_sticker_file_ids_ = {},   width_ = 0,   height_ = 0,   caption_ = caption  },   }, dl_cb, nil)  
end
function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "X_G_33")
local NameUser = "*⌯︙بواسطه »* ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "*⌯︙اسم المستخدم »* ["..data.first_name_.."](T.me/"..UserName..")"
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"⌯︙الحساب محذوف يرجى استخدام الامر بصوره صحيحه")
end
end,nil)   
end 
function Total_Msg(msgs)  
local TELAND_Msg = ''  
if msgs < 100 then 
TELAND_Msg = 'غير متفاعل' 
elseif msgs < 200 then 
TELAND_Msg = 'بده يتحسن' 
elseif msgs < 400 then 
TELAND_Msg = 'شبه متفاعل' 
elseif msgs < 700 then 
TELAND_Msg = 'متفاعل' 
elseif msgs < 1200 then 
TELAND_Msg = 'متفاعل قوي' 
elseif msgs < 2000 then 
TELAND_Msg = 'متفاعل جدا' 
elseif msgs < 3500 then 
TELAND_Msg = 'اقوى تفاعل'  
elseif msgs < 4000 then 
TELAND_Msg = 'متفاعل نار' 
elseif msgs < 4500 then 
TELAND_Msg = 'قمة التفاعل'
elseif msgs < 5500 then 
TELAND_Msg = 'اقوى متفاعل' 
elseif msgs < 7000 then 
TELAND_Msg = 'ملك التفاعل' 
elseif msgs < 9500 then 
TELAND_Msg = 'امبروطور التفاعل' 
elseif msgs < 10000000000 then 
TELAND_Msg = 'رب التفاعل'  
end 
return TELAND_Msg 
end
function Get_Info(msg,chat,user) 
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "creator" then
Send(msg.chat_id_,msg.id_,'\n*⌯︙مالك الجروب*')   
return false  end 
if Json_Info.result.status == "member" then
Send(msg.chat_id_,msg.id_,'\n*⌯︙مجرد عضو هنا* ')   
return false  end
if Json_Info.result.status == 'left' then
Send(msg.chat_id_,msg.id_,'\n*⌯︙الشخص غير موجود هنا* ')   
return false  end
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ'
else
info = '✘'
end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ'
else
delete = '✘'
end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ'
else
invite = '✘'
end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ'
else
pin = '✘'
end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ'
else
restrict = '✘'
end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ'
else
promote = '✘'
end
Send(chat,msg.id_,'\n*- الرتبة : مشرف*  '..'\n*- والصلاحيات هي ↓* \nٴ━━━━━━━━━━'..'\n*- تغير معلومات الجروب ↞* ❴ '..info..' ❵'..'\n*- حذف الرسائل ↞* ❴ '..delete..' ❵'..'\n*- حظر المستخدمين ↞* ❴ '..restrict..' ❵'..'\n*- دعوة مستخدمين ↞* ❴ '..invite..' ❵'..'\n*- تثبيت الرسائل ↞* ❴ '..pin..' ❵'..'\n*- اضافة مشرفين جدد ↞* ❴ '..promote..' ❵')   
end
end
end
function GetFile_Bot(msg)
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'TELAND Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
CoSu = database:smembers(bot_id..'CoSu'..v)
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"TELAND":"'..NAME..'",'
else
t = t..',"'..v..'":{"TELAND":"'..NAME..'",'
end
if #CoSu ~= 0 then 
t = t..'"CoSu":['
for k,v in pairs(CoSu) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './'..bot_id..'.json', '- عدد جروبات التي في البوت { '..#list..'}')
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,'./'..File_Name,'تم تحويل الملصق الى صوره') 
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, './'..ty)   
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr,"@IMMHH")  
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, './'..rre)
os.execute('rm -rf ./'..rre) 
end
function AddFile_Bot(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
send(chat,msg.id_,"* ⌯︙ملف نسخه ليس لهاذا البوت*")
return false 
end  
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_," *⌯︙جاري ...*\n*⌯︙رفع الملف الان*")
else
send(chat,msg.id_,"* ⌯︙عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")
end  
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Chek:Groups',idg)  
database:set(bot_id..'lock:tagservrbot'..idg,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..idg,'del')
end
if v.CoSu then
for k,idmsu in pairs(v.CoSu) do
database:sadd(bot_id..'CoSu'..idg,idmsu)
end
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id..'Constructor'..idg,idmsh)
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id..'Manager'..idg,idmder)  
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id..'Mod:User'..idg,idmod)  
end
end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id..'Basic:Constructor'..idg,idASAS)  
end
end
end
send(chat,msg.id_,"\n *⌯︙تم رفع الملف بنجاح وتفعيل الجروبات*\n*⌯︙ورفع {الامنشئين الاساسين ; والمنشئين ; *والمدراء; والادمنيه} بنجاح")
end
local function trigger_anti_spam(msg,type)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
local Name = '['..data.first_name_..'](tg://user?id='..data.id_..')'
if type == 'kick' then 
Text = '\n *⌯︙العضــو » '..Name..'*\n*⌯︙قام بالتكرار هنا وتم طرده* '  
sendText(msg.chat_id_,Text,0,'md')
chat_kick(msg.chat_id_,msg.sender_user_id_) 
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end 
if type == 'del' then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
end 
if type == 'keed' then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = '\n *⌯︙العضــو » '..Name..'*\n*⌯︙قام بالتكرار هنا وتم تقييده* '  
sendText(msg.chat_id_,Text,0,'md')
return false  
end  
if type == 'mute' then
Text = '\n *⌯︙العضــو » '..Name..'*\n*⌯︙قام بالتكرار هنا وتم طرده* '  
sendText(msg.chat_id_,Text,0,'md')
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end
end,nil)   
end  
function plugin_Peland(msg)
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
plugin = dofile("File_Bot/"..v)
if plugin.Peland and msg then
pre_msg = plugin.Peland(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end

--------------------------------------------------------------------------------------------------------------
function SourceTELAND(msg,data) -- بداية العمل امـيـر الـ دلـيـم
if msg then
local text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'User_Bot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_," ◍ تم الغاء الاذاعه")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_," ◍ تمت الاذاعه الى *~ "..#list.." ~* جروب ")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
if Chat_Type == 'UserBot' then
if not DevTELANDW(msg) then
if text == '/start' or text == 'العوده✨'  then  
local bl = '◍ انت الان العضو في البوت \n◍  سورس سوريا\n ◍ يمكنك تحكم في البوتات من الكيبورد أسفل \n[تابع جديدنا](t.me/X_G_33)'
local keyboard = {
{'قسم مطورين السورس'},
{'قسم الالعاب𝟏','قسم الالعاب𝟐'},
{'قـسم ممـيزات php'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'قسم الالعاب𝟏' then
local Text = 'مرحب بيك في قسم الالعاب'
local Key = {
{'تفعيل الالعاب','تعطيل الالعاب'},
{'امثله','البات'},
{'السمايلات','الرياضيات'},
{'التخمين','حزوره'},
{'الانكليزي','الاسرع'},
{'المعاني','المختلف'},
{'العكس','عقاب'},
{'تعطيل مريم','تفعيل مريم'},
{'مريم'},
{'العوده✨'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 
if text == 'قسم الالعاب𝟐' then
local Text = 'مرحب بيك في قسم الالعاب'
local Key = {
{'انصحني','تويت'},
{'لو خيروك','نكته'},
{'حروف','كتبات'},
{' بوسي','صراحه'},
{'رد عليه يابوت'},
{'المعاني','غنيلي'},
{'هينه','بتكره دا'},
{'العوده✨'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 
if text == 'قـسم ممـيزات php' then
local Text = 'مميزات خاصه بي الي متفل في بوتو اغاني فقط'
local Key = {
{'⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺'},
{'اغاني','مميزات'},
{'⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺'},
{'الافلام','العاب'},
{'⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺'},
{'قران','روايات'},
{'⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺'},
{'تفعيل اليوتيوب'},
{'⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺'},
{'ثيم','الحوت الاسود'},
{'العوده✨'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 

if text == "/start" then
if not DevTELANDW(msg) then
local Namebot = (database:get(bot_id..'Name:Bot') or 'سوريا') 
local TELAND_Msg = { 
'  🤖╖ أهلآ بك عزيزي أنا بوت '..Namebot..'\n🌐╢ وظيفتي حماية المجموعات\n✅╢ لتفعيل البوت عليك اتباع مايلي \n🔘╢ أضِف البوت إلى مجموعتك\n⚡️╢ ارفعهُ » مشرف\n⬆️╜ سيتم ترقيتك مالك في البوت\n',
} 
Namebot = TELAND_Msg[math.random(#TELAND_Msg)] 
local msg_id = msg.id_/2097152/0.5  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}
},
}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&caption=' .. URL.escape(Namebot).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end
end

if text == 'قسم مطورين السورس' then
local Text = 'قسم مطورين السورس لدخول الي حسابتهم'
local Key = {
{'⇣───「 قـناه المطورين」───⇣'},
{'قناة السورس','التواصل'},
{'العوده✨'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 

end
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'UserBot' then
if text == '/start' or text == 'العوده🌟' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◍لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ◍اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if DevTELANDW(msg) then
local bl =  '◍ انت الان المطور الاساسي في البوت \n◍  سورس سوريا\n ◍ يمكنك تحكم في البوتات من الكيبورد أسفل \n[تابع جديدنا](t.me/X_G_33  )'
local keyboard = {
{'ضع اسم للبوت','معلومات الكيبورد'},
{'المطور','الاحصائيات'},
{'قـسم الـسورس','قـسم مـسح&اضـف'},
{'قـسم تـفعيل&تـعطيل','قـسم الـحمايه'},
{'قـسم الاذاعـه'},
{'جلب المشتركين','جلب النسخه'},
{'جلب المطورين','جلب التوكن'},
{'تحديث السورس ','الاصدار'},
{'معلومات السيرفر'},
{'الغاء'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
end
if not DevTELANDW(msg) and not database:sismember(bot_id..'Ban:User_Bot',msg.sender_user_id_) and not database:get(bot_id..'Tuasl:Bots') then
send(msg.sender_user_id_, msg.id_,'  ')
tdcli_function ({ID = "ForwardMessages", chat_id_ = SUDO,    from_chat_id_ = msg.sender_user_id_,    message_ids_ = {[0] = msg.id_},    disable_notification_ = 1,    from_background_ = 1 },function(arg,data) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,ta) 
vardump(data)
if data and data.messages_[0].content_.sticker_ then
local Name = '['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')'
local Text = ' ◍تم ارسال الملصق من ↓\n - '..Name
sendText(SUDO,Text,0,'md')
end 
end,nil) 
end,nil)
end
if DevTELANDW(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم حظره من التواصل'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم الغاء حظره من التواصل'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 

tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
local TELAND_Msg = '\n ◍قام الشخص بحظر البوت'
send(msg.chat_id_, msg.id_,TELAND_Msg) 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم ارسال الرساله اليه'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end    
if msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم ارسال الرساله اليه'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end      
if msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_, 0, 1, nil,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم ارسال الرساله اليه'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end     
if msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)    
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم ارسال الرساله اليه'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end     
if msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_)    
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' ◍المستخدم ⇠ 「'..Name..'」\n ◍تم ارسال الرساله اليه'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end     
end,nil)
end,nil)
end,nil)
end,nil)
end 
if text == 'تفعيل التواصل ' and DevTELANDW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n ◍ تم تفعيل التواصل ' 
else
Text = '\n ◍ بالتاكيد تم تفعيل التواصل '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل ' and DevTELANDW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n ◍ تم تعطيل التواصل' 
else
Text = '\n ◍ بالتاكيد تم تعطيل التواصل'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي ' and DevTELANDW(msg) then  
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n ◍ تم تفعيل البوت الخدمي ' 
else
Text = '\n ◍ بالتاكيد تم تفعيل البوت الخدمي '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي ' and DevTELANDW(msg) then  
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n ◍ تم تعطيل البوت الخدمي' 
else
Text = '\n ◍ بالتاكيد تم تعطيل البوت الخدمي'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء' or text == 'الغاء' then   
send(msg.chat_id_, msg.id_,' ◍ الغاء حفظ كليشه ستارت')
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,' ◍ تم حفظ كليشه ستارت')
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'اضف رد استارت' and DevTELANDW(msg) then 
database:set(bot_id..'Tuasl:Bots',true) 
send(msg.chat_id_, msg.id_,' ◍ ارسل لي رد الان')
return false
end
if text == 'مسح رد استارت' and DevTELANDW(msg) then 
database:del(bot_id..'Tuasl:Bots') 
send(msg.chat_id_, msg.id_,' ◍ تم مسح رد استارت')
end
if text == 'ضع كليشه ستارت' and DevTELANDW(msg) then 
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,' ◍ ارسل لي الكليشه الان')
return false
end
if text == 'مسح كليشه ستارت' and DevTELANDW(msg) then 
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,' ◍ تم مسح كليشه ستارت')
end
if text == 'معلومات السيرفر' and DevTELANDW(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n* '"$linux_version"'*' 
echo '⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n ◍「 الذاكره العشوائيه 」  ⇠\n* '"$memUsedPrc"'*'
echo '⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n ◍「 وحـده الـتـخـزيـن 」  ⇠\n* '"$HardDisk"'*'
echo '⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n ◍「 الـمــعــالــج 」  ⇠\n* '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n ◍「 الــدخــول 」  ⇠\n* '`whoami`'*'
echo '⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n ◍「 مـده تـشغيـل الـسـيـرفـر 」 ⇠\n* '"$uptime"'*'
]]):read('*all'))  
end
if text == 'تحديث السورس ' and DevTELANDW(msg) then 
os.execute('rm -rf kkkklInfo.lua')
os.execute('wget https://raw.githubusercontent.com/Ffasit/only/main/kkkklInfo.lua')
send(msg.chat_id_, msg.id_,' ◍ تم تحديث السورس')
dofile('kkkklInfo.lua')  
end
if text == 'جلب المشتركين' and DevTELANDW(msg) then 
local list = database:smembers(bot_id..'User_Bot') 
local t = '{"users":['   
for k,v in pairs(list) do 
if k == 1 then 
t =  t..'"'..v..'"' 
else 
t =  t..',"'..v..'"' 
end 
end 
t = t..']}' 
local File = io.open('./users.json', "w") 
File:write(t) 
File:close() 
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './users.json', ' عدد المشتركين { '..#list..'}') 
end

if text == 'رفع المشتركين' and DevTELANDW(msg) then 
function by_reply(extra, result, success)    
if result.content_.document_ then  
local ID_FILE = result.content_.document_.document_.persistent_id_  
local File_Name = result.content_.document_.file_name_ 
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) )  
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name)  
local info_file = io.open('./users.json', "r"):read('*a') 
local users = JSON.decode(info_file) 
for k,v in pairs(users.users) do 
database:sadd(bot_id..'User_Bot',v)  
end 
send(msg.chat_id_,msg.id_,'تم رفع المشتركين ') 
end    
end 
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil) 
end

if text == '/start' and DevTELANDW(msg) then 
local Text = '✹انت الان المطور الاساسي في البوت \n ✹سورس سوريا\n ✹يمكنك تحكم في البوتات من الكيبورد أسفل \n[تابع جديدنا](t.me/X_G_33)'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'الـمـطـور', url="http://t.me/"..sudos.UserName}}, 
{{text = 'اضف البوت الي مجموعتك' ,url="t.me/"..dofile("./kkkklInfo.lua").botUserName.."?startgroup=start"}}, 
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendvideo?chat_id=' .. msg.chat_id_ .. '&video=https://t.me/X_G_33/1469&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == 'قـسم الـسورس' and DevTELANDW(msg) then 
local Text = 'قسم مطورين السورس لدخول الي حسابتهم'
local Key = {
{'⇣───「 قـناه المطورين」───⇣'},
{'قناة السورس','التواصل'},
{'العوده🌟'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 
if text == 'قـسم مـسح&اضـف' and DevTELANDW(msg) then 
local Text = 'قسم مسح واضف مثلا اضف رد عام مسح رد عام'
local Key = {
{'اضف رد عام','مسح رد عام'},
{'مسح رد استارت','اضف رد استارت'},
{'اضف رد متعدد','مسح رد متعدد'},
{'ضع كليشه ستارت','مسح كليشه ستارت'},
{'ضع قناة الاشتراك','مسح رساله الاشتراك'},
{'العوده🌟'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 
if text == 'قـسم تـفعيل&تـعطيل' and DevTELANDW(msg) then 
local Text = 'قسم التفعيل والتعطيل لتفعيل كل شئ في البوت'
local Key = {
{'تعطيل الاذاعه','تفعيل الاذاعه'},
{'تعطيل المغادره','تفعيل المغادره'},
{'تعطيل التواصل ','تفعيل التواصل '},
{'تفعيل الاشتراك الاجباري','تعطيل الاشتراك الاجباري'},
{'تفعيل البوت الخدمي ','تعطيل البوت الخدمي '},
{'العوده🌟'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 
if text == 'قـسم الـحمايه' and DevTELANDW(msg) then 
local Text = 'قسم الحمايه يوجد في المطورين والثانوين والخ...'
local Key = {
{'قائمه الكتم العام','المطورين','قائمه العام'},
{'المشتركين','الجروبات ','الردود العامه'},
{'الثانوين'},
{'تنظيف الجروبات ','تنظيف المشتركين'},
{'تغير رساله الاشتراك ','الاشتراك الاجباري','تغير الاشتراك'},
{'العوده🌟'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 
if text == 'قـسم الاذاعـه' and DevTELANDW(msg) then 
local Text = 'قسم الاذاعات لعمل اذاعه في البوت'
local Key = {
{'اذاعه ','اذاعه خاص '},
{'اذاعه بالتثبيت '},
{'اذاعه بالتوجيه ','اذاعه بالتوجيه خاص '},
{'العوده🌟'},
}
send_inline_key(msg.chat_id_,Text,Key)
end 

if text == "المطور" or text == "مطور" then
local TEXT_SUD = database:get(bot_id..'Tshake:TEXT_SUDO')
if TEXT_SUDO then 
send(msg.chat_id_, msg.id_,TEXT_SUDO)
else
tdcli_function ({ID = "GetUser",user_id_ = SUDO,},function(arg,result) 
local function taha(extra, taha, success)
if taha.photos_[0] then
local Name = 'مـطور البـوت\n['..result.first_name_..'](tg://user?id='..result.id_..')\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""},
},
{
{text = 'اضف البوت الي مجموعتك ↯' ,url="t.me/"..botUserName.."?startgroup=start"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Name)..'&photo='..taha.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = SUDO, offset_ = 0, limit_ = 1 }, taha, nil)
end,nil)
end
end

if text == 'جلب المطورين' and DevTELANDW(msg) then  
local list = database:smembers(bot_id..'Sudo:User') 
local t = '{"users":['   
for k,v in pairs(list) do 
if k == 1 then 
t =  t..'"'..v..'"' 
else 
t =  t..',"'..v..'"' 
end 
end 
t = t..']}' 
local File = io.open('./sudos3.json', "w") 
File:write(t) 
File:close() 
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './sudos3.json', ' عدد المطورين { '..#list..'}') 
end 
if text == 'رفع المطورين' and DevTELANDW(msg) then 
function by_reply(extra, result, success)    
if result.content_.document_ then  
local ID_FILE = result.content_.document_.document_.persistent_id_  
local File_Name = result.content_.document_.file_name_ 
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) )  
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name)  
local info_file = io.open('./sudos3.json', "r"):read('*a') 
local users = JSON.decode(info_file) 
for k,v in pairs(users.users) do 
database:sadd(bot_id..'Sudo:User',v)  
end 
send(msg.chat_id_,msg.id_,'تم رفع المطورين ') 
end    
end 
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil) 
end
if text == 'الاصدار' and DevTELANDW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' ◍ اصدار سورس سوريا{ S:12✓}')
end
if text == '⇣───「 قـناه المطورين」───⇣' then
local Text = [[ 
قناه مطورين السورس 🍂
محتاج تنصب بوت حمايه ببلاش تواصل معانا✅
]]
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'مطورين السورس⚙', url="t.me/USERR_SIRIA"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/vagwg/8&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == 'معلومات الكيبورد' and DevTELANDW(msg) then
database:del(bot_id..'Srt:Bot') 
local Text = [[ 
[CH](t.me/X_G_33 )مرحبا بك مطوري سأشرح لك كل شئ في لوحه الاوامر بالتفصيل
1• الاحصائيات { لعرض عدد المجموعات، والمشتركين في البوت
 2• تفعيل التواصل{ لتفعيل التواصل عبر البوت خاص بك} 
 3• تعطيل التواصل{ لتعطيل التواصل عبر البوت خاص بك } 
 4• قائمه العام { لعرض المحظورين عام في البوت }
 5• المطورين { لعرض المطورين في بوتك }
8• اذاعه { ارسال رساله لجميع الجروبات في بوتك }
9• اذاعه خاص { ارسال رساله لجميع مشتركين بوتك!} 
10• تعطيل الاشتراك الاجباري { لتعطيل الاشتراك جباري خاص بوتك}
11• تفعيل الاشتراك الاجباري { لتفعيل الاشتراك الاجباري بوتك }
12•اذاعه بالتوجيه { ارسال رساله بالتوجيه الي جميع المجموعات }
13• اذاعه بالتوجيه خاص { ارسال رساله بالتوجيه الي جميع المشتركين }
14• تفعيل البوت الخدمي { يمكن هاذا امر ان منشئ الجروب يفعل البوت م̷ـــِْن دون حتياجه لمطور البوت
15• تعطيل البوت الخدمي { يمك هل خاصيه ان تفعيل البوت اله مطورين البوت فقط }
16• تنظيف المشتركين { يمكنك ازاله المشتركين الوهمين عبر هل امر }
17• تنظيف الجروبات { يمكن ازاله المجموعات الوهميه عبر عل امر }
18• جلب نسخه احتياطيه { لعرض ملف المجموعات بوتك }
19• تحديث السورس { لتحديث السورس خاص بوتك 
20• الغاء { للغاء الامر الذي طلبته }
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'قناه السورس', url="t.me/X_G_33"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "توكن البوت" and SudoBot(msg) or text == 'جلب التوكن' and SudoBot(msg) then 
if not DevTELANDW(msg) then
send(msg.chat_id_, msg.id_,'هذا الامر خاص بمطور البوت')
return false
end
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendmessage?chat_id=' .. msg.sender_user_id_ .. '&text=' ..token) 
send(msg.chat_id_, msg.id_,' ') 
end

if text == 'قناه السورس' and DevTELANDW(msg) then
database:del(bot_id..'Srt:Bot') 
local Text = [[ 
 ◍ من أحسن السورسات على التليجرام سورس سوريا ◍
بجد سورس أمان جدا وفي مميزات جامده
تع نصب بوتك عندنا لو محظور
خش على تواصل هيدخلك لروم التواصل 
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = '𝚜𝚒𝚛𝚒𝚊 ঌ  ', url="t.me/X_G_33 "}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/X_G_33 &caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "ضع اسم للبوت" and DevTELANDW(msg) then  
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," ◍ ارسل اليه الاسم الان ")
return false
end
if text == ("الثانوين") and SudoBot(msg) then
local list = database:smembers(bot_id.."Dev:SoFi:2")
t = "\n ◍ قائمة مطورين الثانويين للبوت \n⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد مطورين ثانويين"
end
send(msg.chat_id_, msg.id_, t)
end


if text == 'الاحصائيات' and SudoBot(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' ◍ الاحصائيات  \n'..' ◍ عدد الجروبات  ⇠ {'..Groups..'}'..'\n ◍  عدد المشتركين  ⇠ {'..Users..'}'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'الاحصائيات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' ◍ الاحصائيات  \n'..' ◍ عدد الجروبات  ⇠ {'..Groups..'}'..'\n ◍  عدد المشتركين  ⇠ {'..Users..'}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'الجروبات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' ◍ عدد الجروبات  ⇠ {`'..Groups..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'المشتركين' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' ◍ عدد المشتركين  ⇠ {`'..Users..'|}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == ("المطورين") and SudoBot(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n ◍ قائمة المطورين \n⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- 「 '..v..' 」\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد مطورين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("قائمه العام") and SudoBot(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n ◍ قائمه المحظورين عام \n⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- 「 '..v..' 」\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد محظورين عام"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("قائمه الكتم العام") and SudoBot(msg) then
local list = database:smembers(bot_id..'Gmute:User')
t = "\n ◍ قائمة المكتومين عام \n⩹━━━━◍『𝚜𝚒𝚛𝚒𝚊 』◍━━━━⩺\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- 「 '..v..' 」\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد مكتومين عام"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text=="اذاعه خاص " and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ◍ ارسل الان اذاعتك؟ \n ◍ للخروج ارسل الغاء ")
return false
end 
if text=="اذاعه " and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ◍ ارسل الان اذاعتك؟ \n ◍ للخروج ارسل الغاء ")
return false
end  
if text=="اذاعه بالتوجيه " and msg.reply_to_message_id_ == 0  and SudoBot(msg) then 
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ◍ ارسل لي التوجيه الان")
return false
end 
if text=="اذاعه بالتوجيه خاص " and msg.reply_to_message_id_ == 0  and SudoBot(msg) then 
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ◍ ارسل لي التوجيه الان")
return false
end 
if text=="اذاعه بالتثبيت" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
database:setex(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ◍ ارسل الان اذاعتك؟ \n ◍ للخروج ارسل الغاء ")
return false
end
if text == 'جلب النسخه' and DevTELANDW(msg) then 
GetFile_Bot(msg)
end
if text == "تنظيف المشتركين " and SudoBot(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'• اهلا بك عزيزي ◍ •\n• لايمكنك استخدام البوت ◍ •\n• عليك الاشتراك في القناة ◍ •\n• اشترك اولا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,' ◍ لا يوجد مشتركين وهميين في البوت \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,' ◍ عدد المشتركين الان  ⇠ ( '..#pv..' )\n ◍ تم ازالة  ⇠ ( '..sendok..' ) من المشتركين\n ◍  الان عدد المشتركين الحقيقي  ⇠ ( '..ok..' ) مشترك \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الجروبات " and SudoBot(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'• اهلا بك عزيزي ◍ •\n• لايمكنك استخدام البوت ◍ •\n• عليك الاشتراك في القناة ◍ •\n• اشترك اولا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,' ◍ لا يوجد جروبات وهميه في البوت\n')   
else
local TELAND = (w + q)
local sendok = #group - TELAND
if q == 0 then
TELAND = ''
else
TELAND = '\n ◍ تم ازالة  ⇠ 「 '..q..' 」 جروبات من البوت'
end
if w == 0 then
TELANDk = ''
else
TELANDk = '\n ◍ تم ازالة  ⇠ 「 '..w..' 」 جروب لان البوت عضو'
end
send(msg.chat_id_, msg.id_,' ◍  عدد الجروبات الان  ⇠ 「 '..#group..' 」'..TELANDk..''..TELAND..'\n ◍  الان عدد الجروبات الحقيقي  ⇠ 「 '..sendok..' 」 جروبات\n')   
end
end
end,nil)
end
return false
end


if text and text:match("^رفع مطور @(.*)$") and DevTELANDW(msg) then
local username = text:match("^رفع مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◍ لا تستطيع استخدام البوت \n ◍  يرجى الاشتراك بالقناه اولا \n ◍  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")
return false 
end      
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '\n ◍ الـعـضو   ⇠ ['..result.title_..'](t.me/'..(username or 'textchuser')..')'
status  = '\n ◍ تم ترقيته مطور'
texts = usertext..status
else
texts = ' ◍ لا يوجد حساب بهاذا المعرف'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevTELANDW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◍ لا تستطيع استخدام البوت \n ◍  يرجى الاشتراك بالقناه اولا \n ◍  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n ◍ الـعـضو   ⇠ ['..data.first_name_..'](t.me/'..(data.username_ or 'textchuser')..')'
status  = '\n ◍ تم ترقيته مطور'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n ◍ الـعـضو   ⇠ '..userid..''
status  = '\n ◍ تم ترقيته مطور'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevTELANDW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◍ لا تستطيع استخدام البوت \n ◍  يرجى الاشتراك بالقناه اولا \n ◍  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n ◍ الـعـضو   ⇠ ['..result.title_..'](t.me/'..(username or 'textchuser')..')'
status  = '\n ◍ تم تنزيله من المطورين'
texts = usertext..status
else
texts = ' ◍ لا يوجد حساب بهاذا المعرف'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevTELANDW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◍ لا تستطيع استخدام البوت \n ◍  يرجى الاشتراك بالقناه اولا \n ◍  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n ◍ الـعـضو   ⇠ ['..data.first_name_..'](t.me/'..(data.username_ or 'textchuser')..')'
status  = '\n ◍ تم تنزيله من المطورين'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n ◍ الـعـضو   ⇠ '..userid..''
status  = '\n ◍ تم تنزيله من المطورين'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end

end
--------------------------------------------------------------------------------------------------------------
if text and not Special(msg) then  
local TELAND1_Msg = database:get(bot_id.."TELAND1:Add:Filter:Rp2"..text..msg.chat_id_)   
if TELAND1_Msg then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙اسم المستخدم »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n ⌯︙'..TELAND1_Msg)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end,nil)
end
end
if database:get(bot_id..'Set:Name:Bot'..msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ⌯' then   
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء حفظ اسم البوت*")
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
return false  
end 
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
database:set(bot_id..'Name:Bot',text) 
send(msg.chat_id_, msg.id_, " *⌯︙تم حفظ الاسم*")
return false
end 
if database:get(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ⌯' then   
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء الاذاعه للخاص*")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'User_Bot') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *⌯︙تمت الاذاعه الى >>{"..#list.."} مشترك في البوت* ")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ⌯' then   
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء الاذاعه*")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Chek:Groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *⌯︙تمت الاذاعه الى >>{"..#list.."} جروب في البوت* ")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ⌯' then   
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء الاذاعه*")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'Chek:Groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *⌯︙تمت الاذاعه الى >>{"..#list.."} جروبات في البوت* ")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ⌯' then   
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء الاذاعه*")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'User_Bot')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *⌯︙تمت الاذاعه الى >>{"..#list.."} مشترك في البوت* ")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *⌯︙تم الغاء الامر* ")
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({
ID = "SearchPublicChat",
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, ' *⌯︙المعرف لا يوجد فيه قناة*')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, ' *⌯︙عذا لا يمكنك وضع معرف حسابات في الاشتراك* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,' *⌯︙عذا لا يمكنك وضع معرف جروب بالاشتراك* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,' *⌯︙البوت ادمن في القناة* \n*⌯︙تم تفعيل الاشتراك الاجباري في* \n*⌯︙ايدي القناة ('..data.id_..')*\n*⌯︙معرف القناة* ([@'..data.type_.channel_.username_..'])')
database:set(bot_id..'add:ch:id',data.id_)
database:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,' *⌯︙عذرآ البوت ليس ادمن بالقناه* ')
end
return false  
end
end,nil)
end
if database:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *⌯︙تم الغاء الامر* ")
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
database:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,' *⌯︙تم تغيير رسالة الاشتراك* ')
end
local status_welcome = database:get(bot_id..'Chek:Welcome'..msg.chat_id_)
if status_welcome and not database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = '\n \n•  name \n• user' 
end 
if result.username_ then
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','@'..result.username_) 
else
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','لا يوجد') 
end
send(msg.chat_id_, msg.id_,'['..t..']')
end,nil) 
end 
end 
if database:get(bot_id.."CAPTCHA"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
captcha = math.random(4567,8907);
cap = math.random(10,50);
capt = math.random(60,90);
capc = math.random(100,500);
local Text ='• قم بختيار الرقم الصحيح الموجود في الصوره\n• ليتم الغاء تقييدك الان'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '9'..capt..'5', callback_data=capt..msg.sender_user_id_},{text =capc..'2', callback_data=capc..msg.sender_user_id_}},
{{text = '4'..cap..'8', callback_data=cap},{text = captcha, callback_data='okCaptcha'..msg.sender_user_id_}},
{{text = '1'..capt..'2', callback_data=capt},{text = '7'..capc, callback_data=capc}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://vvvzvv.ml/amir00/captcha.php?c='..captcha..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
end 

if msg.content_.ID == "MessageChatAddMembers" then 
if msg.content_.members_[0].id_ == tonumber(bot_id) then 
print("it is Bot")
N = (database:get(bot_id.."Name:Bot") or "سوريا")
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = bot_id,offset_ = 0,limit_ = 1},function(extra,result,success) 
if result.photos_[0] then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}
},
}
local msg_id = msg.id_/2097152/0.5
local Texti = "٭ مرحبا انا بوت "..N.." \n↞ اختصاصي ادارة المجموعات من السبام والخ..\n↞ للتفعيل ارفعني مشرف وارسل تفعيل في المجموعه ."
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Texti)..'&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)
end,nil)
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,' *⌯︙عذرآ البوت ليس ادمن بالقناه* ')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,' *⌯︙عذرآ البوت لايملك صلاحيات*')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,' *⌯︙تم تغيير صورة الجروب*')
end
end, nil) 
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء وضع الوصف*")
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request('https://api.telegram.org/bot'..token..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
send(msg.chat_id_, msg.id_,' *⌯︙تم تغيير وصف الجروب*')
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء حفظ الترحيب*")
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id..'Get:Welcome:Group'..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,' *⌯︙تم حفظ ترحيب الجروب*')
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == 'الغاء' then
send(msg.chat_id_,msg.id_," *⌯︙تم الغاء حفظ الرابط*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then 
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_," *⌯︙تم حفظ الرابط بنجاح*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 
--------------------------------------------------------------------------------------------------------------
if TELAND_Msg and not Special(msg) then  
local TELAND_Msg = database:get(bot_id.."Add:Filter:Rp2"..text..msg.chat_id_)   
if TELAND_Msg then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *⌯︙العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n⌯︙["..TELAND_Msg.."] \n")
else
send(msg.chat_id_,0," *⌯︙العضو :* {["..data.first_name_.."](T.ME/X_G_33)}\n⌯︙["..TELAND_Msg.."] \n")
end
end,nil)   
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if not Special(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") or 'nil'
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") 
trigger_anti_spam(msg,type)  
end
database:setex(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_, tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or 'nil'  
NUM_MSG_MAX = 5
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") then
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") then
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Special(msg) then 
list = {"كس","كسمك","كسختك","عير","كسخالتك","خرا بالله","عير بالله","كسخواتكم","كحاب","مناويج","مناويج","كحبه","ابن الكحبه","فرخ","فروخ","طيزك","طيزختك"}
for k,v in pairs(list) do
print(string.find(text,v))
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Special(msg) then 
list = {"ڄ","گ","که","پی","خسته","برم","راحتی","بیام","بپوشم","گرمه","چه","چ","ڬ","ٺ","چ","ڇ","ڿ","ڀ","ڎ","ݫ","ژ","ڟ","ݜ","ڸ","پ","۴","زدن","دخترا","دیوث","مک","زدن","خالی بند","عزیزم خوبی","سلامت باشی","میخوام","خوببی","ميدم","کی اومدی","خوابیدین"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Engilsh'..msg.chat_id_) and not Special(msg) then 
list = {'a','u','y','l','t','b','A','Q','U','J','K','L','B','D','L','V','Z','k','n','c','r','q','o','z','I','j','m','M','w','d','h','e'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id..'lock:text'..msg.chat_id_) and not Special(msg) then   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Special(msg) then   
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
chat_kick(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Special(msg) then 
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
chat_kick(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Special(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Special(msg) then
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessagePhoto' and not Special(msg) then 
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVideo' and not Special(msg) then 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAnimation' and not Special(msg) then 
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Special(msg) then 
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAudio' and not Special(msg) then 
if database:get(bot_id.."lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVoice' and not Special(msg) then 
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not Special(msg) then 
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageSticker' and not Special(msg) then 
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
if tonumber(msg.via_bot_user_id_) ~= 0 and not Special(msg) then
if database:get(bot_id.."lock:inline"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Special(msg) then 
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageDocument' and not Special(msg) then 
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Special(msg) then  
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then  
if not Special(msg) then
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageContact' and not Special(msg) then  
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Special(msg) then  
local _nl, ctrl_ = string.gsub(text, '%c', '')  
local _nl, real_ = string.gsub(text, '%d', '')   
sens = 400  
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if BasicConstructor(msg) then 
if (msg.content_.ID == "MessagePhoto" or msg.content_.ID == "MessageSticker" or msg.content_.ID == "MessageVideo" or msg.content_.ID == "MessageAnimation" or msg.content_.ID == "MessageUnsupported") and database:get(bot_id.."LoMsg"..msg.chat_id_) then
database:sadd(bot_id..":IdMsg:"..msg.chat_id_,msg.id_)
GetTi = database:get(bot_id..':TiMsg:'..msg.chat_id_)
if GetTi then 
GetTi = tonumber(GetTi)
GetTi = 60*60*GetTi
end
database:setex(bot_id..":STiMsg:"..msg.chat_id_..msg.id_,GetTi or 21600,true)  
end
local DoTi = database:smembers(bot_id..":IdMsg:"..msg.chat_id_)
for k,v in pairs(DoTi) do
if not database:get(bot_id..":STiMsg:"..msg.chat_id_..v) then
DeleteMessage(msg.chat_id_, {[0] = v}) 
database:srem(bot_id..":IdMsg:"..msg.chat_id_,v)
end
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if msg.content_.ID == 'MessageSticker' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0, " *⌯︙عذرا ↫* {[@"..data.username_.."]}\n*⌯︙عذرا تم منع الملصق* \n" ) 
else
send(msg.chat_id_,0, " *⌯︙عذرا ↫* {["..data.first_name_.."](T.ME/X_G_33)}\n*⌯︙عذرا تم منع الملصق* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
if msg.content_.ID == 'MessagePhoto' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.sizes_[1].photo_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," ⌯︙عذرا ↫ {[@"..data.username_.."]}\n ⌯︙عذرا تم منع الصوره \n" ) 
else
send(msg.chat_id_,0," ⌯︙عذرا ↫ {["..data.first_name_.."](T.ME/X_G_33)}\n ⌯︙عذرا تم منع الصوره \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if msg.content_.ID == 'MessageAnimation' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *⌯︙عذرا ↫* {[@"..data.username_.."]}\n*⌯︙عذرا تم منع المتحركه* \n") 
else
send(msg.chat_id_,0," *⌯︙عذرا ↫* {["..data.first_name_.."](T.ME/X_G_33)}\n*⌯︙عذرا تم منع المتحركه* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end

if text == 'تفعيل' and Sudo(msg) and GetChannelMember(msg) then
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' ⌯︙عذرا يرجى ترقيه البوت مشرف !')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevTELANDW(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙عدد اعضاء الجروب قليله يرجى جمع >> {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو*')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *⌯︙بالتأكيد تم تفعيل الجروب*')
else
sendText(msg.chat_id_,'\n *⌯︙بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*⌯︙تم تفعيل الجروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."CoSu"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *⌯︙تم تفعيل جروب جديده*\n'..
'\n *⌯︙بواسطة* {'..Name..'}'..
'\n *⌯︙ايدي الجروب* {'..IdChat..'}'..
'\n *⌯︙اسم الجروب* {['..NameChat..']}'..
'\n *⌯︙عدد اعضاء الجروب* *{'..NumMember..'}*'..
'\n *⌯︙الرابط* {['..LinkGp..']}'
if not DevTELANDW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and Sudo(msg) and GetChannelMember(msg) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *⌯︙بالتأكيد تم تعطيل الجروب*')
else
sendText(msg.chat_id_,'\n *⌯︙بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*⌯︙تم تعطيل الجروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '\nتم تعطيل الجروب  ⌯︙'..
'\n ⌯︙بواسطة {'..Name..'}'..
'\n ⌯︙ايدي الجروب {'..IdChat..'}'..
'\n ⌯︙اسم الجروب {['..NameChat..']}'..
'\n ⌯︙الرابط {['..LinkGp..']}'
if not DevTELANDW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not Sudo(msg) and not database:get(bot_id..'Free:Bots') and GetChannelMember(msg) then
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevTELANDW(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙عدد اعضاء الجروب قليله يرجى جمع >>* {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'مشرف'
end
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تفعيل الجروب*')
else
sendText(msg.chat_id_,'\n *⌯︙بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*⌯︙تم تفعيل الجروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."CoSu"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *⌯︙تم تفعيل جروب جديده*\n'..
'\n *⌯︙بواسطة* {'..Name..'}'..
'\n *⌯︙موقعه في الجروب *{'..AddPy..'}' ..
'\n *⌯︙ايدي الجروب* {'..IdChat..'}'..
'\n *⌯︙عدد اعضاء الجروب* *{'..NumMember..'}*'..
'\n *⌯︙اسم الجروب* {['..NameChat..']}'..
'\n *⌯︙الرابط* {['..LinkGp..']}'
if not DevTELANDW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end
if text and text:match("^ضع عدد الاعضاء (%d+)$") and DevTELANDW(msg) then
local Num = text:match("ضع عدد الاعضاء (%d+)$") 
database:set(bot_id..'Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,' *⌯︙تم تعيين عدد الاعضاء سيتم تفعيل الجروبات التي اعضائها اكثر من  >> {'..Num..'} عضو*')
end
if text == 'تحديث السورس' and DevTELANDW(msg) then 
os.execute('rm -rf TELAND.lua')
os.execute('wget https://raw.githubusercontent.com/gret7/alhref/main/TELAND.lua')
send(msg.chat_id_, msg.id_,' *⌯︙تم تحديث السورس* \n*⌯︙لديك اخر اصدار لسورس سوريا*\n*⌯︙الاصدار » { 2.8v}*')
dofile('TELAND.lua')  
end
if text and text:match("^تغير الاشتراك$") and DevTELANDW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *⌯︙حسنآ ارسل لي معرف القناة*')
return false  
end
if text and text:match("^تغير رساله الاشتراك$") and DevTELANDW(msg) then  
database:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *⌯︙حسنآ ارسل لي النص الذي تريده*')
return false  
end
if text == "حذف رساله الاشتراك ⌯" and DevTELANDW(msg) then  
database:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, " *⌯︙تم مسح رساله الاشتراك* ")
return false  
end
if text and text:match("^وضع قناة الاشتراك ⌯$") and DevTELANDW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *⌯︙حسنآ ارسل لي معرف القناة*')
return false  
end
if text == "تفعيل الاشتراك الاجباري ⌯" and DevTELANDW(msg) then  
if database:get(bot_id..'add:ch:id') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_," *⌯︙الاشتراك الاجباري مفعل* \n*⌯︙على القناة »* ["..addchusername.."]")
else
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_," *⌯︙اهلا عزيزي المطور* \n*⌯︙ارسل الان معرف قناتك*")
end
return false  
end
if text == "تعطيل الاشتراك الاجباري ⌯" and DevTELANDW(msg) then  
database:del(bot_id..'add:ch:id')
database:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *⌯︙تم تعطيل الاشتراك الاجباري* ")
return false  
end
if text == "الاشتراك الاجباري ⌯" and DevTELANDW(msg) then  
if database:get(bot_id..'add:ch:username') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *⌯︙تم تفعيل الاشتراك الاجباري* \n*⌯︙على القناة »* ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, " *⌯︙لا يوجد قناة في الاشتراك الاجباري* ")
end
return false  
end
if text == "تفعيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙ تم تفعيل الاضافات*')
database:set(bot_id.."AL:Sre:stats","✔")
end
if text == "تعطيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙ تم تعطيل الاضافات*')
database:set(bot_id.."AL:Sre:stats","❌")
end
if text == "الاضافات" and Constructor(msg) then
local AMIRDEV = database:get(bot_id.."AL:Sre:stats") or "لم يتم التحديد"
send(msg.chat_id_, msg.id_,"*حاله الاضافات هي : {"..AMIRDEV.."}*\n*اذا كانت {✔} الاضافات مفعله*\n*اذا كانت {❌} الاضافات معطله*")
end
function bnnaGet(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end

if database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
if text and text:match("^كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local BlNe = text:match("^كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*⌯︙تم كتم الاسم* '..BlNe)
database:sadd(bot_id.."TELAND:blocname"..msg.chat_id_, BlNe)
end

if text and text:match("^الغاء كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local delBn = text:match("^الغاء كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*⌯︙تم الغاء كتم الاسم* '..delBn)
database:srem(bot_id.."TELAND:blocname"..msg.chat_id_, delBn)
end

if text == "مسح الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
database:del(bot_id.."TELAND:blocname"..msg.chat_id_)
texts = "*⌯︙تم مسح الاسماء المكتومه* "
send(msg.chat_id_, msg.id_, texts)
end
if text == "الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local All_name = database:smembers(bot_id.."TELAND:blocname"..msg.chat_id_)
t = "\n*⌯︙قائمة الاسماء المكتومه* \n*•━━━━━━ ??𝗘 ━━━━━━━•*\n"
for k,v in pairs(All_name) do
t = t..""..k.."- (["..v.."])\n"
end
if #All_name == 0 then
t = "*⌯︙لا يوجد اسماء مكتومه*"
end
send(msg.chat_id_, msg.id_, t)
end
end
if text == "تفعيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم التفعيل الاسماء المكتومه*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"open")
end
if text == "تعطيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل الاسماء المكتومه*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"close")
end
if not Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
function VVVZVV_name(t1,t2)
if t2.id_ then 
name_TELAND = ((t2.first_name_ or "") .. (t2.last_name_ or ""))
if name_TELAND then 
names_TELAND = database:smembers(bot_id.."TELAND:blocname"..msg.chat_id_) or ""
if names_TELAND and names_TELAND[1] then 
for i=1,#names_TELAND do 
if name_TELAND:match("(.*)("..names_TELAND[i]..")(.*)") then 
DeleteMessage_(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
end
end
bnnaGet(msg.sender_user_id_, VVVZVV_name)
end
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
if text and text:match("^وضع توحيد (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local teh = text:match("^وضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'*⌯︙تم تعيين '..teh..' كتوحيد للمجموعه*')
database:set(bot_id.."TELAND:teh"..msg.chat_id_,teh)
end
if text and text:match("^تعين عدد الكتم (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local nump = text:match("^تعين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'*⌯︙تم تعين  '..nump..' عدد الكتم*')
database:set(bot_id.."TELAND:nump"..msg.chat_id_,nump)
end
if text == "التوحيد" then
local s1 = database:get(bot_id.."TELAND:teh"..msg.chat_id_) or "لا يوجد توحيد"
local s2 = database:get(bot_id.."TELAND:nump"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'*⌯︙التوحيد '..s1..'*\n*⌯︙عدد الكتم  :* '..s2)
end
end
if text == "تفعيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تفعيل التوحيد*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"open")
end
if text == "تعطيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل التوحيد*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"close")
end
if not Constructor(msg) then
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open"  and database:get(bot_id.."TELAND:teh"..msg.chat_id_) then 
id = msg.sender_user_id_
function amir_TELANDa_new(TELAND1,TELAND2)
if TELAND2 and TELAND2.first_name_ then 
if TELAND2.first_name_:match("(.*)"..database:get(bot_id.."TELAND:teh"..msg.chat_id_).."(.*)") then 
database:srem(bot_id.."TELAND:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else
local TELAND_nnn = database:get(bot_id.."TELAND:nump"..msg.chat_id_) or 5
local TELAND_nnn2 = database:get(bot_id.."TELAND:nump22"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(TELAND_nnn2) == tonumber(TELAND_nnn) or tonumber(TELAND_nnn2) > tonumber(TELAND_nnn)) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_, msg.sender_user_id_)
else 
database:incrby(bot_id.."TELAND:nump22"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "⌯︙عزيزي >>["..TELAND2.username_.."](https://t.me/"..(TELAND2.username_ or "X_G_33")..")\n⌯︙عليك وضع التوحيد ⪼ {"..database:get(bot_id.."TELAND:teh"..msg.chat_id_).."} بجانب اسمك\n⌯︙عدد المحاولات المتبقيه {"..(tonumber(TELAND_nnn) - tonumber(TELAND_nnn2)).."}")
end
end
end
end
bnnaGet(id, amir_TELANDa_new)
end
end
if text == "تفعيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تفعيل تنبيه الاسماء*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل تنبيه الاسماء*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:BBE:stats"..msg.chat_id_) == "open" then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local TELANDChengName = database:get(bot_id.."TELAND:Cheng:Name"..data.id_)
if not data.first_name_ then 
if TELANDChengName then 
send(msg.chat_id_, msg.id_, " خوش معرف جان ["..TELANDChengName..']')
database:del(bot_id.."TELAND:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if TELANDChengName ~= data.first_name_ then 
local Text = {
  "جان خوش اسم يول",
"ليش غيرته اسمك بس لا خانوك/ج",
"هذا الحلو غير اسمه 😉",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."TELAND:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end
if text == "تفعيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تفعيل تنبيه المعرف*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل تنبيه المعرف*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Userr:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local TELANDChengUserName = database:get(bot_id.."TELAND:Cheng:UserName"..data.id_)
if not data.username_ then 
if TELANDChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه  : [@"..TELANDChengUserName..']')
database:del(bot_id.."TELAND:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if TELANDChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت معرفك شنو نشروك بقنوات فضايح😂🥺',
"هاها شو غيرت معرفك بس لا هددتك/ج الحب",
"شسالفه شو غيرت معرفك 😐🌝",
"غير معرفه خمطو بساع بساع \n هاذه معرفه : @"..data.username_.."",
'ها عار مو جان معرفك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير معرفك بيش مشتري يول', 
"منور معرف جديد :  "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."TELAND:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end
if text == "تفعيل الرسائل اليوميه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙تم تفعيل الرسائل اليوميه*')
database:set(bot_id.."msg:match:"..msg.chat_id_,true)
end
if text == "تعطيل الرسائل اليوميه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*⌯︙تم تعطيل الرسائل اليوميه*')
database:del(bot_id.." msg:match:"..msg.chat_id_)
end
if database:get(bot_id.."msg:match:"..msg.chat_id_) then
if msg.content_.ID then
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
gms = get_msg + 1
database:setex(bot_id..'msg:match:'..msg.sender_user_id_..":"..msg.chat_id_,86400,gms)
end
if text == "تفاعلي اليوم" and tonumber(msg.reply_to_message_id_) == 0 then    
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*⌯︙عدد رسائلك الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
if text == "تفاعله اليوم" and tonumber(msg.reply_to_message_id_) > 0 then    
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
get_msg = database:get(bot_id.."msg:match:"..result.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*⌯︙عدد رسائل اشخص الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
end
if text == "تفعيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تفعيل تنبيه الصور*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل تنبيه الصور*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Ph:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local TELANDChengPhoto = database:get(bot_id.."TELAND:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if TELANDChengPhoto then 
send(msg.chat_id_, msg.id_, "حذف كل صور ابن الحلو شكد غبي لعد😂🥺")
database:del(bot_id.."TELAND:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if TELANDChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
  "شكو غيرت صورتك يلصاك",
  "منور طالع حلو ع صوره جديده",
  "ها يول شو غيرت صورتك😍😂",
  "شكو غيرت صورتك شنو قطيت وحده جديده 😹😹🌚",
  "شو غيرت صورتك شنو تعاركت ويه الحب ؟😹🌞",
  "شكو غيرت الصوره شسالفه ؟؟ 🤔🌞",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."TELAND:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end
if text == 'السورس' or text == 'سورس' or text == 'يا سورس' or text == 'source' then
local msg_id = msg.id_/2097152/0.5
local Text = [[
◍ 𝗧𝗛𝗘 𝗕𝗘𝗦𝗧 𝗘𝗚 𝗦𝗢𝗥𝗖𝗘 𝗜𝗡 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔 𝗟𝗘𝗚𝗥𝗔𝗠 ⶄ 
🌖
◍ 𝙎𝙐𝙍𝘾𝙀 𝙎𝙄𝙍𝙄𝘼 𝘽𝙀𝙎𝙏 𝙎𝙐𝙍𝘾𝙀 𖢝  🐾
ᶠᵒˡˡᵒʷ ᵗʰᵉ ᵈᵉᵛᵉˡᵒᵖᵉʳ ᵇᵘᵗᵗᵒᶰˢ ᵇᵉˡᵒʷ ♰ 
...
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '  ◍ 𝘼𝙃𝙈𝙀𝘿 𝙎𝙄𝙍𝙄𝘼  𖣌 ',url="t.me/siria100"}},
{{text = '  ◍ 𝙆𝘼𝙎𝘼𝙃𝘼 ↺  𖣌 ', url="t.me/MR_AAS"}},
{{text = '   ◍ 𝙈𝙔 𝘾𝙃𝘼𝙉𝙀𝙀𝙀𝙇 𖢑  𖣌  ', url="t.me/X_G_33"}},
}
https.request("https://api.telegram.org/bot"..token..'/sendvideo?chat_id=' .. msg.chat_id_ .. '&video=https://t.me/X_G_33/1469&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
if text == 'رفع نسخه الاحتياطيه' and DevTELANDW(msg) then  
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
AddFile_Bot(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'جلب نسخه الاحتياطيه' and DevTELANDW(msg) then  
GetFile_Bot(msg)
end
if text == 'الاوامر المضافه' and Constructor(msg) then
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_..'')
t = " *⌯︙قائمه الاوامر المضافه*  \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
print(Cmds)
if Cmds then 
t = t..""..k..">> ("..v..") » {"..Cmds.."}\n"
else
t = t..""..k..">> ("..v..") \n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد اوامر مضافه*"
end
send(msg.chat_id_, msg.id_,'['..t..']')
end
if text == 'حذف الاوامر المضافه' or text == 'مسح الاوامر المضافه' then
if Constructor(msg) then 
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
database:del(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,' *⌯︙تم ازالة جميع الاوامر المضافه*')  
end
end
if text == 'تفعيل اليوتيوب' and Mod(msg) and GetChannelMember(msg) then  
database:del(bot_id..'searchinbot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *⌯︙تم تفعيل اليوتيوب*') 
return false  
end
if text == 'تعطيل اليوتيوب' and Mod(msg) and GetChannelMember(msg) then  
database:set(bot_id..'searchinbot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل اليوتيوب*') 
return false  
end
if not database:get(bot_id..'searchinbot'..msg.chat_id_) then
if text and text:match('^بحث (.*)$') then 
local TextSearch = text:match('^بحث (.*)$') 
local msg_id = msg.id_/2097152/0.5
local done = json:decode(https.request("https://vvvzvv.ml/Xx/searchinbot.php?token="..token.."&chat_id="..msg.chat_id_.."&from="..msg.sender_user_id_.."&msg="..msg_id.."&Text="..TextSearch.."&n=s")) 
end
end
if text == "ترتيب الاوامر" and Constructor(msg) then
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":ا","ايدي")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"ا")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":م","رفع مميز")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"م")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":اد","رفع ادمن")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"اد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":مد","رفع مدير")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"مد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":من","رفع منشئ")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"من")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":اس","رفع منشئ اساسي")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"اس")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تعط","تعطيل الايدي بالصوره")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تعط")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تفع","تفعيل الايدي بالصوره")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تفع")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تك","تنزيل الكل")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تك")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":رد","اضف رد")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"رد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":حذ","حذف رد")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"حذ")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":ت","تثبيت")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"ت")
 send(msg.chat_id_, msg.id_,"*⌯︙تم ترتيب الاوامر بالشكل التالي*\n*⌯︙ايدي - ا .*\n*⌯︙مميز - م .\n⌯︙ادمن - اد .*\n*⌯︙مدير - مد . \n⌯︙منشى - من .*\n*⌯︙المنشئ الاساسي - اس .*\n*⌯︙تعطيل الايدي بالصوره - تعط .*\n*⌯︙تفعيل الايدي بالصوره - تفع .*\n*⌯︙تنزيل الكل - تك .*\n*⌯︙اضف رد - رد .*\n*⌯︙حذف رد - حذ .*\n*⌯︙تثبيت - ت .*")
 end
if text == 'اضف امر' and Constructor(msg) and GetChannelMember(msg) then  
database:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الامر القديم*')  
return false
end
if text == 'حذف امر' or text == 'مسح امر' and GetChannelMember(msg)  and  Constructor(msg) then
database:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الامر الذي قمت بوضعه بدلا عن القديم*')  
return false
end
if text and database:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
database:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الامر الجديد*')  
database:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
database:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_,'true1') 
return false
end
if text and database:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_) == 'true1' then
local NewCmd = database:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text,NewCmd)
database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *⌯︙تم حفظ الامر*')  
database:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end
if text == 'السيرفر' and SudoBot(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end

--------------------------------------------------------------------------------------------------------------
if text == "تفعيل تنظيف التلقائي" and BasicConstructor(msg)  then
database:set(bot_id.."LoMsg"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_, '*⌯︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تم تفعيل التنظيف التلقائي* ')
return false
end
if text == "تعطيل تنظيف التلقائي" and BasicConstructor(msg) then
database:del(bot_id.."LoMsg"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*⌯︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تم تعطيل التنظيف التلقائي* ')
return false
end
if text == 'قفل الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:text"..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)  
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الدردشه* ')
end,nil)   
elseif text == 'قفل الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:AddMempar"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل اضافة* ')
end,nil)   
elseif text == 'قفل الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Join"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل دخول* ')
end,nil)   
elseif text == 'قفل البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل البوتات* ')
end,nil)   
elseif text == 'قفل البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل البوتات بالطرد* ')
end,nil)   
elseif text == 'قفل الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:set(bot_id..'lock:tagservr'..msg.chat_id_,true)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الاشعارات* ')
end,nil)   
elseif text == 'قفل التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."lockpin"..msg.chat_id_, true) 
database:sadd(bot_id..'lock:pin',msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,data.pinned_message_id_)  end,nil)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التثبيت* ')
end,nil)   
elseif text == 'قفل التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id..'lock:edit'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل تعديل* ')
end,nil)   
elseif text == 'قفل الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الفشار* ')
end,nil)  
elseif text == 'قفل الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الفارسيه* ')
end,nil)   
elseif text == 'قفل الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Engilsh'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل النكليزيه* ')
end,nil)
elseif text == 'قفل الانلاين' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:inline"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الانلاين* ')
end,nil)
elseif text == 'قفل تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:set(bot_id..'lock_edit_med'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل تعديل* ')
end,nil)   
elseif text == 'قفل الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagservrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل جميع الاوامر* ')
end,nil)   
end
if text == 'قفل الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Lock:Xn"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الاباحي* ')
end,nil)   
elseif text == 'فتح الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Lock:Xn"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الاباحي* ')
end,nil)   
end
if text == 'فتح الانلاين' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:inline"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الانلاين* ')
end,nil)
elseif text == 'فتح الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:AddMempar"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح اضافة* ')
end,nil)   
elseif text == 'فتح الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id.."lock:text"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الدردشه* ')
end,nil)   
elseif text == 'فتح الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Join"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح دخول* ')
end,nil)   
elseif text == 'فتح البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح البوتات* ')
end,nil)   
elseif text == 'فتح البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح البوتات بالطرد* ')
end,nil)   
elseif text == 'فتح الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:del(bot_id..'lock:tagservr'..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح الاشعارات* ')
end,nil)   
elseif text == 'فتح التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."lockpin"..msg.chat_id_)  
database:srem(bot_id..'lock:pin',msg.chat_id_)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح التثبيت* ')
end,nil)   
elseif text == 'فتح التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id..'lock:edit'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح تعديل* ')
end,nil)   
elseif text == 'فتح الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح الفشار* ')
end,nil)   
elseif text == 'فتح الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح الفارسيه* ')
end,nil)   
elseif text == 'فتح الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Engilsh'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح النكليزيه* ')
end,nil)
elseif text == 'فتح تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:del(bot_id..'lock_edit_med'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح تعديل* ')
end,nil)   
elseif text == 'فتح الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagservrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح جميع الاوامر* ')
end,nil)   
end
if text == 'قفل الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الروابط* ')
end,nil)   
elseif text == 'قفل الروابط بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الروابط بالتقييد* ')
end,nil)   
elseif text == 'قفل الروابط بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الروابط بالكتم* ')
end,nil)   
elseif text == 'قفل الروابط بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الروابط بالطرد* ')
end,nil)   
elseif text == 'فتح الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Link"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الروابط* ')
end,nil)   
end
if text == 'قفل المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المعرفات* ')
end,nil)   
elseif text == 'قفل المعرفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المعرفات بالتقييد* ')
end,nil)   
elseif text == 'قفل المعرفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المعرفات بالكتم* ')
end,nil)   
elseif text == 'قفل المعرفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المعرفات بالطرد* ')
end,nil)   
elseif text == 'فتح المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:user:name"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح المعرفات* ')
end,nil)   
end
if text == 'تفعيل نسبه الحب' and Manager(msg) then   
if database:get(bot_id..'Cick:lov'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل نسبه الحب*'
database:del(bot_id..'Cick:lov'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل نسبه الحب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الحب' and Manager(msg) then  
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..'Cick:lov'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل نسبه الحب*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل نسبه الحب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الرجوله' and Manager(msg) then   
if database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل نسبه الرجوله*'
database:del(bot_id..'Cick:rjo'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل الرجوله*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الرجوله' and Manager(msg) then  
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..'Cick:rjo'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل نسبه الرجوله*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل نسبه الرجوله*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الكره' and Manager(msg) then   
if database:get(bot_id..'Cick:krh'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل نسبه الكره*'
database:del(bot_id..'Cick:krh'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل نسبه الكره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الكره' and Manager(msg) then  
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..'Cick:krh'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل نسبه الكره*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل نسبه الكره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الانوثه' and Manager(msg) then   
if database:get(bot_id..'Cick:ano'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل نسبه الانوثه*'
database:del(bot_id..'Cick:ano'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل الانوثه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الانوثه' and Manager(msg) then  
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..'Cick:ano'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل نسبه الانوثه*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل نسبه الانوثه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل غنيلي' and SudoBotCoSu(msg) then   
if database:get(bot_id..'sing:for:me'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل امر غنيلي الان ارسل غنيلي*'
database:del(bot_id..'sing:for:me'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل امر غنيلي تستطيع ارسال غنيلي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل غنيلي' and SudoBotCoSu(msg) then  
if not database:get(bot_id..'sing:for:me'..msg.chat_id_) then
database:set(bot_id..'sing:for:me'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل امر غنيلي*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل امر غنيلي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'قفل التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التاك* ')
end,nil)   
elseif text == 'قفل التاك بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التاك بالتقييد* ')
end,nil)   
elseif text == 'قفل التاك بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..string.sub(data.first_name_,0,60)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التاك بالكتم* ')
end,nil)   
elseif text == 'قفل التاك بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التاك بالطرد* ')
end,nil)   
elseif text == 'فتح التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:hashtak"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح التاك* ')
end,nil)   
end
if text == 'قفل الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الشارحه* ')
end,nil)   
elseif text == 'قفل الشارحه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الشارحه بالتقييد* ')
end,nil)   
elseif text == 'قفل الشارحه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الشارحه بالكتم* ')
end,nil)   
elseif text == 'قفل الشارحه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الشارحه بالطرد* ')
end,nil)   
elseif text == 'فتح الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Cmd"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الشارحه* ')
end,nil)   
end
if text == 'قفل الصور'and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصور* ')
end,nil)   
elseif text == 'قفل الصور بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصور بالتقييد* ')
end,nil)   
elseif text == 'قفل الصور بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصور بالكتم* ')
end,nil)   
elseif text == 'قفل الصور بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصور بالطرد* ')
end,nil)   
elseif text == 'فتح الصور' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Photo"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الصور* ')
end,nil)   
end
if text == 'قفل الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الفيديو* ')
end,nil)   
elseif text == 'قفل الفيديو بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الفيديو بالتقييد* ')
end,nil)   
elseif text == 'قفل الفيديو بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الفيديو بالكتم* ')
end,nil)   
elseif text == 'قفل الفيديو بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الفيديو بالطرد* ')
end,nil)   
elseif text == 'فتح الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Video"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الفيديو* ')
end,nil)   
end
if text == 'قفل المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,'  *⌯︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المتحركه* ')
end,nil)   
elseif text == 'قفل المتحركه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المتحركه بالتقييد* ')
end,nil)   
elseif text == 'قفل المتحركه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المتحركه بالكتم* ')
end,nil)   
elseif text == 'قفل المتحركه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل المتحركه بالطرد* ')
end,nil)   
elseif text == 'فتح المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Animation"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح المتحركه* ')
end,nil)   
end
if text == 'قفل الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الالعاب* ')
end,nil)   
elseif text == 'قفل الالعاب بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الالعاب بالتقييد* ')
end,nil)   
elseif text == 'قفل الالعاب بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الالعاب بالكتم* ')
end,nil)   
elseif text == 'قفل الالعاب بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الالعاب بالطرد* ')
end,nil)   
elseif text == 'فتح الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:geam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الالعاب* ')
end,nil)   
end
if text == 'قفل الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الاغاني* ')
end,nil)   
elseif text == 'قفل الاغاني بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الاغاني بالتقييد* ')
end,nil)   
elseif text == 'قفل الاغاني بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الاغاني بالكتم* ')
end,nil)   
elseif text == 'قفل الاغاني بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الاغاني بالطرد* ')
end,nil)   
elseif text == 'فتح الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Audio"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الاغاني* ')
end,nil)   
end
if text == 'قفل الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصوت* ')
end,nil)   
elseif text == 'قفل الصوت بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصوت بالتقييد* ')
end,nil)   
elseif text == 'قفل الصوت بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصوت بالكتم* ')
end,nil)   
elseif text == 'قفل الصوت بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الصوت بالطرد* ')
end,nil)   
elseif text == 'فتح الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:vico"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n *⌯︙تـم فتح الصوت* ')
end,nil)   
end
if text == 'قفل الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكيبورد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكيبورد بالتقييد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكيبورد بالكتم* ')  
end,nil)   
elseif text == 'قفل الكيبورد بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكيبورد بالطرد* ')  
end,nil)   
elseif text == 'فتح الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Keyboard"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الكيبورد* ')  
end,nil)   
end
if text == 'قفل الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملصقات* ')  
end,nil)   
elseif text == 'قفل الملصقات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملصقات بالتقييد* ')  
end,nil)
elseif text == 'قفل الملصقات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملصقات بالكتم* ')  
end,nil)   
elseif text == 'قفل الملصقات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملصقات بالطرد* ')  
end,nil)   
elseif text == 'فتح الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Sticker"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الملصقات* ')  
end,nil)   
end
if text == 'قفل التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التوجيه* ')  
end,nil)   
elseif text == 'قفل التوجيه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التوجيه بالتقييد* ')  
end,nil)
elseif text == 'قفل التوجيه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التوجيه بالكتم* ')  
end,nil)   
elseif text == 'قفل التوجيه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التوجيه بالطرد* ')  
end,nil)   
elseif text == 'فتح التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:forward"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح التوجيه* ')  
end,nil)   
end
if text == 'قفل الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملفات* ')  
end,nil)   
elseif text == 'قفل الملفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملفات بالتقييد* ')  
end,nil)
elseif text == 'قفل الملفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملفات بالكتم* ')  
end,nil)   
elseif text == 'قفل الملفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الملفات بالطرد* ')  
end,nil)   
elseif text == 'فتح الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Document"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الملفات* ')  
end,nil)   
end
if text == 'قفل السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل السيلفي* ')  
end,nil)   
elseif text == 'قفل السيلفي بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل السيلفي بالتقييد* ')  
end,nil)
elseif text == 'قفل السيلفي بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل السيلفي بالكتم* ')  
end,nil)   
elseif text == 'قفل السيلفي بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل السيلفي بالطرد* ')  
end,nil)   
elseif text == 'فتح السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Unsupported"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح السيلفي* ')  
end,nil)   
end
if text == 'قفل الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الماركداون* ')  
end,nil)   
elseif text == 'قفل الماركداون بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الماركداون بالتقييد* ')  
end,nil)
elseif text == 'قفل الماركداون بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الماركداون بالكتم* ')  
end,nil)   
elseif text == 'قفل الماركداون بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الماركداون بالطرد* ')  
end,nil)   
elseif text == 'فتح الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Markdaun"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الماركداون* ')  
end,nil)   
end
if text == 'قفل الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الجهات* ')  
end,nil)   
elseif text == 'قفل الجهات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الجهات بالتقييد* ')  
end,nil)
elseif text == 'قفل الجهات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الجهات بالكتم* ')  
end,nil)   
elseif text == 'قفل الجهات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الجهات بالطرد* ')  
end,nil)   
elseif text == 'فتح الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Contact"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الجهات* ')  
end,nil)   
end
if text == 'قفل الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكلايش* ')  
end,nil)   
elseif text == 'قفل الكلايش بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكلايش بالتقييد* ')  
end,nil)
elseif text == 'قفل الكلايش بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكلايش بالكتم* ')  
end,nil)   
elseif text == 'قفل الكلايش بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل الكلايش بالطرد* ')  
end,nil)   
elseif text == 'فتح الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Spam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فتح الكلايش* ')  
end,nil)   
end
if text == 'قفل التكرار بالطرد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'kick')  
send(msg.chat_id_, msg.id_,' *⌯︙تم قفل التكرار بالطرد*')
elseif text == 'قفل التكرار' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'del')  
send(msg.chat_id_, msg.id_,' *⌯︙تم قفل التكرار*')
elseif text == 'قفل التكرار بالتقييد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'keed')  
send(msg.chat_id_, msg.id_,' *⌯︙تم قفل التكرار بالتقييد*')
elseif text == 'قفل التكرار بالكتم' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'mute')  
send(msg.chat_id_, msg.id_,' *⌯︙تم قفل التكرار بالكتم*')
elseif text == 'فتح التكرار' and Mod(msg) then 
database:hdel(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood")  
send(msg.chat_id_, msg.id_,' *⌯︙تم فتح التكرار*')
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تحديث' and DevTELANDW(msg) then
dofile('TELAND.lua')  
send(msg.chat_id_, msg.id_, ' *⌯︙تم تحديث جميع الملفات*') 
end 
if text == ("مسح قائمه العام") and DevTELANDW(msg) then
database:del(bot_id..'GBan:User')
send(msg.chat_id_, msg.id_, '\n *⌯︙تم مسح قائمه العام*')
return false
end
if text == ("قائمه العام") and DevTELANDW(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n *⌯︙قائمة المحظورين عام* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد محظورين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("حظر عام") and msg.reply_to_message_id_ and DevTELANDW(msg) then  
function start_function(extra, result, success)
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id..'GBan:User', result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevTELANDW(msg) then  
local username = text:match("^حظر عام @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع حظر البوت عام*")
return false 
end
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم حظره عام من الجروبات*'
texts = usertext..status
database:sadd(bot_id..'GBan:User', result.id_)
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^حظر عام (%d+)$") and DevTELANDW(msg) then  
local userid = text:match("^حظر عام (%d+)$")
if TELANDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id..'GBan:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("كتم عام") and msg.reply_to_message_id_ and DevTELANDW(msg) then  
function start_function(extra, result, success)
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع كتم البوت عام*")
return false 
end
database:sadd(bot_id..'Gmute:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم كتمه عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم عام @(.*)$")  and DevTELANDW(msg) then  
local username = text:match("^كتم عام @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع كتم البوت عام*")
return false 
end
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم كتمه عام من الجروبات*'
texts = usertext..status
database:sadd(bot_id..'Gmute:User', result.id_)
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^كتم عام (%d+)$") and DevTELANDW(msg) then  
local userid = text:match("^كتم عام (%d+)$")
if TELANDSudoBot(bot_id) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع كتم البوت عام*")
return false 
end
database:sadd(bot_id..'Gmute:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم كتمه عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم كتمه عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("الغاء العام") and msg.reply_to_message_id_ and DevTELANDW(msg) then  
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء (الحظر-الكتم) عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
database:srem(bot_id..'GBan:User', result.sender_user_id_)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevTELANDW(msg) then  
local username = text:match("^الغاء العام @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء (الحظر-الكتم) عام من الجروبات*'
texts = usertext..status
database:srem(bot_id..'GBan:User', result.id_)
database:srem(bot_id..'Gmute:User', result.id_)
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevTELANDW(msg) then  
local userid = text:match("^الغاء العام (%d+)$")
database:srem(bot_id..'GBan:User', userid)
database:srem(bot_id..'Gmute:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء (الحظر-الكتم) عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم حظره عام من الجروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("مسح المطورين") and DevTELANDW(msg) then
database:del(bot_id..'Sudo:User')
send(msg.chat_id_, msg.id_, "\n *⌯︙تم مسح قائمة المطورين*  ")
end
if text == ("المطورين") and DevTELANDW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *⌯︙قائمة مطورين البوت* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مطورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تاك للمشرفين" and SudoBotCoSu then
if database:get(bot_id.."VVVZVV:admin:Time"..msg.chat_id_) then 
return
send(msg.chat_id_, msg.id_,"انتظر دقيقه من فضلك")
end
database:setex(bot_id..'VVVZVV:admin:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100 },function(extra,result,success)
m = 0
tgad = 0
local ans = result.members_  
for k, v in pairs(ans) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if m == 1 or m == tgad or k == 0 then
tgad = m + 5
t = "#Admin"
end
m = m + 1
Adminame = data.first_name_
Adminame = Adminame:gsub("]","")
Adminame = Adminame:gsub("[[]","")
t = t..", ["..Adminame.."](tg://user?id="..v.user_id_..")"
if m == 1 or m == tgad or k == 0 then
local Text = t:gsub('#Admin,','#Admin\n')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end

if text == 'الملفات' and DevTELANDW(msg) then
t = ' *⌯︙ملفات السورس سوريا↓*\n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•* \n'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*- الملف »* {'..v..'}\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "متجر الملفات" or text == 'المتجر' then
if DevTELANDW(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/X_G_33/Files_Teland/main/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n *⌯︙اهلا بك في متجر ملفات سوريا*\n*⌯︙ملفات السورس ↓*\n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n\n"
local TextE = "\n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n *⌯︙علامة تعني { ✓ } ملف مفعل*\n *⌯︙علامة تعني { ✘ } ملف معطل*\n *⌯︙قناة سورس سوريا↓*\n".." *⌯︙*[اضغط هنا لدخول](t.me/X_G_33) \n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("File_Bot/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✓)"
else
CeckFile = "(✘)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."→* {`"..name..'`} » '..CeckFile..'\n[-Information]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_," *⌯︙لا يوجد اتصال من ال api* \n") 
end
return false
end
end

if text and text:match("^(تعطيل) (.*)(.lua)$") and DevTELANDW(msg) then
local name_t = {string.match(text, "^(تعطيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *⌯︙الملف »* "..file.."\n*⌯︙تم تعطيل ملف* \n"
else
t = " *⌯︙بالتاكيد تم تعطيل ملف →* "..file.."\n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/X_G_33/Files_Teland/main/File_Bot/"..file)
if res == 200 then
os.execute("rm -fr File_Bot/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('TELAND.lua')  
else
send(msg.chat_id_, msg.id_," *⌯︙عذرا الملف لايدعم سورس سوريا* \n") 
end
return false
end
if text and text:match("^(تفعيل) (.*)(.lua)$") and DevTELANDW(msg) then
local name_t = {string.match(text, "^(تفعيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *⌯︙بالتاكيد تم تفعيل ملف →* "..file.." \n"
else
t = " *⌯︙الملف »* "..file.."\n*⌯︙تم تفعيل ملف* \n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/X_G_33/Files_Teland/main/File_Bot/"..file)
if res == 200 then
local chek = io.open("File_Bot/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('TELAND.lua')  
else
send(msg.chat_id_, msg.id_," *⌯︙عذرا الملف لايدعم سورس سوريا* \n") 
end
return false
end
if text == "مسح الملفات" and DevTELANDW(msg) then
os.execute("rm -fr File_Bot/*")
send(msg.chat_id_,msg.id_," *⌯︙تم مسح الملفات*")
return false
end

if text == ("رفع مطور") and msg.reply_to_message_id_ and DevTELANDW(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور @(.*)$") and DevTELANDW(msg) then  
local username = text:match("^رفع مطور @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مطور*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevTELANDW(msg) then  
local userid = text:match("^رفع مطور (%d+)$")
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n *⌯︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("تنزيل مطور") and msg.reply_to_message_id_ and DevTELANDW(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevTELANDW(msg) then  
local username = text:match("^تنزيل مطور @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المطورين*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevTELANDW(msg) then  
local userid = text:match("^تنزيل مطور (%d+)$")
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("مسح قائمه المالك") and Sudo(msg) then
database:del(bot_id..'CoSu'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *⌯︙تم مسح قائمه المالك*')
return false
end
if text == 'قائمه المالك' and Sudo(msg) then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *⌯︙قائمه المالك* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد احد في قائمه المالك*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("صيح للمالك") or text == ("تاك للمالك") then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *⌯︙وينكم تعالو يريدوكم بجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد احد في قائمه المالك*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مالك") and msg.reply_to_message_id_ and Sudo(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مالك @(.*)$") and Sudo(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع مالك @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مالك*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع مالك (%d+)$") and Sudo(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع مالك (%d+)$") 
database:sadd(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل مالك") and msg.reply_to_message_id_ and Sudo(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك @(.*)$") and Sudo(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل مالك @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المالكين*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك (%d+)$") and Sudo(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل مالك (%d+)$") 
database:srem(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("مسح الاساسين") and SudoBotCoSu(msg) then
database:del(bot_id..'Basic:Constructor'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *⌯︙تم مسح المنشئين الاساسين*')
return false
end
if (msg.content_.sticker_)  and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then  
sticker_id = msg.content_.sticker_.sticker_.persistent_id_
st = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..sticker_id.."&type=sticker")
eker = JSON.decode(st)
if eker.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*⌯︙المنشئين الاساسين تعالو مخرب* \n *•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*⌯︙ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*⌯︙قام بنشر ملصق اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'ملصق' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.photo_ then 
local pn = result.content_.photo_.sizes_[1].photo_.persistent_id_
Addsticker(msg,msg.chat_id_,pn,msg.sender_user_id_..'.png')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوت' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'بصمه' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوره' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.sticker_ then 
local Str = result.content_.sticker_.sticker_.persistent_id_ 
Addjpg(msg,msg.chat_id_,Str,msg.sender_user_id_..'.jpg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if (msg.content_.photo_) and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then
photo_id = msg.content_.photo_.sizes_[1].photo_.persistent_id_  
Srrt = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..photo_id.."&type=photo")
Sto = JSON.decode(Srrt)
if Sto.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*⌯︙المنشئين الاساسين تعالو مخرب* \n *•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*⌯︙ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*⌯︙قام بنشر صوره اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'المنشئين الاساسين' and SudoBotCoSu(msg) then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *⌯︙قائمة المنشئين الاساسين* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد منشئين اساسين*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("تاك للمنشئين الاساسين") or text == ("صيح المنشئين الاساسين") then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *⌯︙وينكم تعالو يريدوكم بجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد منشئين اساسين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع منشئ اساسي") and msg.reply_to_message_id_ and SudoBotCoSu(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع منشئ اساسي @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته منشئ اساسي*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل منشئ اساسي") and msg.reply_to_message_id_ and SudoBotCoSu(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من الاساسيين*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and SudoBotCoSu(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المنشئين' and BasicConstructor(msg) then
database:del(bot_id..'Constructor'..msg.chat_id_)
texts = ' *⌯︙تم مسح المنشئين* '
send(msg.chat_id_, msg.id_, texts)
end
if text == ("المنشئين") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *⌯︙قائمة المنشئين* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد منشئين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمنشئين") or text == ("صيح المنشئين") then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *⌯︙وينكم تعالو يريدوكم بجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد منشئين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text ==("المنشئ") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_," *⌯︙حساب المنشئ محذوف*")
return false  
end
local UserName = (b.username_ or "X_G_33")
send(msg.chat_id_, msg.id_," ⌯︙منشئ الجروب » ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text == "رفع منشئ" and msg.reply_to_message_id_ and BasicConstructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع منشئ @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته منشئ*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع منشئ (%d+)$")
database:sadd(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙ اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
if text and text:match("^تنزيل منشئ$") and msg.reply_to_message_id_ and BasicConstructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل منشئ @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المنشئين*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل منشئ (%d+)$")
database:srem(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المدراء' and Constructor(msg) then
database:del(bot_id..'Manager'..msg.chat_id_)
texts = ' *⌯︙تم مسح المدراء* '
send(msg.chat_id_, msg.id_, texts)
end
if text == ("المدراء") and Constructor(msg) then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *⌯︙قائمة المدراء* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مدراء*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمدراء") or text == ("صيح المدراء") then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *⌯︙وينكم تعالو يريدوكم بجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مدراء*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مدير") and msg.reply_to_message_id_ and Constructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:sadd(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع مدير @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مدير*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end 
if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع مدير (%d+)$") 
database:sadd(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
if text == ("تنزيل مدير") and msg.reply_to_message_id_ and Constructor(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل مدير @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المدراء*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل مدير (%d+)$") 
database:srem(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text ==("رفع الادمنيه") and Manager(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_," *⌯︙لا يوجد ادمنيه ليتم رفعهم*") 
else
send(msg.chat_id_, msg.id_," *⌯︙تمت ترقيه { "..num2.." } من الادمنيه*") 
end
end,nil)   
end
if text == ("رفع مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_TELAND(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*⌯︙تم ترقيته مطور ثانوي في البوت*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TELAND, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^رفع مطور ثانوي @(.*)$")
function Function_TELAND(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*⌯︙تم ترقيته مطور ثانوي في البوت*")  
else
send(msg.chat_id_, msg.id_,"*⌯︙لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TELAND, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^رفع مطور ثانوي (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*⌯︙تم ترقيته مطور ثانوي في البوت*")  
return false 
end
if text == ("تنزيل مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_TELAND(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*⌯︙تم تنزيله من المطور ثانويين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TELAND, nil)
return false 
end
if text and text:match("^تنزيل مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^تنزيل مطور ثانوي @(.*)$")
function Function_TELAND(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*⌯︙تم تنزيله من المطور ثانويين*")  
else
send(msg.chat_id_, msg.id_,"*⌯︙لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TELAND, nil)
return false
end  
if text and text:match("^تنزيل مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^تنزيل مطور ثانوي (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*⌯︙تم تنزيله من المطور ثانويين*")  
return false 
end
if text == ("الثانويين") and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*⌯︙قائمة مطورين الثانويين للبوت* \n *•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*⌯︙لا يوجد مطورين ثانويين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("مسح الثانويين") and SudoBot(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*⌯︙تم مسح قائمة المطورين الثانويين*  ")
end
if text == 'مسح الادمنيه' and Manager(msg) then
database:del(bot_id..'Mod:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ⌯︙تم مسح الادمنيه')
end
if text == ("الادمنيه") and Manager(msg) then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *⌯︙قائمة الادمنيه* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد ادمنيه*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للادمنيه") or text == ("صيح الادمنيه") then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *⌯︙وينكم تعالو يريدوكم بجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد ادمنيه*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع ادمن") and msg.reply_to_message_id_ and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙العضو* » ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Manager(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع ادمن @(.*)$")
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته ادمن*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Manager(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع ادمن (%d+)$")
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل ادمن") and msg.reply_to_message_id_ and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Manager(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل ادمن @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من الادمنيه*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Manager(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل ادمن (%d+)$")
database:srem(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الطرد*') 
return false
end
function start_function(extra, result, success)
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع طرد* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *⌯︙ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
statusk  = '\n*⌯︙تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Mod(msg) and GetChannelMember(msg) then   
local username = text:match("^طرد @(.*)$")
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الطرد*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع طرد* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *⌯︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
statusk  = '\n*⌯︙تم طرد العضو*'
texts = usertext..statusk
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *⌯︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Mod(msg) and GetChannelMember(msg) then   
local userid = text:match("^طرد (%d+)$") 
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الطرد*') 
return false
end
if TELANDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع طرد* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *⌯︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
chat_kick(msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
 usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
 statusk  = '\n*⌯︙تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
else
 usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
 statusk  = '\n*⌯︙تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end;end,nil)
end,nil)   
end
return false
end
if text == 'مسح المميزين' and Mod(msg) then
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم مسح المميزين*')
end
if text == ("المميزين") and Mod(msg) then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *⌯︙قائمة مميزين الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مميزين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمميزين") or text == ("صيح المميزين") then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *⌯︙وينكم تعالو يريدوكم بجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مميزين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^رفع مميز @(.*)$") 
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم ترقيته مميز*'
texts = usertext..statuss
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع مميز (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^رفع مميز (%d+)$")
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
local  statuss  = '\n*⌯︙تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end;end,nil)
return false
end
if (text == ("تنزيل مميز")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^تنزيل مميز @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المميزين*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^تنزيل مميز (%d+)$") 
database:srem(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙لعضو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل المطايه' and Mod(msg) then
database:del(bot_id..'Mote:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم مسح جميع المطايه*')
end
if text == ("تاك للمطايه") and Mod(msg) then
local list = database:smembers(bot_id..'Mote:User'..msg.chat_id_)
t = "\n *⌯︙قائمة مطايه الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *المطي* [@"..username.."]\n"
else
t = t..""..k.."» *المطي* `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مطايه*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع مطي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع العضو مطي في الجروب* \n*⌯︙تعال حبي استلم العربانه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل مطي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل العضو مطي في الجروب*\n*⌯︙تعال حبي رجع العربانه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الحاتات' and Mod(msg) then
database:del(bot_id..'Mode:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم مسح جميع المطايه*')
end
if text == ("تاك للحاتات") and Mod(msg) then
local list = database:smembers(bot_id..'Mode:User'..msg.chat_id_)
t = "\n *⌯︙قائمه حاتات الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحاته [@"..username.."]\n"
else
t = t..""..k.."» الحاته `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙مع الاسف لا يوجد حاته*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع الحاته") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع العضــو الحاته في الجروب* \n*⌯︙تعال يحاته ممكن نتعرف*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل الحاته")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل العضــو الحاته من الجروب*\n*⌯︙مشيي مو خوش حاتهه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم

if text == ("تاك للحات") and Mod(msg) then
local list = database:smembers(bot_id..'Modde:User'..msg.chat_id_)
t = "\n *⌯︙قائمه حات الجروب* \nٴ*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*ٴ\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحات [@"..username.."]\n"
else
t = t..""..k.."» الحات `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙مع الاسف لا يوجد حات*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع الحات") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع العضــو الحات في الجروب* \n*⌯︙تعال حبي الحات نطيني بوسه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل الحات")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل العضــو الحات من الجروب*\n*⌯︙مشيي مو خوش حات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الصخوله' and Mod(msg) then
database:del(bot_id..'Sakl:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع صخوله من الجروب*')
end
if text == ("تاك للصخوله") and Mod(msg) then
local list = database:smembers(bot_id..'Sakl:User'..msg.chat_id_)
t = "\n *⌯︙قائمة صخوله الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الصخل* [@"..username.."]\n"
else
t = t..""..k.."» *الصخل* `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد صخل*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع صخل") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع المتهم صخل بالجروب*\n*⌯︙الان اصبح صخل الجروب*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل صخل")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل العضو صخل*\n*⌯︙ارجع للبيتكم حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الجلاب' and Mod(msg) then
database:del(bot_id..'Motte:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع جلاب الجروب*')
end
if text == ("تاك للجلاب") and Mod(msg) then
local list = database:smembers(bot_id..'Motte:User'..msg.chat_id_)
t = "\n *⌯︙قائمة الجلاب الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجلب* [@"..username.."]\n"
else
t = t..""..k.."» *الجلب* `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد جلب*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جلب") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع جلب في الجروب*\n*⌯︙تعال حبي اطيك عضمه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جلب")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل جلب في الجروب*\n*⌯︙حبي رجع عضمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل القروده' and Mod(msg) then
database:del(bot_id..'Motee:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع القروده بالجروب*')
end
if text == ("تاك للقروده") and Mod(msg) then
local list = database:smembers(bot_id..'Motee:User'..msg.chat_id_)
t = "\n *⌯︙قائمة القروده الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *القرد* [@"..username.."]\n"
else
t = t..""..k.."» *القرد* `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد قرد*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع قرد") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع قرد في الجروب*\n*⌯︙تعال حبي استلم موزه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل قرد")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل قرد من الجروب*\n*⌯︙رجع موزه حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الحصونه' and Mod(msg) then
database:del(bot_id..'Hors:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع الحصونه بالجروب*')
end
if text == ("تاك للحصونه") and Mod(msg) then
local list = database:smembers(bot_id..'Hors:User'..msg.chat_id_)
t = "\n *⌯︙قائمة الحصونه الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الحصان* [@"..username.."]\n"
else
t = t..""..k.."» *الحصان* `"..v.."`\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد حصان*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع حصان") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع حصان في الجروب*\n*⌯︙تعال حبي احطلك سرج وركبك فرني فره حلوه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حصان")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل حصان من الجروب*\n*⌯︙رجع السرج حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل البقرات' and Mod(msg) then
database:del(bot_id..'Bakra:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع البقرات بالجروب*')
end
if text == ("تاك للبقرات") and Mod(msg) then
local list = database:smembers(bot_id..'Bakra:User'..msg.chat_id_)
t = "\n *⌯︙قائمة البقرات الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *البقره* [@"..username.."]\n"
else
t = t..""..k.."» *البقره* "..v.."\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد البقره*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع بقره") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع بقره في الجروب*\n*⌯︙ها يالهايشه تع احلبك*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل بقره")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل بقره من الجروب*\n*⌯︙تعال هاك حليب مالتك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الطليان' and Mod(msg) then
database:del(bot_id..'Tele:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع طليان بالجروب')
end
if text == ("تاك للطليان") and Mod(msg) then
local list = database:smembers(bot_id..'Tele:User'..msg.chat_id_)
t = "\n *⌯︙قائمة الطليان الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الطلي* [@"..username.."]\n"
else
t = t..""..k.."» *الطلي* "..v.."\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد طلي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع طلي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع الطلي في الجروب*\n*⌯︙طلع برا ابو البعرور الوصخ*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل طلي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل الطلي من الجروب*\n *⌯︙هاك اخذ بعرور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الزواحف' and Mod(msg) then
database:del(bot_id..'Zahf:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع زواحف*')
end
if text == ("تاك للزواحف") and Mod(msg) then
local list = database:smembers(bot_id..'Zahf:User'..msg.chat_id_)
t = "\n *⌯︙قائمة الزواحف الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الزاحف* [@"..username.."]\n"
else
t = t..""..k.."» *الزاحف* "..v.."\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد زاحف*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع زاحف") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع زاحف في الجروب*\n*⌯︙كمشتك حبي جيب رقم*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل زاحف")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل زاحف من الجروب*\n*⌯︙هاك حبي هاذا رقم مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل جريذيه' and Mod(msg) then
database:del(bot_id..'Jred:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم تنزيل جميع جريزي*')
end
if text == ("تاك للجريذيه") and Mod(msg) then
local list = database:smembers(bot_id..'Jred:User'..msg.chat_id_)
t = "\n *⌯︙قائمة الجريذيه الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجريذي* [@"..username.."]\n"
else
t = t..""..k.."» *الجريذي* "..v.."\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد جريذي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جريذي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local  statuss  = '\n*⌯︙تم رفع جريذي في الجروب*\n*⌯︙خايس ريحتك موتتنه روح سبح يع*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جريذي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تنزيل جريذي من الجروب*\n*⌯︙هاك ليفه اسبح*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("تخ") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✭ لا تستطيع استخدام البوت \n ✭  يرجى الاشتراك بالقناه اولا \n ✭  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' ✭ تم تعطيل القتل') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✭ الـعـضو   ⇇['..data.first_name_..'](t.me/'..(data.username_ or 'textchuser')..')'
local  statuss  = '\n ✭تم قتله بنجاح\n'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text == ("بوم") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◉ لا تستطيع استخدام البوت \n ◉  يرجى الاشتراك بالقناه اولا \n ◉  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' ◉ تم تعطيل التفجير') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◉ الـعـضو   ↚ ['..data.first_name_..'](t.me/'..(data.username_ or 'textchuser')..')'
local  statuss  = '\n ◉تم تفجيره بنجاح\n'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("اصحه")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✭ لا تستطيع استخدام البوت \n ✭  يرجى الاشتراك بالقناه اولا \n ✭  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✭ الـعـضو   ⇇['..data.first_name_..'](t.me/'..(data.username_ or 'textchuser')..')'
status  = '\n ✭ تم رجوع للحياه\n'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text == 'مسح المحظورين' and Mod(msg) then
database:del(bot_id..'Ban:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *⌯︙تم مسح المحظورين*')
end
if text == ("المحظورين") then
local list = database:smembers(bot_id..'Ban:User'..msg.chat_id_)
t = "\n *⌯︙قائمة محظورين الجروب* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد محظورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الحظر*') 
return false
end
function start_function(extra, result, success)
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع حظر البوت* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع حظر* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *⌯︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text and text:match("^حظر @(.*)$") and Mod(msg) then
local username = text:match("^حظر @(.*)$")
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الحظر*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع حظر* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *⌯︙ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙ المستخدم »* ['..result.title_..'](t.me/'..(username or 'GLOBLA')..')'
status  = '\n*⌯︙تم حظره*'
texts = usertext..status
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *⌯︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^حظر (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^حظر (%d+)$") 
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل الحظر*') 
return false
end
if TELANDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع حظر البوت*")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع حظر* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *⌯︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, userid)
chat_kick(msg.chat_id_, userid)  
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end,nil)   
end
return false
end
if text == ("الغاء حظر") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *⌯︙انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء حظر @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^الغاء حظر @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *⌯︙انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء حظره*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^الغاء حظر (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^الغاء حظر (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *⌯︙انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المكتومين' and Mod(msg) then
database:del(bot_id..'Muted:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم مسح المكتومين*')
end
if text == ("المكتومين") and Mod(msg) then
local list = database:smembers(bot_id..'Muted:User'..msg.chat_id_)
t = "\n *⌯︙قائمة المكتومين* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد مكتومين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع كتم البوت* ")
return false 
end
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع كتم* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^كتم @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع كتم البوت* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع كتم* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم كتمه*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
end
else
send(msg.chat_id_, msg.id_, ' *⌯︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^كتم (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *⌯︙عذرا لا تستطيع كتم* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم كتم لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match('^كتم (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *⌯︙عذرا لا تستطيع كتم* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم كتم لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^كتم (%d+)$")
if TELANDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع كتم البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع كتم* ( '..Rutba(userid,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
if text and text:match("^(وضع وقت التنظيف) (%d+)$") and BasicConstructor(msg) then
local GetDo = tonumber(text:match("(%d+)"))
database:set(bot_id..':TiMsg:'..msg.chat_id_,GetDo) 
return send(msg.chat_id_, msg.id_,"*⌯︙تم وضع وقت التنظيف ("..GetDo..") ساعه*")
end
if text == ("الغاء كتم") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^الغاء كتم @(.*)$")
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء كتمه*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^الغاء كتم (%d+)$") 
database:srem(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end

if text == ("تقيد") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " ⌯︙لا تسطيع تقيد البوت ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع تقيد* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تقيد @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^تقيد @(.*)$")
function start_function(extra, result, success)
if result.id_ then
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع تقيد البوت* ")
return false 
end
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع تقيد* ( '..Rutba(result.id_,msg.chat_id_)..' )')
return false 
end  
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تقيده*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *⌯︙عذرا لا تستطيع تقيد* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تقيده لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *⌯︙عذرا لا تستطيع تقيد* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم تقيده لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^تقيد (%d+)$")
if TELANDSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*⌯︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *⌯︙لا تسطيع تقيد البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا تستطيع تقيد* ( '..Rutba(userid,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقيد") and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد @(.*)$") and Mod(msg) and GetChannelMember(msg) then  
local username = text:match("^الغاء تقيد @(.*)$")
function start_function(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء تقيد*'
texts = usertext..status
else
texts = ' *⌯︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد (%d+)$") and Mod(msg) and GetChannelMember(msg) then  
local userid = text:match("^الغاء تقيد (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *⌯︙اسم المستخدم »* '..userid..''
status  = '\n*⌯︙تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text and text:match('^رفع القيود @(.*)') and Manager(msg) and GetChannelMember(msg) then   
local username = text:match('^رفع القيود @(.*)') 
function start_function(extra, result, success)
if result.id_ then
if DevTELANDW(msg) then
database:srem(bot_id..'GBan:User',result.id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Gmute:User'..msg.chat_id_,result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء جميع القيود*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء جميع القيود*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
end
else
Text = ' *⌯︙المعرف غلط*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == "رفع القيود" and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if DevTELANDW(msg) then
database:srem(bot_id..'GBan:User',result.sender_user_id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء جميع القيود*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙تم الغاء جميع القيود*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match('^كشف القيود @(.*)') and Manager(msg) and GetChannelMember(msg) then   
local username = text:match('^كشف القيود @(.*)') 
function start_function(extra, result, success)
if result.id_ then
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
Textt = " *⌯︙الحظر العام » "..GBan.."*\n*⌯︙الحظر » "..Ban.."*\n*⌯︙الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
else
Text = ' *⌯︙المعرف غلط*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end

if text == "كشف القيود" and Manager(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.sender_user_id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
if database:sismember(bot_id..'Gmute:User',result.sender_user_id_) then
Gmute = 'محظور عام'
else
Gmute = 'غير محظور عام'
end
Textt = " *⌯︙الحظر العام » "..GBan.."*\n*⌯︙الكتم العام » "..Gmute.."*\n*⌯︙الحظر » "..Ban.."*\n*⌯︙الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == ("رفع مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙ الايدي »* `'..result.sender_user_id_..'`\n*⌯︙ تم رفعه مشرف* '
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙ تم رفعه مشرف* '
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, ' *⌯︙ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙ الايدي »* `'..result.sender_user_id_..'`\n*⌯︙ تم تنزيله ادمن من الجروب*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ⌯︙ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end  
usertext = '\n *⌯︙ اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙ تم تنزيله ادمن من الجروب*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, '*⌯︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end


if text == ("رفع ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙الايدي »* '..result.sender_user_id_..'\n*⌯︙ تم رفعه مشرف بكل الصلاحيات*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True&can_manage_voice_chats=True")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^رفع ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *⌯︙ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *⌯︙ اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙ تم رفعه مشرف بكل الصلاحيات*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True&can_manage_voice_chats=True")
else
send(msg.chat_id_, msg.id_, ' *⌯︙ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *⌯︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
status  = '\n*⌯︙ الايدي »* '..result.sender_user_id_..'\n*⌯︙ تم تنزيله ادمن من الجروب بكل الصلاحيات*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false&can_manage_voice_chats=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *⌯︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*⌯︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *⌯︙ اسم المستخدم » ['..result.title_..'](t.me/'..(username or 'X_G_33')..')'
status  = '\n*⌯︙ تم تنزيله ادمن من الجروب بكل الصلاحيات*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false&can_manage_voice_chats=false")
else
send(msg.chat_id_, msg.id_, ' *⌯︙ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == 'اعدادات الجروب' and Mod(msg) then
if database:get(bot_id..'lockpin'..msg.chat_id_) then
lock_pin = '✓'
else 
lock_pin = '✘'
end
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
lock_tagservr = '✓'
else 
lock_tagservr = '✘'
end
if database:get(bot_id..'lock:text'..msg.chat_id_) then
lock_text = '✓'
else 
lock_text = '✘'
end
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
lock_add = '✓'
else 
lock_add = '✘'
end
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
lock_join = '✓'
else 
lock_join = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit = '✓'
else 
lock_edit = '✘'
end
print(welcome)
if database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_) then
welcome = '✓'
else 
welcome = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit_med = '✓'
else 
lock_edit_med = '✘'
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_, "flood") == "kick" then 
flood = 'بالطرد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "keed" then 
flood = 'بالتقيد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "mute" then 
flood = 'بالكتم'   
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "del" then 
flood = 'بالمسح'   
else 
flood = '✘' 
end
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
lock_photo = '✓' 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = 'بالتقيد'   
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = 'بالكتم'
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = 'بالطرد'   
else
lock_photo = '✘'   
end
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
lock_phon = '✓' 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = 'بالتقيد'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = 'بالكتم'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = 'بالطرد'
else
lock_phon = '✘'
end
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" then
lock_links = '✓'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" then
lock_links = 'بالتقيد'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" then
lock_links = 'بالكتم'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" then
lock_links = 'بالطرد'
else
lock_links = '✘'
end
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = '✓'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = 'بالتقيد'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = 'بالكتم'   
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = 'بالطرد'
else
lock_cmds = '✘'
end
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" then
lock_user = '✓'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" then
lock_user = 'بالتقيد'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" then
lock_user = 'بالكتم'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" then
lock_user = 'بالطرد'
else
lock_user = '✘'
end
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = '✓'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = 'بالتقيد'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = 'بالكتم'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = 'بالطرد'
else
lock_hash = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_muse = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = 'بالطرد'
else
lock_muse = '✘'
end 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
lock_ved = '✓'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = 'بالتقيد'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = 'بالكتم'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = 'بالطرد'
else
lock_ved = '✘'
end
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
lock_gif = '✓'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = 'بالتقيد'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = 'بالكتم'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = 'بالطرد'
else
lock_gif = '✘'
end
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = '✓'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = 'بالتقيد'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = 'بالكتم'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = 'بالطرد'
else
lock_ste = '✘'
end
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
lock_geam = '✓'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = 'بالتقيد'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = 'بالكتم'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = 'بالطرد'
else
lock_geam = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_vico = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = 'بالطرد'
else
lock_vico = '✘'
end
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = '✓'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = 'بالتقيد'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = 'بالكتم'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = 'بالطرد'
else
lock_inlin = '✘'
end
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
lock_fwd = '✓'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = 'بالتقيد'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = 'بالكتم'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = 'بالطرد'
else
lock_fwd = '✘'
end
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
lock_file = '✓'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then 
lock_file = 'بالتقيد'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = 'بالكتم'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then 
lock_file = 'بالطرد'
else
lock_file = '✘'
end
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = '✓'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = 'بالتقيد'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = 'بالكتم'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = 'بالطرد'
else
lock_self = '✘'
end
if database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'del' then
lock_bots = '✓'
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'ked' then
lock_bots = 'بالتقيد'   
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'kick' then
lock_bots = 'بالطرد'
else
lock_bots = '✘'
end
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = '✓'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = 'بالتقيد'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = 'بالكتم'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = 'بالطرد'
else
lock_mark = '✘'
end
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" then
lock_spam = '✓'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = 'بالتقيد'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = 'بالكتم'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = 'بالطرد'
else
lock_spam = '✘'
end
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
rdmder = '✓'
else
rdmder = '✘'
end
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
rdsudo = '✓'
else
rdsudo = '✘'
end
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
idgp = '✓'
else
idgp = '✘'
end
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then
idph = '✓'
else
idph = '✘'
end
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
setadd = '✓'
else
setadd = '✘'
end
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
banm = '✓'
else
banm = '✘'
end
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
addme = '✓'
else
addme = '✘'
end
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
sehuser = '✓'
else
sehuser = '✘'
end
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
kickme = '✓'
else
kickme = '✘'
end
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
'\n *⌯︙اعدادات الجروب كتالي √↓*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*⌯︙ علامة ال {✓} تعني معطل*'..
'\n*⌯︙ علامة ال {✘} تعني مفعل*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*⌯︙ الروابط »* { '..lock_links..
' }\n'..'*⌯︙ المعرفات »* { '..lock_user..
' }\n'..'*⌯︙ التاك »* { '..lock_hash..
' }\n'..'*⌯︙ البوتات »* { '..lock_bots..
' }\n'..'*⌯︙ التوجيه »* { '..lock_fwd..
' }\n'..'*⌯︙ التثبيت »* { '..lock_pin..
' }\n'..'*⌯︙ الاشعارات »* { '..lock_tagservr..
' }\n'..'*⌯︙ الماركدون »* { '..lock_mark..
' }\n'..'*⌯︙ التعديل »* { '..lock_edit..
' }\n'..'*⌯︙ تعديل الميديا »* { '..lock_edit_med..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*⌯︙ الكلايش »* { '..lock_spam..
' }\n'..'*⌯︙ الكيبورد »* { '..lock_inlin..
' }\n'..'*⌯︙ الاغاني »* { '..lock_vico..
' }\n'..'*⌯︙ المتحركه »* { '..lock_gif..
' }\n'..'*⌯︙ الملفات »* { '..lock_file..
' }\n'..'*⌯︙ الدردشه »* { '..lock_text..
' }\n'..'*⌯︙  الفيديو »* { '..lock_ved..
' }\n'..'*⌯︙  الصور »* { '..lock_photo..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*⌯︙  الصوت »* { '..lock_muse..
' }\n'..'*⌯︙ الملصقات »* { '..lock_ste..
' }\n'..'*⌯︙ الجهات »* { '..lock_phon..
' }\n'..'*⌯︙ الدخول »* { '..lock_join..
' }\n'..'*⌯︙ الاضافه »* { '..lock_add..
' }\n'..'*⌯︙ السيلفي »* { '..lock_self..
' }\n'..'*⌯︙ الالعاب »* { '..lock_geam..
' }\n'..'*⌯︙ التكرار »* { '..flood..
' }\n'..'*⌯︙ الترحيب »* { '..welcome..
' }\n'..'*⌯︙ عدد التكرار »* { '..NUM_MSG_MAX..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*⌯︙ علامة ال {✓} تعني مفعل*'..
'\n*⌯︙ علامة ال {✘} تعني معطل*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*⌯︙ امر صيح »* { '..kickme..
' }\n'..'*⌯︙ امر اطردني »* { '..sehuser..
' }\n'..'*⌯︙ امر منو ضافني »* { '..addme..
' }\n'..'*⌯︙ ردود المدير »* { '..rdmder..
' }\n'..'*⌯︙ ردود المطور »* { '..rdsudo..
' }\n'..'*⌯︙ الايدي »* { '..idgp..
' }\n'..'*⌯︙ الايدي بالصوره »* { '..idph..
' }\n'..'*⌯︙ الرفع »* { '..setadd..
' }\n'..'*⌯︙ الحظر »* { '..banm..' }\n\n┉  ┉  ┉  ┉ ┉  ┉  ┉  ┉  ┉  ┉\n *⌯︙ CH » @X_G_33*\n'
send(msg.chat_id_, msg.id_,text) 
end
if text ==('تثبيت') and msg.reply_to_message_id_ ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *⌯︙عذرآ تم قفل التثبيت*")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *⌯︙تم تثبيت الرساله*")   
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *⌯︙انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *⌯︙لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *⌯︙ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil) 
end
if text == 'الغاء التثبيت' and Mod(msg) and GetChannelMember(msg) then  
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *⌯︙عذرآ تم قفل الثبيت*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء تثبيت الرساله*")   
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *⌯︙انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *⌯︙لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *⌯︙ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end
if text == 'الغاء تثبيت الكل' and Mod(msg) and GetChannelMember(msg) then  
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *⌯︙عذرآ تم قفل الثبيت*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*⌯︙تم الغاء تثبيت الكل*")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *⌯︙انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *⌯︙لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *⌯︙ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end
if text and text:match('^ضع تكرار (%d+)$') and Mod(msg) then   
local Num = text:match('ضع تكرار (.*)')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,' *⌯︙تم وضع عدد التكرار* ('..Num..')')  
end 
if text and text:match('^ضع زمن التكرار (%d+)$') and Mod(msg) then   
local Num = text:match('^ضع زمن التكرار (%d+)$')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,' *⌯︙تم وضع زمن التكرار* ('..Num..')') 
end
if text == "ضع رابط" or text == 'وضع رابط' and GetChannelMember(msg) then  
if msg.reply_to_message_id_ == 0  and Mod(msg) then  
send(msg.chat_id_,msg.id_," *⌯︙حسنآ ارسل اليه الرابط الان*")
database:setex(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "تفعيل رابط" or text == 'تفعيل الرابط' then
if Mod(msg) then  
database:set(bot_id.."Link_Group:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *⌯︙تم تفعيل الرابط*") 
return false  
end
end
if text == "تعطيل رابط" or text == 'تعطيل الرابط' then
if Mod(msg) then  
database:del(bot_id.."Link_Group:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *⌯︙تم تعطيل الرابط*") 
return false end
end
if text == "المطور" or text == "مطور" then
local TEXT_SUD = database:get(bot_id..'Tshake:TEXT_SUDO')
if TEXT_SUDO then 
send(msg.chat_id_, msg.id_,TEXT_SUDO)
else
tdcli_function ({ID = "GetUser",user_id_ = SUDO,},function(arg,result) 
local function taha(extra, taha, success)
if taha.photos_[0] then
local Name = 'مـطور البـوت\n['..result.first_name_..'](tg://user?id='..result.id_..')\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Name)..'&photo='..taha.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = SUDO, offset_ = 0, limit_ = 1 }, taha, nil)
end,nil)
end
end
if text == "تفعيل صورتي" or text == 'تفعيل الصوره' then
if Constructor(msg) then  
database:set(bot_id.."my_photo:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *⌯︙تم تفعيل الصوره*") 
return false  
end
end
if text == "تعطيل الصوره" or text == 'تعطيل صورتي' then
if Constructor(msg) then  
database:del(bot_id.."my_photo:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *⌯︙تم تعطيل الصوره*") 
return false end
end
if text == "الرابط" then 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_)) or database:get(bot_id.."Private:Group:Link"..msg.chat_id_) 
if linkgpp.ok == true then 
local Teext = '✰┇'..ta.title_..'\n'..linkgpp.result 
local inline = {{{text = ta.title_, url=linkgpp.result}},} 
send_inline_key(msg.chat_id_,Teext,nil,inline,msg.id_/2097152/0.5) 
else 
send(msg.chat_id_, msg.id_,'✰┇لا يوجد رابط ارسل ضع رابط') 
end 
end,nil) 
end  
if text == 'مسح الرابط' or text == 'حذف الرابط' and GetChannelMember(msg) then  
if Mod(msg) then 
send(msg.chat_id_,msg.id_," *⌯︙تم مسح الرابط*")   
database:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false  
end
end
if text and text:match("^ضع صوره") and Mod(msg) and msg.reply_to_message_id_ == 0 then  
database:set(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,' *⌯︙ارسل لي الصوره*') 
return false
end
if text == "حذف الصوره" or text == "مسح الصوره" and GetChannelMember(msg) then   
if Mod(msg) then
https.request('https://api.telegram.org/bot'..token..'/deleteChatPhoto?chat_id='..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *⌯︙تم ازالة صورة الجروب*') 
end
return false  
end
if text == 'ضع وصف' or text == 'وضع وصف' then  
if Mod(msg) then
database:setex(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الان الوصف*')
end
return false  
end
if text == 'ضع ترحيب' or text == 'وضع ترحيب' then  
if Mod(msg) then
database:setex(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = ' *⌯︙ارسل لي الترحيب الان*'
tt = '\n*⌯︙تستطيع اضافة مايلي !*\n*⌯︙دالة عرض الاسم »*{`name`}\n*⌯︙دالة عرض المعرف »*{`user`}'
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == 'الترحيب' and Mod(msg) then 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
GetWelcome = GetWelcomeGroup
else 
GetWelcome = ' *⌯︙لم يتم تعيين ترحيب للجروب*'
end 
send(msg.chat_id_, msg.id_,'['..GetWelcome..']') 
return false  
end
if text == 'تفعيل التحقق' and Manager(msg) then   
if database:get(bot_id.."Chek:Welcome"..msg.chat_id_) then
database:del(bot_id.."Chek:Welcome"..msg.chat_id_)
end
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
database:set(bot_id.."CAPTCHA"..msg.chat_id_,true) 
Text = ' *⌯︙تم تفعيل التحقق عند دخول الاعضاء*'
else
Text = ' *⌯︙بالتاكيد تم تفعيل التحقق*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التحقق' and Manager(msg) then  
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
Text = '\n *⌯︙بالتاكيد تم تعطيل التحقق*'
else
database:del(bot_id.."CAPTCHA"..msg.chat_id_) 
Text = '\n *⌯︙تم تعطيل التحقق عند دخول الاعضاء*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الترحيب' and Mod(msg) and GetChannelMember(msg) then  
database:set(bot_id..'Chek:Welcome'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,' *⌯︙تم تفعيل ترحيب الجروب*') 
return false  
end
if text == 'تعطيل الترحيب' and Mod(msg) and GetChannelMember(msg) then  
database:del(bot_id..'Chek:Welcome'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل ترحيب الجروب*') 
return false  
end
if text == 'مسح الترحيب' or text == 'حذف الترحيب' then 
if Mod(msg) then
database:del(bot_id..'Get:Welcome:Group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *⌯︙تم ازالة ترحيب الجروب*') 
end
end
if text and text == "منع" and msg.reply_to_message_id_ == 0 and Manager(msg)  then       
send(msg.chat_id_, msg.id_," *⌯︙ارسل الكلمه لمنعها*")  
database:set(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_," *⌯︙ارسل التحذير عند ارسال الكلمه*")  
database:set(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."TELAND1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."TELAND1:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_," *⌯︙تم منع الكلمه مع التحذير*")  
database:del(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."TELAND1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."TELAND1:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."TELAND1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Manager(msg) then    
send(msg.chat_id_, msg.id_," *⌯︙ارسل الكلمه الان*")  
database:set(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء منعها*")  
database:del(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."TELAND1:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."TELAND1:List:Filter"..msg.chat_id_,text)  
return false  end  
end


if text == 'منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then     
function cb(a,b,c) 
textt = ' *⌯︙تم منع* '
if b.content_.ID == 'MessageSticker' then    
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'الغاء منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then     
function cb(a,b,c) 
textt = ' *⌯︙تم الغاء منع* '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == "مسح قائمه المنع"and Manager(msg) then   
local list = database:smembers(bot_id.."TELAND1:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."TELAND1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."TELAND1:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."TELAND1:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_," *⌯︙تم مسح قائمه المنع*")  
end
if text == "قائمه المنع" and Manager(msg) then   
tdcli_function ({ID = "GetUser",user_id_ = bot_id},function(arg,data) 
local Text = "\n *⌯︙قائمة المنع* \n*ٴ— — — — — — — — — — — — — —*\n"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'صور', url="https://t.me/"..data.username_.."?start=ph"..msg.chat_id_},{text = 'كلمات', url="https://t.me/"..data.username_.."?start=msg"..msg.chat_id_}},
{{text = 'متحركات', url="https://t.me/"..data.username_.."?start=gif"..msg.chat_id_},{text = 'ملصقات', url="https://t.me/"..data.username_.."?start=Sti"..msg.chat_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == 'مسح قائمه منع المتحركات' and Manager(msg) then     
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح قائمه منع المتحركات*')  
end
if text == 'مسح قائمه منع الصور' and Manager(msg) then     
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح قائمه منع الصور*')  
end
if text == 'مسح قائمه منع الملصقات' and Manager(msg) then     
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح قائمه منع الملصقات*')  
end
------------------

if text == 'مسح كليشه المطور' and DevTELANDW(msg) then
database:del(bot_id..'TEXT_SUDO')
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح كليشه المطور*')
end
if text == 'ضع كليشه المطور' and DevTELANDW(msg) then
database:set(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,' *⌯︙ارسل الكليشه الان*')
return false
end
if text and database:get(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'الغاء' then 
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *⌯︙تم الغاء حفظ كليشة المطور*')
return false
end
database:set(bot_id..'TEXT_SUDO',text)
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *⌯︙تم حفظ كليشة المطور*')
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تعين الايدي' and Manager(msg) and GetChannelMember(msg) then  
database:setex(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
 *⌯︙ارسل الان النص*
*⌯︙يمكنك اضافه :*
 *⌯︙#rdphoto ↫ تعليق الصوره*
 *⌯︙#username ↫ اسم* 
 *⌯︙#msgs ↫ عدد رسائل* 
 *⌯︙#photos ↫ عدد صور* 
 *⌯︙#bio ↫ البايو* 
  *⌯︙#custom ↫ اللقب* 
 *⌯︙#id ↫ ايدي* 
 *⌯︙#auto ↫ تفاعل* 
 *⌯︙#stast ↫ موقع*  
 *⌯︙#edit ↫ السحكات*
 *⌯︙#game ↫ النقاط*
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' and GetChannelMember(msg) then  
if Manager(msg) then
database:del(bot_id.."KLISH:ID"..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *⌯︙تم ازالة كليشة الايدي*')
end
return false  
end 

if database:get(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء تعين الايدي*") 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
local CHENGER_ID = text:match("(.*)")  
database:set(bot_id.."KLISH:ID"..msg.chat_id_,CHENGER_ID)
send(msg.chat_id_, msg.id_,' *⌯︙تم تعين الايدي*')
end

if text == 'طرد البوتات' and Mod(msg) and GetChannelMember(msg) then  
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
chat_kick(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end 
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, " *⌯︙لا توجد بوتات في الجروب*")
else
local t = ' *⌯︙عدد البوتات هنا >> {'..c..'}*\n*⌯︙عدد البوتات التي هي ادمن >> {'..x..'}*\n*⌯︙تم طرد >> {'..(c - x)..'} من البوتات*'
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
end
if text == ("كشف البوتات") and Mod(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n *⌯︙قائمة البوتات الموجوده* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = ' {★}'
end
text = text..">> [@"..ta.username_..']'..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, " *⌯︙لا توجد بوتات في الجروب*")
return false 
end
if #admins == i then 
local a = '\n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n*⌯︙عدد البوتات التي هنا >> {'..n..'} بوت*\n'
local f = '*⌯︙عدد البوتات التي هي ادمن >> {'..t..'}*\n*⌯︙ملاحضه علامة ال (✯) تعني ان البوت ادمن* \n'
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_, " *⌯︙تم الغاء حفظ القوانين*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_," *⌯︙تم حفظ قوانين الجروب*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == 'ضع قوانين' or text == 'وضع قوانين' and GetChannelMember(msg) then   
if Mod(msg) then
database:setex(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_," *⌯︙ارسل لي القوانين الان*")  
end
end
if text == 'مسح القوانين' or text == 'حذف القوانين' then  
if Mod(msg) then
send(msg.chat_id_, msg.id_," *⌯︙تم ازالة قوانين الجروب*")  
database:del(bot_id.."Set:Rules:Group"..msg.chat_id_) 
end
end
if text == 'القوانين' then 
local Set_Rules = database:get(bot_id.."Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then 
send(msg.chat_id_,msg.id_, Set_Rules)   
else  
send(msg.chat_id_, msg.id_," *⌯︙لا توجد قوانين*")   
end
end
if text == 'قفل التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagrvrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم قفـل التفليش* ')  
end,nil)   
end
if text == 'فتح التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagrvrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *⌯︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'X_G_33')..') \n*⌯︙تـم فـتح التفليش* ')  
end,nil)   
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if Mod(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Group_Kick(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,' *⌯︙تم طرد المحذوفين*')
end,nil)
end
end
if text == 'الصلاحيات' and Mod(msg) then 
local list = database:smembers(bot_id..'Coomds'..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,' *⌯︙لا توجد صلاحيات مضافه*')
return false
end
t = "\n *⌯︙قائمة الصلاحيات المضافه* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..''..k..'- '..v..' » ('..var..')\n'
else
t = t..''..k..'- '..v..'\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text and text:match("^اضف صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
database:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, " *⌯︙ارسل نوع الرتبه* \n*⌯︙{عـضـو -- ممـيـز -- ادمـن -- مـديـر}*") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$")
database:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, " *⌯︙تم مسح الصلاحيه* \n") 
end
if database:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_," *⌯︙تم الغاء الامر* \n") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == 'مدير' then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_" *⌯︙تستطيع اضافه صلاحيات {ادمن - مميز - عضو}* \n*⌯︙ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'ادمن' then
if not Manager(msg) then 
send(msg.chat_id_, msg.id_," *⌯︙تستطيع اضافه صلاحيات {مميز - عضو}* \n*⌯︙ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'مميز' then
if not Mod(msg) then
send(msg.chat_id_, msg.id_," *⌯︙ تستطيع اضافه صلاحيات {عضو}* \n*⌯︙ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'مدير' or text == 'ادمن' or text == 'مميز' or text == 'عضو' then
local textn = database:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, " *⌯︙تـم اضـافـه الامـر*") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end
if text and text:match('رفع (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then   
local RTPA = text:match('رفع (.*)')
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('تنزيل (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then   
local RTPA = text:match('تنزيل (.*)')
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙م تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙تم تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙ تم تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'..'\n*⌯︙تم تنزيله من '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('^رفع (.*) @(.*)') and Mod(msg) then   
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم رفعه '..text1[2]..'*')   
end
else
info = ' *⌯︙المعرف غلط*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match('^تنزيل (.*) @(.*)') and Mod(msg) then    
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *⌯︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'X_G_33')..')'..'\n*⌯︙تم تنريله من '..text1[2]..'*')   
end
else
info = ' *⌯︙المعرف غلط*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
if text == "مسح رسايلي" or text == "مسح رسائلي" or text == "حذف رسايلي" or text == "حذف رسائلي" then  
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح رسائلك*'  )  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if text == "رسايلي" or text == "رسائلي" or text == "msg" and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,' *⌯︙عدد رسائلك » { '..database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_)..'}*' ) 
end 
if text == 'تفعيل الاذاعه' and DevTELANDW(msg) then  
if database:get(bot_id..'Bc:Bots') then
database:del(bot_id..'Bc:Bots') 
Text = '\n *⌯︙تم تفعيل الاذاعه*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل الاذاعه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الاذاعه' and DevTELANDW(msg) then  
if not database:get(bot_id..'Bc:Bots') then
database:set(bot_id..'Bc:Bots',true) 
Text = '\n *⌯︙تم تعطيل الاذاعه*' 
else
Text = '\n *⌯︙ بالتاكيد تم تعطيل الاذاعه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل التواصل' and DevTELANDW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *⌯︙تم تفعيل التواصل*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل' and DevTELANDW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *⌯︙تم تعطيل التواصل*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي' and DevTELANDW(msg) then   
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *⌯︙تم تفعيل البوت الخدمي*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي' and DevTELANDW(msg) then   
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *⌯︙تم تعطيل البوت الخدمي*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match('^تنظيف (%d+)$') and Manager(msg) and GetChannelMember(msg) then   
if not database:get(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then   
local num = tonumber(text:match('^تنظيف (%d+)$')) 
if num > 1000 then 
send(msg.chat_id_, msg.id_,'*⌯︙تستطيع التنظيف 1000 رساله كحد اقصى*') 
return false  
end  
local msgm = msg.id_
for i=1,tonumber(num) do
DeleteMessage(msg.chat_id_, {[0] = msgm})
msgm = msgm - 1048576
end
send(msg.chat_id_,msg.id_,'*⌯︙تم حذف {'..num..'}*')  
database:setex(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end
end
if text == "تنظيف الميديا" and BasicConstructor(msg) then
msgm = {[0]=msg.id_}
local Message = msg.id_
for i=1,200 do
Message = Message - 1048576
msgm[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = msgm},function(arg,data)
new = 0
msgm2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
msgm2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,msgm2)
end,nil)  
send(msg.chat_id_, msg.id_,"*تم تنظيف الميديا ⌯*")
end
if text == "تنظيف التعديل" and Manager(msg) then
Msgs = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
Msgs[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data)
new = 0
Msgs2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and (not data.messages_[i].edit_date_ or data.messages_[i].edit_date_ ~= 0) then
Msgs2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,Msgs2)
end,nil)  
send(msg.chat_id_, msg.id_,'*⌯︙تم تنظيف جميع الرسائل المعدله*')
end
if text == "تغير اسم البوت" or text == "تغيير اسم البوت" then 
if DevTELANDW(msg) then
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *⌯︙ارسل لي الاسم الان* ")  
end
return false
end

if text == ""..(database:get(bot_id..'Name:Bot') or 'سوريا').."" then  
Namebot = (database:get(bot_id..'Name:Bot') or 'سوريا')
local TELAND_Msg = {
'عمغي 🥺💕.',
'هاا شتريد كافي ☹️.',
'مشايف بوت شني 😂.',
'كول حبيبي ؟ اني '..Namebot..'',
'مشغول حالياً',
'عمري فداك '..Namebot..' كول حب'
}
send(msg.chat_id_, msg.id_,'['..TELAND_Msg[math.random(#TELAND_Msg)]..']') 
return false
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevTELANDW(msg) then 
send(msg.chat_id_, msg.id_,' *⌯︙الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *⌯︙ارسل الان اذاعتك* \n*⌯︙للخروج ارسل الغاء*") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevTELANDW(msg) then 
send(msg.chat_id_, msg.id_,' *⌯︙الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *⌯︙ارسل الان اذاعتك* \n*⌯︙للخروج ارسل الغاء* ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevTELANDW(msg) then 
send(msg.chat_id_, msg.id_,' *⌯︙الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *⌯︙ارسل لي التوجيه الان*") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevTELANDW(msg) then 
send(msg.chat_id_, msg.id_,' *⌯︙ الاذاعه معطله من قبل المطور الاساسي*')
return false
end
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *⌯︙ارسل لي التوجيه الان*") 
return false
end 
if text and text:match('^ضع اسم (.*)') and Manager(msg) or text and text:match('^وضع اسم (.*)') and Manager(msg) then 
local Name = text:match('^ضع اسم (.*)') or text and text:match('^وضع اسم (.*)') 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_," *⌯︙البوت ليس ادمن يرجى ترقيتي !*")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *⌯︙ليست لدي صلاحية تغير اسم الجروب*")  
else
send(msg.chat_id_,msg.id_,' *⌯︙تم تغيير اسم الجروب الى* {['..Name..']}')  
end
end,nil) 
end
if text == "تاك للكل" and Mod(msg) and GetChannelMember(msg) then   
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200},function(ta,TELAND)
local t = "\n*ツ قائمة الاعضاء* \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
x = 0
local list = TELAND.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id..'user:Name'..v.user_id_) then
t = t..""..x.." → {[@"..database:get(bot_id..'user:Name'..v.user_id_).."]}\n"
else
t = t..""..x.." → {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Manager(msg) and GetChannelMember(msg) then   
function start_function(extra, result, success)
if TELANDSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_," *⌯︙لا تستطيع تنزيل مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *⌯ تم تنزيل الشخص من جميع الرتب *")
else
send(msg.chat_id_, msg.id_,"\n *⌯︙ عذرا العضو لايملك رتبه* \n")
end
if TELANDSudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.sender_user_id_)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^تنزيل الكل @(.*)$") and Manager(msg) then
function FunctionStatus(extra, result, success)
if (result.id_) then
if TELANDSudoBot(result.id_) then
send(msg.chat_id_, msg.id_," *⌯︙لا تستطيع تنزيل مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *⌯ تم تنزيل الشخص من جميع الرتب *")
else
send(msg.chat_id_, msg.id_,"\n *⌯︙ عذرا العضو لايملك رتبه* \n")
end
if TELANDSudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.id_)
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text:match("^تنزيل الكل @(.*)$")}, FunctionStatus, nil)
end
if text == ("مسح ردود المطور") and DevTELANDW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Add:Rd:Sudo:stekr"..v) 
database:del(bot_id.."Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Add:Rd:Sudo:File"..v)
database:del(bot_id.."Add:Rd:Sudo:Audio"..v)
database:del(bot_id..'List:Rd:Sudo')
end
send(msg.chat_id_, msg.id_," *⌯︙تم مسح ردود المطور*")
end

if text == ("ردود المطور") and DevTELANDW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
text = "\n ⌯︙قائمة ردود المطور \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Sudo:Gif"..v) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Sudo:vico"..v) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Sudo:stekr"..v) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Sudo:Text"..v) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Sudo:Photo"..v) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Sudo:Video"..v) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Sudo:File"..v) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Sudo:Audio"..v) then
db = 'اغنيه'
end
text = text..""..k.." >> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " ⌯︙لا يوجد ردود للمطور"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_)
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *⌯︙تم حفظ الرد*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_, 'true1')
database:set(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:sadd(bot_id..'List:Rd:Sudo', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *⌯︙تم ازالة الرد العام*')
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..v..text)
end
database:del(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Rd:Sudo', text)
return false
end
end
if text == 'اضف رد للكل' and DevTELANDW(msg) then    
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الكلمه تريد اضافتها*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text == 'حذف رد للكل' and DevTELANDW(msg) then    
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الكلمه تريد حذفها*')
database:set(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text and not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Add:Rd:Sudo:stekr"..text) 
local text1 = database:get(bot_id.."Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Add:Rd:Sudo:Audio"..text)
------------------------------------------------------------------------ امـيـر الـدلـيـم
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text1 then 
send(msg.chat_id_, msg.id_,text1)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text == ("مسح ردود المدير") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id..'List:Manager'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," *⌯︙تم مسح ردود المدير*")
end
if text == ("ردود المدير") and Manager(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
text = " ⌯︙قائمه ردود المدير \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = 'اغنيه'
end
text = text..""..k..">> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " ⌯︙لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_..'')
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *⌯︙تم حفظ الرد*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_..'') == 'true2' then
send(msg.chat_id_, msg.id_,' *⌯︙تم ازالة الرد* ')
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false
end
end
if text == "اضف رد" and Manager(msg) and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,"*⌯︙ارسل الكلمه التي تريد اضافتها*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد" and Manager(msg) and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,"*⌯︙ارسل الكلمه التي تريد حذفها*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*⌯︙الان ارسل الرد الذي تريد اضافته* \n*⌯︙قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )*\n*⌯︙يمكنك اضافه الى النص :*\n⌯︙`#username` > معرف المستخدم\n⌯︙`#msgs` > عدد رسائل المستخدم\n⌯︙`#name` > اسم المستخدم\n⌯︙`#id` > ايدي المستخدم\n⌯︙`#stast` > رتبه المستخدم \n⌯︙`#edit` > عدد السحكات ')
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"*⌯︙تم ازالة الرد من قائمه الردود*")
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
local Text = database:get(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local Msguser = database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
local edit = database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit)
local Text = Text:gsub('#msgs',Msguser)
local Text = Text:gsub('#stast',rtp)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Spam:Texting"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text == ""..(database:get(bot_id..'Name:Bot') or 'سوريا').." غادر" or text == 'غادر' then  
if Sudo(msg) and not database:get(bot_id..'Left:Bot'..msg.chat_id_)  then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,'*⌯︙تم مغادرة المجموعه*') 
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
end
return false  
end
if text == "بوت" then
local Namebot = (database:get(bot_id..'Name:Bot') or 'سوريا') 
local TELAND_Msg = { 
'اسمي  '..Namebot..' يا قلبي 🤤💚',
'اسمي '..Namebot..' يا روحي🙈❤️',
'اسمي  '..Namebot..' يعمري♥️',
'اسمي  '..Namebot..' يا قمر 🐭🤍',
'اسمي  '..Namebot..' يامزه 🥺❤️',
'اسمي  '..Namebot..' يعم 😒',
'مقولت اسمي '..Namebot..' في اي 🙄',
'اسمي الكيوت '..Namebot..' 🌝💘',
'اسمي  '..Namebot..' ياحياتي🧸♥️',
'اسمي  '..Namebot..' يوتكه🙈🍑',
} 
Namebot = TELAND_Msg[math.random(#TELAND_Msg)] 
local msg_id = msg.id_/2097152/0.5  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}
},

}
local function getpro(extra, result, success) 
if result.photos_[0] then 
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&caption=' .. URL.escape(Namebot).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
else 
send(msg.chat_id_, msg.id_,Namebot, 1, 'md') 
end 
end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil) 
end
if text == 'الاحصائيات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' الاحصائيات ⌯ \n'..'*⌯︙عدد الجروبات » {'..Groups..'}'..'*\n*⌯︙ عدد المشتركين » {'..Users..'}*'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'الجروبات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' *⌯︙عدد الجروبات »* {`'..Groups..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'المشتركين' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' *⌯︙عدد المشتركين »* {`'..Users..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'تفعيل المغادره' and DevTELANDW(msg) then   
if database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل مغادرة البوت*'
database:del(bot_id..'Left:Bot'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل مغادرة البوت*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل المغادره' and DevTELANDW(msg) then  
if not database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *⌯︙تم تعطيل مغادرة البوت*'
database:set(bot_id..'Left:Bot'..msg.chat_id_,true)   
else
Text = ' *⌯︙بالتاكيد تم تعطيل مغادرة البوت*'
end
send(msg.chat_id_, msg.id_, Text) 
end

if text == 'تفعيل ردود المدير' and Manager(msg) then   
if database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل ردود المدير*'
database:del(bot_id..'Reply:Manager'..msg.chat_id_)  
else
Text = ' *⌯︙تم تفعيل ردود المدير*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المدير' and Manager(msg) then  
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
database:set(bot_id..'Reply:Manager'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل ردود المدير*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل ردود المدير*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل ردود المطور' and Manager(msg) then   
if database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:del(bot_id..'Reply:Sudo'..msg.chat_id_)  
Text = '\n *⌯︙تم تفعيل ردود المطور*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل ردود المطور*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المطور' and Manager(msg) then  
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:set(bot_id..'Reply:Sudo'..msg.chat_id_,true)   
Text = '\n *⌯︙تم تعطيل ردود المطور*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل ردود المطور*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي' and Manager(msg) then   
if database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id'..msg.chat_id_) 
Text = '\n *⌯︙تم تفعيل الايدي*' 
else
Text = '\n *⌯︙ بالتاكيد تم تفعيل الايدي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id'..msg.chat_id_,true) 
Text = '\n *⌯︙تم تعطيل الايدي*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل الايدي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي بالصوره' and Manager(msg) then   
if database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id:Photo'..msg.chat_id_) 
Text = '\n *⌯︙تم تفعيل الايدي بالصور*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل الايدي بالصوره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي بالصوره' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id:Photo'..msg.chat_id_,true) 
Text = '\n *⌯︙تم تعطيل الايدي بالصوره*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل الايدي بالصوره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الحظر' and Constructor(msg) then   
if database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:del(bot_id..'Lock:kick'..msg.chat_id_) 
Text = '\n *⌯︙تم تفعيل الحظر*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل الحظر*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الحظر' and Constructor(msg) then  
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:set(bot_id..'Lock:kick'..msg.chat_id_,true) 
Text = '\n *⌯︙تم تعطيل الحظر*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل الحظر*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الرفع' and Constructor(msg) then   
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:del(bot_id..'Lock:Add:Bot'..msg.chat_id_) 
Text = '\n *⌯︙تم تفعيل الرفع*' 
else
Text = '\n *⌯︙بالتاكيد تم تفعيل الرفع*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الرفع' and Constructor(msg) then  
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:set(bot_id..'Lock:Add:Bot'..msg.chat_id_,true) 
Text = '\n *⌯︙تم تعطيل الرفع*' 
else
Text = '\n *⌯︙بالتاكيد تم تعطيل الرفع*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^وضع لقب (.*)$") and msg.reply_to_message_id_ and Constructor(msg) then
local timsh = text:match("^وضع لقب (.*)$")
function start_function(extra, result, success)
local chek = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..bot_id)
local getInfo = JSON.decode(chek)
if getInfo.result.can_promote_members == false then
send(msg.chat_id_, msg.id_,'*⌯︙لا يمكنني تعديل  او وضع لقب ليس لدي صلاحيه*') 
return false  
end
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=true&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
okfalse = json:decode(https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..timsh) ) 
if okfalse.ok == false then
send(msg.chat_id_, msg.id_,'*⌯︙لا يمكن وضع او تعديل لقب له*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n*⌯︙العضو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..') '
status  = '\n*⌯︙الايدي »* '..result.sender_user_id_..'\n*⌯︙تم ضافه {'..timsh..'} كلقب له*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'ايدي' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) or 1) 
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..result.sender_user_id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_) or 0)
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..result.sender_user_id_) or 0)
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,' *⌯︙ايديه ↫ '..iduser..'*\n*⌯︙معرفه ↫* '..username..'\n*⌯︙رتبته ↫ '..rtp..'*\n*⌯︙تعديلاته ↫ '..edit..'*\n*⌯︙نقاطه ↫ '..NUMPGAME..'*\n*⌯︙جهاته ↫ '..Contact..'*\n*⌯︙رسائله ↫ '..Msguser..'*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^ايدي @(.*)$") and GetChannelMember(msg) then   
local username = text:match("^ايدي @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..result.id_) or 1) 
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..result.id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..result.id_) or 0)
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..result.id_) or 0)
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,' *⌯︙ايديه ↫ '..iduser..'*\n*⌯︙معرفه ↫* '..username..'\n*⌯︙رتبته ↫ '..rtp..'*\n*⌯︙تعديلاته ↫ '..edit..'*\n*⌯︙نقاطه ↫ '..NUMPGAME..'*\n*⌯︙جهاته ↫ '..Contact..'*\n*⌯︙رسائله ↫ '..Msguser..'*')
end,nil)
else
send(msg.chat_id_, msg.id_,' *⌯︙المعرف غير صحيح* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'رتبتي' then
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,' *⌯︙رتبتك في البوت »* '..rtp)
end
if text == 'لقبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
send(msg.chat_id_, msg.id_,'*⌯︙ لقبه هو :* '..getcustom(msg,result)) 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == 'لقبي' and tonumber(msg.reply_to_message_id_) == 0 then
send(msg.chat_id_, msg.id_,'*⌯︙ لقبك هو :* '..getcustom(msg,msg)) 
end
if text == "اسمي"  then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = ' *⌯︙اسمك الاول »* {*`'..(result.first_name_)..'`*}'
else
first_name = ''
end   
if result.last_name_ then 
last_name = ' *⌯︙اسمك الثاني »* {*`'..result.last_name_..'`*}' 
else
last_name = ''
end  
send(msg.chat_id_, msg.id_,first_name..'\n'..last_name) 
end,nil)
end 
if text == 'بايو' then   
send(msg.chat_id_, msg.id_,getbio(msg.sender_user_id_)) 
end 
if text == 'ايديي' then
send(msg.chat_id_, msg.id_,' *⌯︙ايديك »* '..msg.sender_user_id_)
end
if text == 'الرتبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*⌯︙اسم المستخدم » (*'..username..'*)\n⌯︙الرتبه » ('..rtp..')*\n')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^الرتبه @(.*)$") then
local username = text:match("^الرتبه @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'*⌯︙اسم المستخدم » (*'..username..'*)\n⌯︙الرتبه » ('..rtp..')*\n')
end,nil)
else
send(msg.chat_id_, msg.id_,'*- المعرف غير صحيح* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'كشف' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'X_G_33')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*⌯︙الايدي » ('..iduser..')*\n*⌯︙الاسم » (*'..username..')\n*⌯︙الرتبه » ('..rtp..')*\n*⌯︙نوع الكشف » بالرد*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^كشف @(.*)$") then
local username = text:match("^كشف @(.*)$")
function Function_v(extra, result, success)
if result.id_ then
tdcli_function({ID = "GetUser",user_id_ = result.id_}, function(arg, data)
if data.username_ then
UserName_User = '@' .. data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local frLsn = data.first_name_..' '..(data.last_name_ or "")
 local Status_Gps = Rutba(Id,msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n*⌯︙الاسم » ('..frLsn..')\n⌯︙الايدي » '..Id..'\n⌯︙المعرف » *['..UserName_User..']*\n⌯︙الرتبة » '..Status_Gps..'\n⌯︙نوع الكشف - بالمعرف*')
end, nil)
else
send(msg.chat_id_, msg.id_, ' *⌯︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function({ID = "SearchPublicChat",username_ = username}, Function_v, nil)
return false
end
if text and text:match("^كشف (%d+)$") then
local userid = text:match("^كشف (%d+)$") 
if userid then
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = ("@"..data.username_ or "لا يوجد")
local id = userid
local rtp = Rutba(id,msg.chat_id_)
texts ='*⌯︙الايدي » ('..id..')*\n*⌯︙المعرف » (*['..UserName..'])\n*⌯︙الرتبه » ('..rtp..')*\n*⌯︙نوع الكشف » بالايدي*'
send(msg.chat_id_, msg.id_, texts)
end,nil)
return false
end
end  
if text==('عدد الجروب') and Mod(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_," *⌯︙البوت ليس ادمن* \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
local amir = ' *⌯︙عدد الادمنيه :* '..data.administrator_count_..
'\n\n*⌯︙عدد المطرودين :* '..data.kicked_count_..
'\n\n*⌯︙عدد الاعضاء :* '..data.member_count_..
'\n\n*⌯︙عدد رسائل الجروب :* '..(msg.id_/2097152/0.5)..
'\n\n*⌯︙ اسم الجروب :* ['..ta.title_..']'
send(msg.chat_id_, msg.id_, amir) 
end,nil)
end,nil)
end 
if text then   
if database:get(bot_id..'Set:array'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
local test = database:get(bot_id..'Text:array'..msg.sender_user_id_..':'..msg.chat_id_..'')
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:sadd(bot_id.."Add:Rd:array:Text"..test..msg.chat_id_,text)  
_key = {
{{text="اضغط هنا لانهاء الاضافه",callback_data="EndAddarray"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,' *⌯︙تم حفظ الرد يمكنك ارسال اخر او اكمال العمليه من خلال الزر اسفل ✅*',_key,msg.id_)
return false  
end
end    
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_) == 'dttd' then
database:del(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_)
gery = database:get(bot_id.."Set:array:addpu"..msg.sender_user_id_..":"..msg.chat_id_)
if not database:sismember(bot_id.."Add:Rd:array:Text"..gery..msg.chat_id_,text) then
send(msg.chat_id_, msg.id_,' *⌯︙لا يوجد رد متعدد * ')
return false
end
send(msg.chat_id_, msg.id_,' *⌯︙تم حذفه بنجاح .* ')
database:srem(bot_id.."Add:Rd:array:Text"..gery..msg.chat_id_,text)
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_) == 'delrd' then
database:del(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_)
if not database:sismember(bot_id..'List:array'..msg.chat_id_,text) then
send(msg.chat_id_, msg.id_,' *⌯︙لا يوجد رد متعدد * ')
return false
end
send(msg.chat_id_, msg.id_,' *⌯︙قم بارسال الرد الذي تريد حذفه منه* ')
database:set(bot_id.."Set:array:addpu"..msg.sender_user_id_..":"..msg.chat_id_,text)
database:set(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_,"dttd")
return false
end
end
if text == "حذف رد من متعدد" and Manager(msg) then
send(msg.chat_id_, msg.id_,"*⌯︙ارسل الكلمه الرد الاصليه*")
database:set(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_,"delrd")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array"..msg.sender_user_id_..":"..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *⌯︙ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:array'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:array'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)   
database:sadd(bot_id..'List:array'..msg.chat_id_..'', text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_) == 'delrd' then
database:del(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *⌯︙تم ازالة الرد المتعدد بنجاح* ')
database:del(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)
database:srem(bot_id..'List:array'..msg.chat_id_, text)
return false
end
end
if text == "حذف رد متعدد" and Manager(msg) then
send(msg.chat_id_, msg.id_,"*⌯︙ارسل الكلمه التي تريد حذفها*")
database:set(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_,"delrd")
return false 
end
if text then
if  database:sismember(bot_id..'List:array'..msg.chat_id_,text) then
local list = database:smembers(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)
quschen = list[math.random(#list)]
send(msg.chat_id_, msg.id_,quschen)
end
end
if text == ("الردود المتعدده") and Manager(msg) then
local list = database:smembers(bot_id..'List:array'..msg.chat_id_..'')
text = " ⌯︙قائمه الردود المتعدده \n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n"
for k,v in pairs(list) do
text = text..""..k..">> ("..v..") » {رساله}\n"
end
if #list == 0 then
text = " ⌯︙لا يوجد ردود متعدده"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text == ("مسح الردود المتعدده") and BasicConstructor(msg) and GetChannelMember(msg) then   
local list = database:smembers(bot_id..'List:array'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:array:Text"..v..msg.chat_id_)   
database:del(bot_id..'List:array'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," *⌯︙تم مسح الردود المتعدده*")
end
if text == "اضف رد متعدد" and Manager(msg) and GetChannelMember(msg) then   
send(msg.chat_id_, msg.id_,"*⌯︙ارسل الكلمه التي تريد اضافتها*")
database:set(bot_id.."Set:array"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == 'اطردني' or text == 'طردني' and GetChannelMember(msg) then   
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
if Can_or_NotCan(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *⌯︙عذرا لا استطيع طرد ( '..Rutba(msg.sender_user_id_,msg.chat_id_)..' )*')
return false
end
_key = {
{{text="تأكيد الامر",callback_data="OkKikedMe"..msg.sender_user_id_},{text="الغاء الامر",callback_data="noKikedMe"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_," *⌯︙قم بتأكيد العمليه الان*",_key,msg.id_)
return false
else
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل امر اطردني*') 
end
end
if text and text:match("^صيح (.*)$") then
local username = text:match("^صيح (.*)$") 
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
function start_function(extra, result, success)
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_,' *⌯︙المعرف غلط* ') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
send(msg.chat_id_, msg.id_,' *⌯︙لا استطيع اصيح معرف قنوات*') 
return false  
end
if result.type_.user_.type_.ID == "UserTypeBot" then
send(msg.chat_id_, msg.id_,' *⌯︙لا استطيع اصيح معرف بوتات*') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'*⌯︙لا اسطيع صيح معرفات الجروبات*') 
return false  
end
if result.id_ then
send(msg.chat_id_, msg.id_,' *⌯︙تعال حبي يصيحونك بل جروب ['..username..']*') 
return false
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
else
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل امر صيح*') 
end
return false
end
if text == 'منو ضافني' then
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,' *⌯︙انت منشئ الجروب*') 
return false
end
local Added_Me = database:get(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = ' *⌯︙الشخص الذي قام باضافتك هو »* '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,' *⌯︙انت دخلت عبر الرابط لتلح*') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,' *⌯︙تم تعطيل امر منو ضافني*') 
end
end
if text == 'تفعيل ضافني' and Manager(msg) then   
if database:get(bot_id..'Added:Me'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل امر منو ضافني*'
database:del(bot_id..'Added:Me'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل امر منو ضافني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ضافني' and Manager(msg) then  
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
database:set(bot_id..'Added:Me'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل امر منو ضافني*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل امر منو ضافني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل صيح' and Manager(msg) then   
if database:get(bot_id..'Seh:User'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل امر صيح*'
database:del(bot_id..'Seh:User'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل امر صيح*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تنزيل جميع الرتب' and BasicConstructor(msg) then  
database:del(bot_id..'Constructor'..msg.chat_id_)
database:del(bot_id..'Manager'..msg.chat_id_)
database:del(bot_id..'Mod:User'..msg.chat_id_)
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *⌯︙تم تنزيل الكل من الرتب الاتيه* \n*⌯︙المميزين ، الادمنيه ، المدراء ، المنشئين* \n')
end
if text == 'تعطيل صيح' and Manager(msg) then  
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
database:set(bot_id..'Seh:User'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل امر صيح*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل امر صيح*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل اطردني' and Manager(msg) then   
if database:get(bot_id..'Cick:Me'..msg.chat_id_) then
Text = ' *⌯︙تم تفعيل امر اطردني*'
database:del(bot_id..'Cick:Me'..msg.chat_id_)  
else
Text = ' *⌯︙بالتاكيد تم تفعيل امر اطردني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل اطردني' and Manager(msg) then  
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
database:set(bot_id..'Cick:Me'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل امر اطردني*'
else
Text = '\n *⌯︙بالتاكيد تم تعطيل امر اطردني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "صورتي"  then
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if not my_ph then
send(msg.chat_id_, msg.id_," *⌯︙الصوره معطله*") 
return false  
end
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_," ⌯︙عدد صورك ↫ "..result.total_count_.." صوره‌‏", msg.id_, msg.id_, "md")
else
send(msg.chat_id_, msg.id_,'لا تمتلك صوره في حسابك', 1, 'md')
  end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
if text == 'تغير الايدي' and Manager(msg) then 
local List = {
[[
- ᴜѕᴇʀɴᴀᴍᴇ 𓄹𓄼 #id .
- ʏᴏᴜʀ ɪᴅ 𓄹𓄼 #username  .
- ᴍѕɢѕ 𓄹𓄼 #msgs .
- ѕᴛᴀᴛѕ 𓄹𓄼 #stast .
- ᴇᴅɪᴛ 𓄹𓄼 #game .
]],
[[
➭- 𝒔𝒕𝒂𓂅 #stast 𓍯. 💕
➮- 𝒖𝒔𝒆𝒓𓂅 #username 𓍯. 💕
➭- 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯. 💕
➭- 𝒊𝒅 𓂅 #id 𓍯. 💕
]],
[[
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 𝑮𝒓𝒐𝒖𝒑 ★
• 🖤 | 𝑼𝑬𝑺 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msgs 𓆊
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
➼ : 𝐼𝐷 𖠀 #id . ♡
➼ : 𝑈𝑆𝐸𝑅 𖠀 #username .♡
➼ : 𝑀𝑆𝐺𝑆 𖠀 #msgs .♡
➼ : 𝑆𝑇𝐴S𝑇 𖠀 #stast .♡ 
➼ : 𝐸𝐷𝐼𝑇  𖠀 #edit .♡
]],
[[
- ايديڪ  ⁞ #id 💘 ٬
- يوزرڪ القميل ⁞ #username 💘 ٬
- رسائلڪ  الطيفهہَ ⁞ #msgs 💘 ٬
- رتبتڪ الحلوه ⁞ #stast  ??٬
- سحڪاتڪ الفول ⁞ #edit 💘 ٬ 
]],
[[
- 𝒊𝒅 ➺ #id 💗
- 𝒖𝒔𝒆𝒓 ➺  #username 💗
- 𝒎𝒔𝒈 ➺ #msgs 💗
- 𝒔𝒕𝒂𝒕𝒆 ➺ #stast 💗
- 𝒆𝒅I𝒕 ➺ #edit  💗
]],
[[
☁️ . USERNAME . #username  💞🧸
☁️ . STAST . #stast 💗🦄
☁️ . ID . #id 🧘🏼‍♀💘
☁️ . MSGS . #msgs 💗👧🏻
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
• 𝙐𝙎𝙀𝙍𝙉𝘼𝙈𝙀 ➤ #username .
• 𝙈𝙀𝙎𝙎𝘼𝙂𝙀𝙎 ➤ #msgs .
• 𝙎𝙏𝘼𝙏𝙎 ➤ #stast .
• 𝙄𝘿 ➤ #id .
]]}
local Text_Rand = List[math.random(#List)]
database:set(bot_id.."KLISH:ID"..msg.chat_id_,Text_Rand)
send(msg.chat_id_, msg.id_,'*⌯︙تم تغير الايدي ارسل ايدي لرؤيته*')
end
if text == ("ايدي") and msg.reply_to_message_id_ == 0 and not database:get(bot_id..'Bot:Id'..msg.chat_id_) and GetChannelMember(msg) then   
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da)  tdcli_function ({ ID = "SendChatAction",  chat_id_ = msg.sender_user_id_, action_ = {  ID = "SendMessageTypingAction", progress_ = 100}  },function(arg,ta)  tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)  tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,amir,success) 
if da.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'مشرف' 
elseif da.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
local getcustomY = getcustom(msg,msg)
local getbioY = getbio(msg.sender_user_id_)
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 1) 
local nummsggp = tonumber(msg.id_/2097152/0.5)
local nspatfa = tonumber(Msguser / nummsggp * 100)
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0)
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
local iduser = msg.sender_user_id_
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
local photps = (amir.total_count_ or 0)
local interaction = Total_Msg(Msguser)
local rtpg = rtpa
local amira = {
" ⌯︙اروح فـدوه للـحلوين",
" ⌯︙فديت الصاك محح",
" ⌯︙فـدشـي عمـي",
" ⌯︙دغـيرهـا شبـي هـاذ",
" ⌯︙شهل الگيمر ",
" ⌯︙شهل الصوره تخمبش ",
" ⌯︙فديت الحلو ",
" ⌯︙بـبكن حـلك ",
}
local rdphoto = amira[math.random(#amira)]
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then  
local get_id_text = database:get(bot_id.."KLISH:ID"..msg.chat_id_)
if get_id_text then
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
get_id_text = get_id_text:gsub('#custom',getcustomY) 
get_id_text = get_id_text:gsub('#bio',getbioY) 
get_id_text = get_id_text:gsub('#rdphoto',rdphoto) 
get_id_text = get_id_text:gsub('#id',iduser) 
get_id_text = get_id_text:gsub('#username',username) 
get_id_text = get_id_text:gsub('#msgs',Msguser) 
get_id_text = get_id_text:gsub('#edit',edit) 
get_id_text = get_id_text:gsub('#stast',rtp) 
get_id_text = get_id_text:gsub('#auto',interaction) 
get_id_text = get_id_text:gsub('#game',NUMPGAME) 
get_id_text = get_id_text:gsub('#photos',photps) 
if result.status_.ID == "UserStatusRecently" and result.profile_photo_ ~= false then   
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, amir.photos_[0].sizes_[1].photo_.persistent_id_,get_id_text)   
else 
if result.status_.ID == "UserStatusEmpty" and result.profile_photo_ == false then
send(msg.chat_id_, msg.id_,'['..get_id_text..']')   
else
send(msg.chat_id_, msg.id_, '\n *⌯︙ليس لديك صور في حسابك* \n['..get_id_text..']')  
end 
end
else
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
if result.status_.ID == "UserStatusRecently" and result.profile_photo_ ~= false then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, amir.photos_[0].sizes_[1].photo_.persistent_id_,''..rdphoto..'\n⌯︙ايديك ↫ '..msg.sender_user_id_..'\n⌯︙معرفك ↫ '..username..'\n⌯︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n⌯︙موقعك ↫ '..rtpa..'\n⌯︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n⌯︙رسائلك ↫ '..Msguser..'\n⌯︙البايو ↫ '..getbioY..' \n⌯︙السحكات ↫ '..edit..'\n⌯︙نقاطك ↫ '..NUMPGAME..'\n')
else 
if result.status_.ID == "UserStatusEmpty" and result.profile_photo_ == false then
send(msg.chat_id_, msg.id_,'[\n⌯︙ايديك ↫ '..msg.sender_user_id_..'\n⌯︙معرفك ↫ '..username..'\n⌯︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n⌯︙موقعك ↫ '..rtpa..'\n⌯︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n⌯︙رسائلك ↫ '..Msguser..'\n⌯︙البايو ↫ '..getbioY..' \n⌯︙السحكات ↫ '..edit..'\n⌯︙نقاطك ↫ '..NUMPGAME..']\n')
else
send(msg.chat_id_, msg.id_, '\n⌯︙الصوره ↫ ليس لديك صور في حسابك'..'[\n⌯︙ايديك ↫ '..msg.sender_user_id_..'\n⌯︙معرفك ↫ '..username..'\n⌯︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n⌯︙موقعك ↫ '..rtpa..'\n⌯︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n⌯︙رسائلك ↫ '..Msguser..'\n⌯︙البايو ↫ '..getbioY..' \n⌯︙السحكات ↫ '..edit..'\n⌯︙نقاطك ↫ '..NUMPGAME..']\n')
end 
end
end
else
local get_id_text = database:get(bot_id.."KLISH:ID"..msg.chat_id_)
if get_id_text then
get_id_text = get_id_text:gsub('#custom',getcustomY) 
get_id_text = get_id_text:gsub('#bio',getbioY) 
get_id_text = get_id_text:gsub('#rdphoto',rdphoto) 
get_id_text = get_id_text:gsub('#id',iduser) 
get_id_text = get_id_text:gsub('#username',username) 
get_id_text = get_id_text:gsub('#msgs',Msguser) 
get_id_text = get_id_text:gsub('#edit',edit) 
get_id_text = get_id_text:gsub('#stast',rtp) 
get_id_text = get_id_text:gsub('#auto',interaction) 
get_id_text = get_id_text:gsub('#game',NUMPGAME) 
get_id_text = get_id_text:gsub('#photos',photps) 
send(msg.chat_id_, msg.id_,'['..get_id_text..']')   
else
send(msg.chat_id_, msg.id_,'[\n ⌯︙ايديك ↫ '..msg.sender_user_id_..'\n ⌯︙معرفك ↫ '..username..'\n ⌯︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n ⌯︙موقعك ↫ '..rtpa..'\n ⌯︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n ⌯︙رسائلك ↫ '..Msguser..'\n ⌯︙البايو ↫ '..getbioY..' \n ⌯︙السحكات ↫ '..edit..'\n ⌯︙نقاطك ↫ '..NUMPGAME..']\n')
end
end

end,nil)
end,nil)
end,nil)
end,nil)
end
end

if text == 'سحكاتي' or text == 'تعديلاتي' then 
local Num = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
if Num == 0 then 
Text = ' *⌯︙ ليس لديك سحكات*'
else
Text = ' *⌯︙عدد سحكاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "مسح سحكاتي" or text == "حذف سحكاتي" then  
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح سحكاتك*'  )  
database:del(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_)
end
if text == "مسح جهاتي" or text == "حذف جهاتي" then  
send(msg.chat_id_, msg.id_,' *⌯︙تم مسح جهاتك*'  )  
database:del(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_)
end
if text == 'جهاتي' or text == 'شكد ضفت' and GetChannelMember(msg) then   
local Num = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
if Num == 0 then 
Text = ' *⌯︙لم تقم بأضافه احد*'
else
Text = ' *⌯︙عدد جهاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تنظيف المشتركين" and DevTELANDW(msg) then   
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,' *⌯︙ لا يوجد مشتركين وهميين في البوت* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,' *⌯︙عدد المشتركين الان » ( '..#pv..' )*\n*⌯︙تم ازالة » ( '..sendok..' ) من المشتركين*\n*⌯︙الان عدد المشتركين الحقيقي » ( '..ok..' ) مشترك* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الجروبات" and DevTELANDW(msg) then   
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,' *⌯︙ لا يوجد جروبات وهميه في البوت*\n')   
else
local TELAND = (w + q)
local sendok = #group - TELAND
if q == 0 then
TELAND = ''
else
TELAND = '\n*⌯︙تم ازالة » { '..q..' } جروبات من البوت*'
end
if w == 0 then
TELANDk = ''
else
TELANDk = '\n*⌯︙تم ازالة » {'..w..'} جروب لان البوت عضو*'
end
send(msg.chat_id_, msg.id_,' *⌯︙عدد الجروبات الان » { '..#group..' }'..TELANDk..''..TELAND..'*\n*⌯︙الان عدد الجروبات الحقيقي » { '..sendok..' } جروبات*\n')   
end
end
end,nil)
end
return false
end
if text and text:match("^(gpinfo)$") or text and text:match("^معلومات الجروب$") then
function gpinfo(arg,data)
-- vardump(data) 
TELANDdx(msg.chat_id_, msg.id_, ' *⌯︙ايدي المجموعة » ( '..msg.chat_id_..' )*\n*⌯︙عدد الادمنيه » ( '..data.administrator_count_..' )*\n*⌯︙عدد المحظورين » ( '..data.kicked_count_..' )*\n*⌯︙عدد الاعضاء » ( '..data.member_count_..' )*\n', 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
-----------
if text ==("مسح") and Mod(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'id:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *⌯︙تم الغاء الامر* ") 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'id:user'..msg.chat_id_)  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..iduserr,numadded)  
send(msg.chat_id_, msg.id_," *⌯︙تم اضافة له {"..numadded..'} من الرسائل*')  
end
------------------------------------------------------------------------
if database:get(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'idgem:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *⌯︙تم الغاء الامر* ") 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'idgem:user'..msg.chat_id_)  
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,  1, "*⌯︙تم اضافة له* {"..numadded..'} من النقود', 1 , 'md')  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then
amir = text:match("^اضف رسائل (%d+)$")
database:set(bot_id..'id:user'..msg.chat_id_,amir)  
database:setex(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *⌯︙ارسل لي عدد الرسائل الان*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
amir = text:match("^اضف نقاط (%d+)$")
database:set(bot_id..'idgem:user'..msg.chat_id_,amir)  
database:setex(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *⌯︙ارسل لي عدد النقاط التي تريد اضافتها*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف نقاط (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_," *⌯︙تم اضافة له {"..Num..'} من النقاط*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n *⌯︙تم اضافة له {"..Num..'} من الرسائل*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text == 'نقاط' or text == 'نقاطي' and GetChannelMember(msg) then  
local Num = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = ' *⌯︙لم تلعب اي لعبه للحصول على نقاط*'
else
Text = ' *⌯︙عدد نقاطك التي ربحتها هيه » { '..Num..' } نقاط*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$")  then  
local NUMPY = text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n* ⌯︙لا استطيع البيع اقل من 1 *") 
return false 
end
if tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,' *⌯︙ليس لديك نقاط في الالعاب*\n*⌯︙اذا كنت تريد ربح نقاط \n*⌯︙ارسل الالعاب وابدأ اللعب !* ') 
else
local NUM_GAMES = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,'\n ⌯︙ليس لديك نقاط في هذه لعبه \n ⌯︙لزيادة نقاطك في اللعبه \n ⌯︙ارسل الالعاب وابدأ اللعب !') 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,' *⌯︙تم خصم » { '..NUMPY..' } من نقاطك* \n*⌯︙وتم اضافة » { '..(NUMPY * 50)..' } رساله الى رسالك*')
end 
return false 
end
if text == 'فحص البوت' and Manager(msg) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. msg.chat_id_ ..'&user_id='.. bot_id..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ' else info = '✘' end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ' else delete = '✘' end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ' else invite = '✘' end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ' else pin = '✘' end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ' else restrict = '✘' end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ' else promote = '✘' end 
send(msg.chat_id_,msg.id_,'\n *⌯︙اهلا عزيزي البوت هنا ادمن*'..'\n*⌯︙وصلاحياته هي ↓* \n*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*'..'\n*⌯︙تغير معلومات الجروب ↞ ❴ '..info..' ❵'..'*\n*⌯︙حذف الرسائل ↞ ❴ '..delete..' ❵'..'*\n*⌯︙حظر المستخدمين ↞ ❴ '..restrict..' ❵'..'*\n*⌯︙دعوة مستخدمين ↞ ❴ '..invite..' ❵'..'*\n*⌯︙تثبيت الرسائل ↞ ❴ '..pin..' ❵'..'*\n*⌯︙اضافة مشرفين جدد ↞ ❴ '..promote..' ❵*')   
end
end
end


if text and text:match("^تغير رد المطور (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد المطور الى »* "..Teext)
end
if text and text:match("^تغير رد المالك (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المالك (.*)$") 
database:set(bot_id.."CoSu:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد المالك الى »* "..Teext)
end
if text and text:match("^تغير رد منشئ الاساسي (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد منشئ الاساسي (.*)$") 
database:set(bot_id.."BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد المنشئ الاساسي الى »* "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد المنشئ الى »* "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد المدير الى »* "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد الادمن الى »* "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد المميز الى »* "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *⌯︙تم تغير رد العضو الى »* "..Teext)
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help'..msg.sender_user_id_)
database:set(bot_id..'help_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help1'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help1'..msg.sender_user_id_)
database:set(bot_id..'help1_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help2'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help2'..msg.sender_user_id_)
database:set(bot_id..'help2_text',text)
return false
end
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help3'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help3'..msg.sender_user_id_)
database:set(bot_id..'help3_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help4'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help4'..msg.sender_user_id_)
database:set(bot_id..'help4_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help5'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help5'..msg.sender_user_id_)
database:set(bot_id..'help5_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help6'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help6'..msg.sender_user_id_)
database:set(bot_id..'help6_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help7'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help7'..msg.sender_user_id_)
database:set(bot_id..'help7_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help8'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help8'..msg.sender_user_id_)
database:set(bot_id..'help8_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help9'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help9'..msg.sender_user_id_)
database:set(bot_id..'help9_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help10'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *⌯︙تم حفظ الكليشه*')
database:del(bot_id..'help10'..msg.sender_user_id_)
database:set(bot_id..'help10_text',text)
return false
end
end

if text == 'استعاده الاوامر' and DevTELANDW(msg) then
database:del(bot_id..'help_text')
database:del(bot_id..'help1_text')
database:del(bot_id..'help2_text')
database:del(bot_id..'help3_text')
database:del(bot_id..'help4_text')
database:del(bot_id..'help5_text')
database:del(bot_id..'help6_text')
database:del(bot_id..'help7_text')
database:del(bot_id..'help8_text')
database:del(bot_id..'help9_text')
database:del(bot_id..'help10_text')
send(msg.chat_id_, msg.id_, ' *⌯︙تم استعادة الاوامر القديمه*')
end
if text == 'تغير امر الاوامر' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه الاوامر*')
database:set(bot_id..'help'..msg.sender_user_id_,'true')
return false 
end
if text == 'تغير امر م1' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م1*')
database:set(bot_id..'help1'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م2' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م2*')
database:set(bot_id..'help2'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م3' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م3*')
database:set(bot_id..'help3'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م4' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م4*')
database:set(bot_id..'help4'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م5' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م5*')
database:set(bot_id..'help5'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م6' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م6*')
database:set(bot_id..'help6'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م7' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م7*')
database:set(bot_id..'help7'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م8' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙ الان يمكنك ارسال الكليشه م8*')
database:set(bot_id..'help8'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م9' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م9*')
database:set(bot_id..'help9'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م10' and DevTELANDW(msg) then
send(msg.chat_id_, msg.id_, ' *⌯︙الان يمكنك ارسال الكليشه م10*')
database:set(bot_id..'help10'..msg.sender_user_id_,'true')
return false 
end
if text == 'الاوامر' and Mod(msg) then
local help_text = database:get(bot_id..'help_text')
Text = [[
*⌯اهلا انتツفي اوامر البوت⌯*
ٴ*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*ٴ
*⌯م1 ◂ اوامر الحمايه*
*⌯م2 ◂ اوامر تعطيل ~ تفعيل*
*⌯م3 ◂ اوامر ضع ~ اضف*
*⌯م4 ◂ اوامر مسح ~ حذف*
*⌯م5 ◂ اوامر تنزيل+رفع+التغير*
*⌯م6 ◂ اوامر الجروب*
*⌯م7 ◂ اوامر التحشيش*
*⌯م8 ◂ اوامر مطور البوت*
*⌯م9 ◂ اوامر مطور الاساسي* 
*⌯م10 ◂ اوامر الاعضاء*
ٴ*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*ٴ
[𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔 ](t.me/X_G_33) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = '𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text == 'تعطيل الالعاب الاحترافيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id..'lockGeamVip'..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,'*⌯︙تم تعطيل الالعاب الاحترافيه*')
end
if text == 'تفعيل الالعاب الاحترافيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id..'lockGeamVip'..msg.chat_id_)  
send(msg.chat_id_, msg.id_,'*⌯︙تم تفعيل الالعاب الاحترافيه*')
end
if text == 'الالعاب الاحترافيه' and Special(msg) then  
if not database:get(bot_id..'lockGeamVip'..msg.chat_id_) then
_key = {
{{text="♟ Chess Game ♟",url='https://t.me/T4TTTTBOT?game=chess'}},
{{text="لعبة فلابي بيرد 🐥",url='https://t.me/awesomebot?game=FlappyBird'},{text="تحداني فالرياضيات 🔢",url='https://t.me/gamebot?game=MathBattle'}},
{{text="تحداني في ❌⭕️",url='t.me/XO_AABOT?start3836619'},{text="سباق الدراجات 🏍",url='https://t.me/gamee?game=MotoFX'}},
{{text="سباق سيارات 🏎",url='https://t.me/gamee?game=F1Racer'},{text="متشابه 👾",url='https://t.me/gamee?game=DiamondRows'}},
{{text="كرة قدم ⚽",url='https://t.me/gamee?game=FootballStar'}},
{{text="دومنا🥇",url='https://vipgames.com/play/?affiliateId=wpDom/#/games/domino/lobby'},{text="❕ليدو",url='https://vipgames.com/play/?affiliateId=wpVG#/games/ludo/lobby'}},
{{text="ورق🤹‍♂",url='https://t.me/gamee?game=Hexonix'},{text="Hexonix❌",url='https://t.me/gamee?game=Hexonix'}},
{{text="MotoFx🏍️",url='https://t.me/gamee?game=MotoFx'}},
{{text="لعبة 2048 🎰",url='https://t.me/awesomebot?game=g2048'},{text="Squares🏁",url='https://t.me/gamee?game=Squares'}},
{{text="Atomic 1▶️",url='https://t.me/gamee?game=AtomicDrop1'},{text="Corsairs",url='https://t.me/gamebot?game=Corsairs'}},
{{text="LumberJack",url='https://t.me/gamebot?game=LumberJack'}},
{{text="LittlePlane",url='https://t.me/gamee?game=LittlePlane'},{text="RollerDisco",url='https://t.me/gamee?game=RollerDisco'}},
{{text="🦖 TELAND Game 🦖",url='https://t.me/T4TTTTBOT?game=TELAND'},{text="🐍 3D Snake Game 🐍",url='https://t.me/T4TTTTBOT?game=snake'}},
{{text="🔵 Color Game 🔴",url='https://t.me/T4TTTTBOT?game=color'}},
{{text="🚀 Rocket Game 🚀",url='https://t.me/T4TTTTBOT?game=rocket'},{text="🏹 Arrow Game 🏹",url='https://t.me/T4TTTTBOT?game=arrow'}},
{{text = '𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
{{text = 'مطور السورس', url="t.me/IMMHH"}},
}
send_inlin_key(msg.chat_id_," *⌯︙قائمه الالعاب الاحترافيه اضغط للعب*",_key,msg.id_)
else
send(msg.chat_id_, msg.id_," *⌯︙الالعاب الاحترافيه معطله في الوقت الحالي .*")
end
end
if text == "تعطيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل الزخرفه*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*⌯︙تم تفعيل الزخرفه*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.." amir:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://vvvzvv.ml/amirZhfa/Teland.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n*⌯︙قائمه الزخرفه* \nٴ⌯∫ٴ*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*ٴ⌯∫○ٴ \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  "..v.." \n"
end
send(msg.chat_id_, msg.id_, t..'ٴ⌯∫ٴ*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*ٴ⌯∫○ٴ\n⌯︙[𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33) ')
end
if text == "تعطيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل الابراج*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*⌯︙تم تفعيل الابراج*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^برج (.*)$") and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://vvvzvv.ml/amirBrg/Teland.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*⌯︙تم تعطيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*⌯︙تم تفعيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^احسب (.*)$") and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^احسب (.*)$")
ge = https.request('https://vvvzvv.ml/amirOmr/Teland.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
i = 0
for k,v in pairs(ag.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text and not database:get(bot_id.."AutoFile") then
Time = database:get(bot_id.."AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then  
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'TELANDW Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
CoSu = database:smembers(bot_id..'CoSu'..v)
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"TELANDW":"'..NAME..'",'
else
t = t..',"'..v..'":{"TELANDW":"'..NAME..'",'
end
if #CoSu ~= 0 then 
t = t..'"CoSu":['
for k,v in pairs(CoSu) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(SUDO, msg.id_,0, 1, nil, './'..bot_id..'.json', '⌯︙عدد مجموعات التي في البوت { '..#list..'}')
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
else 
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
end
if text == "امسح" and Manager(msg) then 
local cun = database:smembers(bot_id..":IdMsg:"..msg.chat_id_)
for k,v in pairs(cun) do 
DeleteMessage(msg.chat_id_, {[0] = v})
end
send(msg.chat_id_, msg.id_,"⌯︙تم مسح الميديا بنجاح")
end
if text == "غنيلي" and not database:get(bot_id.."sing:for:me"..msg.chat_id_) then
data,res = https.request('https://vvvzvv.ml/amirVois/Teland.php')
if res == 200 then
audios = json:decode(data)
if audios.Info == true then
local Text ='*⌯︙تم اختيار المقطع الصوتي لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔.',url="t.me/X_G_33"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice='..URL.escape(audios.info)..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if text == "شنو رئيك بهذا" or text == "شنو رئيك بهذ" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ادب سسز يباوع علي بنات ??🥺"," مو خوش ولد 😶","زاحف وما احبه 😾😹"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "شنو رئيك بهاي" or text == "شنو رئيك بهايي" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"دور حلوين 🤕😹","جكمه وصخه عوفها ☹️😾","حقيره ومنتكبره 😶😂"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "هينه" or text == "رزله" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ولك هيو لتندك بسيادك لو بهاي 👞👈","ميستاهل اتعبي روحي ويا لانه عار","عوفه يروحي هاذا طيز يضل يمضرط🤣"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "مصه" or text == "بوسه" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"مووووووووواححح????","مابوس ولي😌😹","خدك/ج نضيف 😂","البوسه بالف حمبي 🌝💋","خلي يزحفلي وابوسه 🙊😻","كل شويه ابوسه كافي 😏","ماابوسه والله هذا زاحف🦎","محح هاي لحاته صاكه??"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "كت تويت" or text == "تويت" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"آخر مرة زرت مدينة الملاهي؟","آخر مرة أكلت أكلتك المفضّلة؟","الوضع الحالي؟\n‏1. سهران\n‏2. ضايج\n‏3. أتأمل","آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟💕","آخر خبر سعيد، متى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريح، مشتاق؟","‏- صريح، هل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث شو راح تكون ؟."," فنانك المُفضل؟","لو خيروك تصاحب الناس الاذكياء او الناس المرحين","اسم معلم ترك اثراً جميل عليك رغم قسوتة.؟","وش الحب بنظرك؟","لو خيروك جاي او قهوه","لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟","شاركنا أقوى بيت شِعر من تأليفك؟","نصيحه تبدا ب -لا- ؟","كل شيء يهون الا ؟","عندك الشخص الي مستعد يوقف ضد العالم عشانك.؟","العلاقة السرية دائماً تكون حلوة؟","منشن شخص واعترف له بشي","منشن لصديقك المُقرب؟.","اخر خيانه؟.","أول حرف من اسم الحب؟","تشارك كل شي لاهلك ولا فيه أشياء ما تتشارك؟","أكثر شيء تغيّر في أسلوب حياتك بعد كورونا ؟","هات شعورك بسطر اغُنيه؟","شيء مهما حطيت فيه مصاري بتكون مبسوط؟","اغرب شي سويته ؟","كيف تشوف الجيل هذا؟","اخر همك في الحياة ؟","انت من الناس الكتومة ولا تفضفض؟","اكثر مكان تروحه لحالك ؟","قوة الصداقة بشو بتتكون؟","تطبيق تبي تحذفه من جهازك بس مضطر تستخدمه ؟","كم أعلى مبلغ جمعته؟","اخر شي شريته ؟","كلمة للشخص اللي يسب ويسكر؟","لعبة بجوالك تلعبها دايم ؟","مر عليك موقف محرج؟","علمنا عن تجربه خلت شخصيتك اقوى ؟","يوم من أيام الأسبوع روتينه ممل عندك ؟","عندك شخص تسميه ثالث والديك؟","شو هو طعامك المفضل؟","اخر همك في الحياة ؟","شو حابب تقول للاشخاص اللي بتدخل حياتك؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","موهبتك المكبوتة ؟","انت من الناس اللي تتغزل بالكل ولا بالشخص اللي تحبه بس؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","ماذا يعني لك حرف A","ماذا يعني لك حرحرM","نسبة رضاك عن نفسك من 10 ؟","عندكم شخص بالبيت بصلح اي شي بيخرب؟","تحس نفسك هطف ؟","تدوس على قلبك او كرامتك؟","  تحس حياتك فاشله ولا ناجحه؟","لو الشخص اللي تحبه قال بدخل حساباتك بتعطيه ولا بترفض؟","ميزة وعيب فيك ؟","وش ينادونك في البيت ؟", }  
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == 'تفعيل الردود' and Manager(msg) then   
database:del(bot_id..'lock:reply'..msg.chat_id_)  
Text = ' *⌯︙تم تفعيل الردود*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الردود' and Manager(msg) then  
database:set(bot_id..'lock:reply'..msg.chat_id_,true)  
Text = '\n *⌯︙تم تعطيل الردود*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'روابط الحذف' or text == 'رابط  حذف' or text == 'رابط الحذف' then
local Text = [[
مواقع  مسح حسابات،🍂
اترزع هنا متحذفش عشان احبك 💋🌚
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Telegram',url="https://my.telegram.org/auth?to=delete"}},
{{text = 'instagram', url="https://www.instagram.com/accounts/login/?next=/accounts/remove/request/permanent/"}}, 
{{text = 'Facebook', url="https://www.facebook.com/help/deleteaccount"}}, 
{{text = 'Snspchat', url="https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fdeleteaccount"}}, 
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/yhu79/8&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'بوت الحذف' or text == 'بوت حذف' or text == 'بوت حذف حسابات' then
local Text = [[
بوت  مسح حسابات،🍂
فكر قبل لا تتسرع وتروح
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'BOT Telegram', url="t.me/LC6BOT"}}, 
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/yhu79/7&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text and text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده الحساب'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == "صلاحياته" and tonumber(msg.reply_to_message_id_) > 0 then
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
Get_Info(msg,msg.chat_id_,result.sender_user_id_)
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
------------------------------------------------------------------------
if text == "صلاحياتي" then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Get_Info(msg,msg.chat_id_,msg.sender_user_id_)
end  
end
------------------------------------------------------------------------
if text and text:match('^صلاحياته @(.*)') then   
local username = text:match('صلاحياته @(.*)')   
if tonumber(msg.reply_to_message_id_) == 0 then 
function prom_username(extra, result, success) 
if (result and result.code_ == 400 or result and result.message_ == "USERNAME_NOT_OCCUPIED") then
SendText(msg.chat_id_,msg.id_,"*⌯︙المعرف غير صحيح \n*")   
return false 
end   
Get_Info(msg,msg.chat_id_,result.id_)
end  
tdcli_function ({ID = "SearchPublicChat",username_ = username},prom_username,nil) 
end 
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end -- Chat_Type = 'GroupBot' 
end -- end msg 
--------------------------------------------------------------------------------------------------------------
function tdcli_update_callback(data)  -- clback
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
t = "قام احد المنشئين بطرد البوت من مجموعته\n\n"
tdcli_function({ID ="GetChat",chat_id_="-100"..data.channel_.id_},function(arg,chat)  
local NameChat = chat.title_
t =t.."اسم المجموعه\n"..NameChat
local IdChat = "-100"..data.channel_.id_
t =t.."\n\nايدي المجموعه\n"..IdChat
send(SUDO, msg.id_,t)
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end,nil)
end
end
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local From_id = data.id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local DAata = data.payload_.data_
if DAata and DAata:match("^(%d+):searchVid(.*)$") then
id_from_user  = DAata:match("(%d+)")  
local OnVid = DAata:gsub(':searchVid',''):gsub(id_from_user,'')
msgidrp  = OnVid:match("(%d+)")
local id_from_vid = DAata:gsub(':',''):gsub('searchVid',''):gsub(id_from_user,''):gsub(msgidrp,'')
if tonumber(data.sender_user_id_) ~= tonumber(id_from_user) then  
local notText = '⌯︙ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
object = https.request('https://black-source.tk/Api/InfoVid.php?url=http://www.youtube.com/watch?v='..URL.escape(id_from_vid))
objectend = JSON.decode(object)
infovid = "⌯︙ اختر صيغه التنزيل الان.\n"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Mp4', callback_data=id_from_user..":DownloadVid:"..msgidrp..":"..id_from_vid..":Mp4"},{text = 'mp3', callback_data=id_from_user..":DownloadVid:"..msgidrp..":"..id_from_vid..":mp3"},{text = 'ogg', callback_data=id_from_user..":DownloadVid:"..msgidrp..":"..id_from_vid..":ogg"}},
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(infovid)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
InfoVid = https.request('https://black-source.tk/Api/BotYoutube.php?Id='..URL.escape(id_from_vid))
InfoVidend = JSON.decode(InfoVid)
if InfoVidend.Info.video == "not" then  
https.request("https://vvvzvv.ml/Xx/searchinbot.php?V="..URL.escape(id_from_vid).."&ch=do")
end
end
if DAata and DAata:match("^(%d+):DownloadVid(.*)$") then
local notId  = DAata:match("(%d+)")  
if tonumber(data.sender_user_id_) ~= tonumber(notId) then  
local notText = '⌯︙ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
https.request("https://vvvzvv.ml/Xx/searchinbot.php?token="..token.."&chat_id="..Chat_id.."&data="..URL.escape(DAata).."&n=do")
end
Ok_id  = DAata:match("(%d+)")  
if DAata == 'okCaptcha'..data.sender_user_id_ then  
DeleteMessage(Chat_id, {[0] = Msg_id}) 
return https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. Chat_id .. "&user_id="..Ok_id .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
end
if DAata == '/help1' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اوامر الحمايه اتبع مايلي ...*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ قفل + فتح ← الامر…*
*⌯~⪼ ← { بالتقيد ، بالطرد ، بالكتم }*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الروابط*
*⌯~⪼ المعرف*
*⌯~⪼ التاك*
*⌯~⪼ الشارحه*
*⌯~⪼ التعديل*
*⌯~⪼ التثبيت*
*⌯~⪼ المتحركه*
*⌯~⪼ الملفات*
*⌯~⪼ الصور*
*⌯~⪼ التفليش*
*⌯~⪼ الاباحي*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الماركداون*
*⌯~⪼ البوتات*
*⌯~⪼ التكرار*
*⌯~⪼ الكلايش*
*⌯~⪼ السيلفي*
*⌯~⪼ الملصقات*
*⌯~⪼ الفيديو*
*⌯~⪼ الانلاين*
*⌯~⪼ الدردشه*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ التوجيه*
*⌯~⪼ الاغاني*
*⌯~⪼ الصوت*
*⌯~⪼ الجهات*
*⌯~⪼ الاشعارات*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help2' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي …*
*⌯~⪼ اوامر تفعيل وتعطيل …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ تفعيل ~ تعطيل + امر …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اطردني*
*⌯~⪼ صيح*
*⌯~⪼ ضافني*
*⌯~⪼ الرابط* 
*⌯~⪼ الحظر*
*⌯~⪼ الرفع*
*⌯~⪼ الحظر*
*⌯~⪼ الرفع *
*⌯~⪼ الايدي*
*⌯~⪼ الالعاب*
*⌯~⪼ ردود المطور*
*⌯~⪼ الترحيب*
*⌯~⪼ ردود المدير*
*⌯~⪼ الردود*
*⌯~⪼ ردود البوت*
*⌯~⪼ الرسائل اليوميه*
*⌯~⪼ التحقق*
*⌯~⪼ اوامر التحشيش*
*⌯~⪼ صورتي*
*⌯~⪼ زخرفه*
*⌯~⪼ حساب العمر*
*⌯~⪼ الابراج*
*⌯~⪼ تنبيه الاسماء*
*⌯~⪼ تنبيه المعرف*
*⌯~⪼ تنبيه الصور*
*⌯~⪼ التوحيد*
*⌯~⪼ الكتم الاسم*
*⌯~⪼ نسبه الرجوله* 
*⌯~⪼ نسبه الانوثه*
*⌯~⪼ نسبه الكره*
*⌯~⪼ نسبه الحب*
*⌯~⪼ ءall*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help3' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي …*
*⌯~⪼ اوامر الوضع ~ اضف …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اضف / حذف ← رد*
*⌯~⪼ اضف / حذف ← رد متعدد*
*⌯~⪼ اضف / حذف ← صلاحيه*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ ضع + امر …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اسم*
*⌯~⪼ رابط*
*⌯~⪼ ترحيب*
*⌯~⪼ قوانين*
*⌯~⪼ صوره*
*⌯~⪼ وصف*
*⌯~⪼ تكرار + عدد*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help4' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي …*
*⌯~⪼ اوامر مسح / الحذف ← امر*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ مسح + امر …*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الايدي*
*⌯~⪼ الادمنيه*
*⌯~⪼ المميزين*
*⌯~⪼ ردود المدير*
*⌯~⪼ المدراء* 
*⌯~⪼ المنشئين* 
*⌯~⪼ الاساسين*
*⌯~⪼ الاسماء المكتومه*
*⌯~⪼ البوتات*
*⌯~⪼ امسح*
*⌯~⪼ صلاحيه*
*⌯~⪼ قائمه منع المتحركات*
*⌯~⪼ قائمه منع الصور*
*⌯~⪼ قائمه منع الملصقات*
*⌯~⪼ مسح قائمه المنع* 
*⌯~⪼ المحذوفين*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ حذف + امر ...*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ امر *
*⌯~⪼ الاوامر المضافه*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help5' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي …*
*⌯~⪼ اوامر تنزيل ورفع …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ مميز*
*⌯~⪼ ادمن*
*⌯~⪼ مدير*
*⌯~⪼ منشئ*
*⌯~⪼ منشئ اساسي*
*⌯~⪼ مالك*
*⌯~⪼ الادمنيه*
*⌯~⪼ ادمن بالجروب*
*⌯~⪼ ادمن بكل الصلاحيات*
*⌯~⪼ القيود*
*⌯~⪼ تنزيل جميع الرتب*
*⌯~⪼ تنزيل الكل* 
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اوامر التغير …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ تغير رد المطور + اسم*
*⌯~⪼ تغير رد المالك + اسم*
*⌯~⪼ تغير رد منشئ الاساسي + اسم*
*⌯~⪼ تغير رد المنشئ + اسم*
*⌯~⪼ تغير رد المدير + اسم*
*⌯~⪼ تغير رد الادمن + اسم*
*⌯~⪼ تغير رد المميز + اسم*
*⌯~⪼ تغير رد العضو + اسم*
*⌯~⪼ تغير امر الاوامر*
*⌯~⪼ تغير امر م1 ~ الئ م10*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help6' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي …*
*⌯~⪼ اوامر المجموعه …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الاوامر … كالتالي*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ استعاده الاوامر*
*⌯~⪼ تحويل كالاتي~⪼ صور : ملصق : صوت : بصمه*
*⌯~⪼ صيح ~ تاك ~ المميزين : الادمنيه : المدراء : المنشئين : المنشئين الاساسين : للمالك*
*⌯~⪼ كشف القيود *
*⌯~⪼ تعين الايدي*
*⌯~⪼ تغير الايدي*
*⌯~⪼ الحساب + ايدي الحساب*
*⌯~⪼ تنظيف + العدد*
*⌯~⪼ تنزيل الكل*
*⌯~⪼ تنزيل جميع الرتب*
*⌯~⪼ منع + برد*
*⌯~⪼~ الصور + متحركه + ملصق ~*
*⌯~⪼ حظر ~ كتم ~ تقيد ~ طرد*
*⌯~⪼ المحظورين ~ المكتومين ~ المقيدين*
*⌯~⪼ الغاء كتم + حظر + تقيد ~ بالرد و معرف و ايدي*
*⌯~⪼ تقيد ~ كتم + الرقم + ساعه*
*⌯~⪼ تقيد ~ كتم + الرقم + يوم*
*⌯~⪼ تقيد ~ كتم + الرقم + دقيقه*
*⌯~⪼ تثبيت ~ الغاء تثبيت*
*⌯~⪼ الترحيب*
*⌯~⪼ الغاء تثبيت الكل* 
*⌯~⪼ كشف البوتات*
*⌯~⪼ الصلاحيات*
*⌯~⪼ كشف ~ برد ← بمعرف ← ايدي*
*⌯~⪼ تاك للكل*
*⌯~⪼ اضف لقب + لقب*
*⌯~⪼ حذف اللقب*
*⌯~⪼ تاك للمشرفين*
*⌯~⪼ اعدادات المجموعه*
*⌯~⪼ عدد الجروب*
*⌯~⪼ ردود المدير*
*⌯~⪼ اسم بوت + الرتبه*
*⌯~⪼ الاوامر المضافه*
*⌯~⪼ وضع توحيد + توحيد*
*⌯~⪼ تعين عدد الكتم + رقم*
*⌯~⪼ التوحيد*
*⌯~⪼ كتم اسم + اسم*
*⌯~⪼ قائمه المنع*
*⌯~⪼ نسبه الحب* 
*⌯~⪼ نسبه رجوله*
*⌯~⪼ نسبه الكره*
*⌯~⪼ نسبه الانوثه*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help7' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ الاوامر التحشيش …*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← الامࢪ*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← مطي* 
*⌯~⪼ تاك للمطايه*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← صخل*
*⌯~⪼ تاك لصخوله*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← جلب*
*⌯~⪼ تاك لجلاب*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← قرد *
*⌯~⪼ تاك لقروده*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← بقره*
*⌯~⪼ تاك لبقرات*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← حصان*
*⌯~⪼ تاك لحصونه*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← طلي*
*⌯~⪼ تاك لطليان*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← زاحف* 
*⌯~⪼ تاك لزواحف*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← جريذي*
*⌯~⪼ تاك لجريذيه*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← الحات*
*⌯~⪼ تاك للحات*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ رفع + تنزيل ← الحاته*
*⌯~⪼ تاك للحاتات*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help8' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼اوامر المطورين* 
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ تفعيل ← تعطيل* 
*⌯~⪼ المجموعات ← المشتركين ← الاحصائيات*
*⌯~⪼ رفع ← تنزيل منشئ اساسي*
*⌯~⪼ مسح الاساسين ← المنشئين الاساسين*
*⌯~⪼ مسح المنشئين ← المنشئين*
*⌯~⪼ رفع ⇠ تنزيل مالك*
*⌯~⪼ مسح قائمه المالك* 
*⌯~⪼ اسم ~⪼ غادر + غادر*
*⌯~⪼ اذاعه* 
*⌯~⪼ ردود المطور *
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help9' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي √*
*⌯~⪼ اوامر مطور الاساسي...↓*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ تفعيل*
*⌯~⪼ تعطيل*
*⌯~⪼ مسح الاساسين*
*⌯~⪼ المنشئين الاساسين*
*⌯~⪼ رفع ⇠ تنزيل منشئ اساسي*
*⌯~⪼ مسح المطورين*
*⌯~⪼ رفع ⇠ تنزيل مالك* 
*⌯~⪼ المطورين*
*⌯~⪼ رفع ⇠ تنزيل مطور*
*⌯~⪼ رفع ~⪼ تنزيل مطور ثانوي*
*⌯~⪼ الثانويين ~⪼ مسح الثانويين*
*⌯~⪼ تفعيل ~⪼ تعطيل الاضافات*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اسم البوت + غادر*
*⌯~⪼ غادر*
*⌯~⪼ اسم بوت + الرتبه*
*⌯~⪼ تحديث السورس*
*⌯~⪼ حضر عام*
*⌯~⪼ كتم عام*
*⌯~⪼ الغاء العام*
⌯~⪼ قائمه العام*
*⌯~⪼ مسح قائمه العام*
*⌯~⪼ جلب نسخه الاحتياطيه*
*⌯~⪼ رفع نسخه الاحتياطيه*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ المتجر* 
*⌯~⪼ متجر الملفات*
*⌯~⪼ الملفات*
*⌯~⪼ مسح الملفات*
*⌯~⪼ تعطيل + تفعيل + اسم ملف*
 *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اذاعه خاص*
*⌯~⪼ اذاعه*
*⌯~⪼ اذاعه بالتوجيه*
*⌯~⪼ اذاعه بالتوجيه خاص*
*⌯~⪼ اذاعه بالتثبيت*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ جلب نسخه الاحتياطيه*
*⌯~⪼ رفع نسخه احتياطيه*
*⌯~⪼ ضع عدد الاعضاء + العدد*
*⌯~⪼ ضع كليشه المطور*
*⌯~⪼ تفعيل/تعطيل الاذاعه*
*⌯~⪼ تفعيل/تعطيل البوت الخدمي*
*⌯~⪼ تفعيل/تعطيل التواصل*
*⌯~⪼ تغير اسم البوت*
*⌯~⪼ اضف/حذف رد للكل*
*⌯~⪼ ردود المطور*
⌯~⪼ مسح ردود المطور*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الاشتراك الاجباري*
*⌯~⪼ تعطيل الاشتراك الاجباري*
*⌯~⪼ تفعيل الاشتراك الاجباري*
*⌯~⪼ حذف رساله الاشتراك*
*⌯~⪼ تغير رساله الاشتراك*
*⌯~⪼ تغير الاشتراك*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الاحصائيات*
*⌯~⪼ المشتركين*
*⌯~⪼ المجموعات* 
*⌯~⪼ تفعيل/تعطيل المغادره*
*⌯~⪼ تنظيف المشتركين*
*⌯~⪼ تنظيف الجروبات*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help10' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*⌯~⪼ اهلا بك عزيزي √*
*⌯~⪼ اوامر الاعضاء كتالي…↓*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ عرض معلوماتك ↑↓*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ ايديي ← اسمي* 
*⌯~⪼ تفاعلي اليوم ← تفاعله اليوم*
*⌯~⪼ رسايلي ← مسح رسايلي* 
*⌯~⪼ رتبتي ← سحكاتي* 
*⌯~⪼ مسح سحكاتي ← المنشئ* 
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اوآمر المجموعه ↑↓*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ الرابط ← القوانين – الترحيب*
*⌯~⪼ ايدي ← اطردني* 
*⌯~⪼ اسمي ← المطور*  
*⌯~⪼ كشف ~ بالرد بالمعرف*
  *ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ اسم البوت + الامر ↑↓*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯~⪼ بوسه بالرد* 
*⌯~⪼ مصه بالرد*
*⌯~⪼ رزله بالرد* 
*⌯~⪼ شنو رئيك بهذا بالرد*
*⌯~⪼ شنو رئيك بهاي بالرد*
*⌯~⪼ تحب هذا*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '-𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help' then
if not Mod(data) then
local notText = '⌯ عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*اهلا انتツفي اوامر البوت*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
*⌯م1 ◂ اوامر الحمايه*
*⌯م2 ◂ اوامر تعطيل ~ تفعيل*
*⌯م3 ◂ اوامر ضع ~ اضف*
*⌯م4 ◂ اوامر مسح ~ حذف*
*⌯م5 ◂ اوامر تنزيل+رفع+التغير*
*⌯م6 ◂ اوامر الجروب*
*⌯م7 ◂ اوامر التحشيش*
*⌯م8 ◂ اوامر مطور البوت*
*⌯م9 ◂ اوامر مطور الاساسي* 
*⌯م10 ◂ اوامر الاعضاء*
*ٴ•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*
[⍆ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔](t.me/X_G_33) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = '𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔', url="t.me/X_G_33"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata and DAata:match("^animation(.*)$") then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local animation = DAata:match("^animation(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="*⌯ تم الغاء منعها بنجاح*"
inline = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filteranimation"..idchci,animation)  
end
if DAata and DAata:match("^pito(.*)$") then  
local idchci = database:get(bot_id.."Filter:msg")
local photo = DAata:match("^pito(.*)$")
local Text ="*⌯ تم الغاء منعها بنجاح*"
inline = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filterphoto"..idchci,photo)  
end
if DAata and DAata:match("^Sticker(.*)$") then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local Sticker = DAata:match("^Sticker(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="*⌯ تم الغاء منعه بنجاح*"
inline = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filtersteckr"..idchci,Sticker)  
end
if DAata and DAata:match("^delallSticker(.*)$") then  
local delallSticker = DAata:match("^delallSticker(.*)$")
local Text ="*⌯ تم الغاء منع كل المتحركات*"
inline = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listSticker = database:smembers(bot_id.."filtersteckr"..delallSticker)  
for k,v in pairs(listSticker) do  
database:srem(bot_id.."filtersteckr"..delallSticker,v)  
end  
end
if DAata and DAata:match("^delallanimation(.*)$") then  
local delallmation = DAata:match("^delallanimation(.*)$")
local Text ="*⌯ تم الغاء منع كل المتحركات*"
inline = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listAnimation = database:smembers(bot_id.."filteranimation"..delallmation)  
for k,v in pairs(listAnimation) do  
database:srem(bot_id.."filteranimation"..delallmation,v)  
end  
end
if DAata and DAata:match("^delallph(.*)$") then  
local delallph = DAata:match("^delallph(.*)$")
local Text ="*⌯ تم الغاء منع كل الصور*"
inline = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listPhoto = database:smembers(bot_id.."filterphoto"..delallph)  
for k,v in pairs(listPhoto) do  
database:srem(bot_id.."filterphoto"..delallph,v)  
end  
end
if DAata == 'EndAddarray'..data.sender_user_id_ then  
if database:get(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id) == 'true1' then
database:del(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *⌯︙تم حفظ الردود بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *⌯︙تم تنفيذ الامر سابقا*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if DAata == 'OkKikedMe'..data.sender_user_id_ then  
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=Chat_id,user_id_=data.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *⌯︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if (data and data.code_ and data.code_ == 3) then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *⌯︙البوت ليس ادمن يرجى ترقيتي !*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *⌯︙عذرا لا استطيع طرد ادمنية الجروب*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.ID and data.ID == 'Ok' then
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *⌯︙تم الطرد بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)   
end
if DAata == 'noKikedMe'..data.sender_user_id_ then  
local Text ="*⌯ تم الغاء الطرد بنجاح .*"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𝚜𝚞𝚛𝚌𝚎 𝚜𝚒𝚛𝚒𝚊',url='http://t.me/X_G_33'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

end
if data.ID == "UpdateNewMessage" then  -- new msg
msg = data.message_
text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if text and not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:del(bot_id..'Spam:Texting'..msg.sender_user_id_) 
end
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
if NewCmmd then
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
database:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *⌯︙تم حذف الامر*')  
else
send(msg.chat_id_, msg.id_,' *⌯︙لا يوجد امر بهاذا الاسم*')  
end
database:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end 
-------------------------------------------------------------------------------------------------------------- 
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if (text and text == "تعطيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, ' *⌯︙تم تعطيل اوامر التحشيش*')
database:set(bot_id.."Fun_Bots:"..msg.chat_id_,"true")
end
if (text and text == "تفعيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, '  *⌯︙تم تفعيل اوامر التحشيش*')
database:del(bot_id.."Fun_Bots:"..msg.chat_id_)
end
local Name_Bot = (database:get(bot_id..'Name:Bot') or 'سوريا')
if not database:get(bot_id.."Fun_Bots:"..msg.chat_id_) then
if text ==  ""..Name_Bot..' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then 
function FunBot(extra, result, success) 
local Fun = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' تحب هذا' and tonumber(msg.reply_to_message_id_) > 0 then
function FunBot(extra, result, success) 
local Fun = {'الكبد مال اني ','يولي ماحبه ',' لٱ ايع ','بس لو الكفها اله اعضها 💔','ماخب مطايه اسف','اكلك ۿذﭑ يكلي احبكك لولا ﭑݩٺ شتكول  ','ئووووووووف اموت ع ربه ','ايععععععععع','بلعباس اعشكك','ماحب مخابيل','احبب ميدو وبس','لٱ ماحبه','بله هاي جهره تكلي تحبهه ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئلني احبهم لولا','افبس حبيبي هذا' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "نسبه الحب" or text == "نسبه حب" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه حب* *'..text..'* هي :* '..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == 'يوتيوب' or text == 'بحث' or text == 'اليوتيوب' then
local Text = [[
اليك بوتات تحميل 🛑
من جميع المواقع 🛑

]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'بوت اليوتيوب 🇲🇦',url="t.me/Qeaa_bot"}},
{{text = 'بوت تيك توك 🏴‍☠️',url="t.me/K0XBOT"}},
{{text = 'بوت انستقرام 🎌',url="t.me/J33Bot"}},
{{text = 'بوت قران 🏳️',url="t.me/quran_lbot"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/siria100/8&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

if text == "سوريا" then
local TEXT_SUD = database:get(bot_id..'Tshake:TEXT_SUDO')
if TEXT_SUDO then 
send(msg.chat_id_, msg.id_,TEXT_SUDO)
else
tdcli_function ({ID = "GetUser",user_id_ = 1950281200,},function(arg,result) 
local function taha(extra, taha, success)
if taha.photos_[0] then
local Name = '𓌹 ✭ 𝚃𝙷𝙴 𝙿𝚁𝙾𝙶𝚁𝙰𝙼𝙼𝙴𝚁 𝙰𝙽𝙳 𝙳𝙴𝚅𝙴𝙻𝙾𝙿𝙴𝚁 𝙾𝙵 𝚂𝙾𝚄𝚁𝙲𝙴 𝚂𝚈𝚁𝙸𝙰 𝙸𝚂 𝙰 𝙽𝙸𝙲𝙴 𝙿𝙴𝚁𝚂𝙾𝙽 𝚆𝙸𝚃𝙷 𝙰 𝚂𝙷𝙰𝚁𝙿 𝚃𝙴𝙼𝙿𝙴𝚁. 𝙽𝙾 𝙰𝙿𝙿𝚁𝙾𝙰𝙲𝙷𝙸𝙽𝙶 ♫✭𓌺\n['..result.first_name_..'](t.me/siria100)\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '  ❨ '..result.first_name_..'  ❩ ',url="t.me/siria100"},
},
{
{text = '𝙈𝙔 𝘾𝙃𝘼𝙉𝙀𝙀𝙀𝙇  ', url="t.me/X_G_33"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Name)..'&photo='..taha.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = 1950281200, offset_ = 0, limit_ = 1 }, taha, nil)
end,nil)
end
end
if text == 'حسناء' or text == 'القمر' then  
local Text = [[  
✭احـلي وحده فلبنات 🌚❤️✭
]]  
keyboard = {}   
keyboard.inline_keyboard = {  
{{text = '✭𝒉𝒂𝒔𝒏𝒂𝒂 𝒎𝒐𝒉𝒂𝒎𝒆𝒅✭',url="t.me/HASNAA828"}},  

}  
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/HASNAA828&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "استوري" and not  database:get(bot_id.."sing:for:me"..msg.chat_id_) then 
ght = math.random(2,22); 
local Text ='تـم اخـتـيـآر  استـوري ممـيز لـك ❤️' 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = '𓌹 ᯓ مــبـرمـج الســورس ★ 𓌺',url="t.me/siria100"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice=https://t.me/koko12300/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "ثيم" then  
ght = math.random(1,33);  
local Text ='الستخدم ثيم اخر اكتب ثيم'  
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = '𓌹 ᯓ مــبـرمـج الســورس ★ 𓌺',url="t.me/siria100"}}, 
} 
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendDocument?chat_id=' .. msg.chat_id_ .. '&document=https://t.me/ahmedthem1/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == 'ميرو' or text == 'مريم' then  
local Text = [[  
✭ روح قـلب سـوريـآا ✭
]]  
keyboard = {}   
keyboard.inline_keyboard = {  
{{text = '✭مـيـرو✭',url="t.me/UUU_OOO1"}},  

}  
local msg_id = msg.id_/2097152/0.5  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/UUU_OOO1&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == 'معلومات السيرفر' and DevTELANDW(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*←← '"$linux_version"'*' 
echo '╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸\n◉✔{ الذاكره العشوائيه } ⇎\n*←← '"$memUsedPrc"'*'
echo '╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸\n◉✔{ وحـده الـتـخـزيـن } ⇎\n*←← '"$HardDisk"'*'
echo '╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸\n◉✔{ الـمــعــالــج } ⇎\n*←← '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸\n◉✔{ الــدخــول } ⇎\n*←← '`whoami`'*'
echo '╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸\n◉✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*←← '"$uptime"'*'
]]):read('*all'))  
end

if text == 'رفع المشتركين' and DevTELANDW(msg) then 
function by_reply(extra, result, success)    
if result.content_.document_ then  
local ID_FILE = result.content_.document_.document_.persistent_id_  
local File_Name = result.content_.document_.file_name_ 
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) )  
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name)  
local info_file = io.open('./users.json', "r"):read('*a') 
local users = JSON.decode(info_file) 
for k,v in pairs(users.users) do 
database:sadd(bot_id..'User_Bot',v)  
end 
send(msg.chat_id_,msg.id_,'تم رفع المشتركين ') 
end    
end 
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil) 
end
if text == 'جلب المشتركين' and DevTELANDW(msg) then 
local list = database:smembers(bot_id..'User_Bot') 
local t = '{"users":['   
for k,v in pairs(list) do 
if k == 1 then 
t =  t..'"'..v..'"' 
else 
t =  t..',"'..v..'"' 
end 
end 
t = t..']}' 
local File = io.open('./users.json', "w") 
File:write(t) 
File:close() 
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './users.json', ' عدد المشتركين { '..#list..'}') 
end

if text == 'جلب المطورين' then 
local list = database:smembers(bot_id..'Sudo:User') 
local t = '{"users":['   
for k,v in pairs(list) do 
if k == 1 then 
t =  t..'"'..v..'"' 
else 
t =  t..',"'..v..'"' 
end 
end 
t = t..']}' 
local File = io.open('./sudos3.json', "w") 
File:write(t) 
File:close() 
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './sudos3.json', ' عدد المطورين { '..#list..'}') 
end 
if text == 'رفع المطورين' then 
function by_reply(extra, result, success)    
if result.content_.document_ then  
local ID_FILE = result.content_.document_.document_.persistent_id_  
local File_Name = result.content_.document_.file_name_ 
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) )  
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name)  
local info_file = io.open('./sudos3.json', "r"):read('*a') 
local users = JSON.decode(info_file) 
for k,v in pairs(users.users) do 
database:sadd(bot_id..'Sudo:User',v)  
end 
send(msg.chat_id_,msg.id_,'تم رفع المطورين ') 
end    
end 
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil) 
end
if text == 'حصل' then
local Text = [[
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '《𝙎𝙐𝙍𝘾𝙀 𝙎𝙄𝙍𝙄𝘼 》', url="t.me/X_G_33"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendvideo?chat_id=' .. msg.chat_id_ .. '&video=https://t.me/ahmedsiria/3&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == 'انا جيت' then
local Text = [[
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = ' 《𝙎𝙐𝙍𝘾𝙀 𝙎𝙄𝙍𝙄𝘼 》', url="t.me/X_G_33"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendsticker?chat_id=' .. msg.chat_id_ .. '&sticker=https://t.me/ahmedsiria/4&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "نسبه الكره" or text == "نسبه كره" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الكره" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه كره* *'..text..'* هي : *'..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "نسبه رجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه رجولته* *\n مثال امير*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه رجوله" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه رجوله* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "نسبه الانوثه" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه انوثتها* *\n مثال نونه*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الانوثه" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه الانوثه* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Muted_User(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_User(msg.chat_id_,msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_User(msg.chat_id_,msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and GBan_User(msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Gmute_User(msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and GBan_User(msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
TELAND = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(TELAND)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "del" then   
TELAND = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(TELAND)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
if msg.content_.ID == 'MessagePinMessage' then
if Constructor(msg) then 
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id..'Pin:Id:Msg'..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false
end
end   
--------------------------------------------------------------------------------------------------------------
SourceTELAND(data.message_,data)
plugin_Peland(data.message_)
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
database:set(bot_id..'user:Name'..msg.sender_user_id_,(data.username_))
end
--------------------------------------------------------------------------------------------------------------
if tonumber(data.id_) == tonumber(bot_id) then
return false
end
end,nil)   
end
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'edits'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."lock_edit_med"..msg.chat_id_) and not Text and not BasicConstructor(result) then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local username = data.username_
local name = data.first_name_
local iduser = data.id_
local users = ('[@'..data.username_..']' or iduser)
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *⌯︙شخص ما يحاول تعديل الميديا* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *⌯︙لا يوجد ادمن*"
end
send(msg.chat_id_,0,''..t..'\n*•━━━━━━ 𝗦𝗨𝗥𝗖𝗘 𝗦𝗜𝗥𝗜𝗔  ━━━━━━━•*\n*⌯︙تم التعديل على الميديا*\n*⌯︙الشخص الي قام بالتعديل*\n*⌯︙ايدي الشخص ◂ '..result.sender_user_id_..'*\n*⌯︙معرف الشخص»{ '..users..' }*') 
end,nil)
DeleteMessage(msg.chat_id_,{[0] = msg.message_id_}) 
end
local text = result.content_.text_
if not Mod(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
local TELANDAbot = database:get(bot_id.."TELAND1:Add:Filter:Rp2"..text..result.chat_id_)   
if TELANDAbot then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *⌯︙العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n⌯︙["..TELANDAbot.."] \n") 
else
send(msg.chat_id_,0," *⌯︙العضو :* {["..data.first_name_.."](T.ME/X_G_33)}\n⌯︙["..TELANDAbot.."] \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local TELAND1_Msg = database:get(bot_id.."TELAND1:Add:Filter:Rp2"..text..result.chat_id_)   
if TELAND1_Msg then
send(msg.chat_id_, msg.id_," ⌯︙"..TELAND1_Msg)
DeleteMessage(result.chat_id_, {[0] = data.message_id_}) 
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
local list = database:smembers(bot_id.."User_Bot") 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',v)  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Chek:Groups',v)  
end 
end,nil)
end
end
end