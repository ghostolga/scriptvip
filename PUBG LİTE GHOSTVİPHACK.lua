function SearchWrite(Search, Write, Type)    gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("", false)            return false        end    else        gg.toast("")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
on = " :❌*ᵏᵃᵖᵃᵗ"
off = ":✅*ᵃᶜ̧"

Date = '20220114'
date = os.date('%Y%m%d')
if date >= Date then
gg.alert("VİP süreniz dolmuştur.","Tamam")
gg.copyText("https://t.me/ghostofficiall")
os.exit()
end

gg.setVisible(false)
bitset = gg.getTargetInfo()["x64"]
if bitset == false then
	time = "✔️ Oyun 32bit olarak, tespit edildi. ✔️\n \n↪️ Sorunsuzca, devam edebilirsiniz..."
end
if bitset == true then
	time = "✖️ Oyun 64bit olarak, tespit edildi! ✖️\n \n✅ Lütfen oyunu 32bit yapın..."
end
bit = "⚠️ BİT KONTROL UYARISI ⚠️\n\n" .. time
gg.alert(bit, "↪️ Devam Et ")

gg.setVisible(false)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...10%\n█▒▒▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...20%\n██▒▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...30%\n███▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...40%\n████▒▒▒▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...50%\n█████▒▒▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...60%\n██████▒▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...70%\n███████▒▒▒")
gg.sleep(100)
gg.toast("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...80%\n████████▒▒")
gg.sleep(100)
gg.toast ("Yᴜ̈ᴋʟᴇɴɪʏᴏʀ...90%\n█████████▒")
gg.sleep(100)
gg.toast("Başarılı…100%\n🔥🔥🔥🔥🔥🔥🍇")
gg.sleep(100)

gg.alert("‼️Sevgili kullanıcılar, - 1.0 Sürümünde yaşanan flash speed & crash sorunları güncelleme ile 1 gün içinde düzeltilecektir.‼️ \n\n⚠️ Geçici olarak flash menüsü devre dışı bırakılmıştır! \n\n✓ Keyifli oyunlar, tüm kullanıcılara güncelleme sonrası 48 saat ekleyeceğiz.")

gg.alert("SCRİPT İNFO :- V1.0 32BİT LİTE FULL ANTİBAN SAFE ✅")

pars = off

gg.setVisible(true)
home = 1
function home()
GHT = gg.choice({
"╭═══════════════╮\n |          ᴀɴᴛɪ̇ʙᴀɴ🛡️ˡⁱᵗᵉ           |\n╰═══════════════╯",
"╭═══════════════╮\n |          ɪ̇sᴛᴇᴍᴄɪ̇ ғɪ̇x ⛔         |\n╰═══════════════╯",
"╭═══════════════╮\n |          sɪ̇ʟᴀʜ ᴍᴇɴᴜ̈ 🔫        |\n╰═══════════════╯",
"╭═══════════════╮\n |          ᴏʏᴜɴ ᴍᴇɴᴜ̈ 🎮         |\n╰═══════════════╯",
"╭═══════════════╮\n |          sᴋɪ̇ɴ ᴍᴇɴᴜ̈  ⭐         |\n╰═══════════════╯",
"╭═══════════════╮\n |          ғʟᴀsʜ ᴍᴇɴᴜ̈*ⁿᵘˡˡ🏇  |\n╰═══════════════╯",
"╭═══════════════╮\n |          ᴘᴀʀᴀşᴜ̈ᴛ sᴇx ⏬      |\n╰═══════════════╯"..pars,
"╭═══════════════╮\n |          ᴀʀᴀʙᴀ ᴜᴄ̧ᴜʀ 🚘       |\n╰═══════════════╯",
"╭═══════════════╮\n |          ᴄɪᴋɪş ʏᴀᴘ 🚪            |\n╰═══════════════╯"
},2000,"😍 ʟɪ̇ᴛᴇ sᴄʀɪ̇ᴘᴛ ʙʏ ɢʜᴏsᴛᴏғғɪᴄɪᴀʟʟ x ᴅᴇᴜs_ᴛᴛ\n✩｡:*•.───────❁ ❁───────.•*:｡✩\n⭐ ɪ̇ʟᴋ ᴏ̈ɴᴄᴇ ᴀşᴀɢ̆ɪᴅᴀɴ ᴀɴᴛɪ̇ʙᴀɴ ᴀᴄ̧ɪɴɪᴢ. ⤵️")
if GHT == nil then
else
if GHT == 1 then 
bypas()
end 
if GHT == 2 then
fixer()
end
if GHT == 3 then
gunhck()
end
if GHT == 4 then
game()
end
if GHT == 5 then
skin()
end
if GHT == 6 then
flash()
end
if GHT == 7 then
fast()
end
if GHT == 8 then
car()
end
if GHT == 9 then
exit()
end
end
SS=-1
end

function bypas()
gg.alert("💎 OKUYUN 💎 \n🛡️Antiban V1'i açın.\n🛡️Cihazınızla çalışmıyorsa V2'yi açabilirsiniz.")
antiban1 = gg.choice({
"⭐ ʟɪ̇ᴛᴇ ʙʏᴘᴀss & ᴀɴᴛɪʙᴀɴ v1*ʸᵉⁿⁱ\n ╰➣ʟᴏʙʙʏ",
"♥️ ʟɪ̇ᴛᴇ ʙʏᴘᴀss & ᴀɴᴛɪʙᴀɴ v2*ʸᵉⁿⁱ\n ╰➣ʟᴏʙʙʏ",
"🚯 ᴘʀᴇᴍɪᴜᴍ ʟᴏɢ & ʀᴇᴘᴏʀᴛ ʙʟᴏᴄᴋ\n ╰➣ᴀᴅᴀᴅᴀ",
"⬅️ɢᴇʀɪ̇ ɢɪ̇ᴛ"
}, nil, ("༻   ҉ 🔥ＧＨＯＳＴ ＡＮＴＩＢＡＮ 🔥   ҉ ༺\n✩｡:*•.───────★───────.•*:｡✩\nMaker: @ghostofficiall ⚕️"))
if antiban1 == nil then
else
if antiban1 == 1 then
lobibypass1()
end
if antiban1 == 2 then
lobibypass2()
end
if antiban1 == 3 then
logcleaner()
end
if antiban1 == 4 then
home()
end
end
SS=-1
end

function lobibypass1()
gg.alert("Antiban açılıyor...\n@ghostofficiall 🇹🇷💎")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("620137442967552")
gg.refineNumber("620137442967552")
gg.getResults(500)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("620137442967552")
gg.refineNumber("620137442967552")
gg.getResults(5010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;134658")
gg.refineNumber("133634")
gg.getResults(62877)
gg.editAll("133,890", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408")
gg.getResults(62877)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408")
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196864;16842753")
gg.refineNumber("196864")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131330;134658")
gg.refineNumber("134658")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;144387")
gg.refineNumber("135682")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134402;67109377")
gg.refineNumber("134402")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;134658")
gg.refineNumber("134658")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;133635")
gg.refineNumber("131842")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;135682")
gg.refineNumber("133634")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;144387")
gg.refineNumber("133378")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262403")
gg.refineNumber("262403")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144387")
gg.refineNumber("144387")
gg.getResults(50000)
gg.editAll("19,530,497", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_CODE_APP)
gg.searchNumber(";CheatDetected")
gg.getResults(50000)
gg.editAll(";", gg.TYPE_WORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("196864;16842753", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("144387;131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("134658;131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("133378;144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_CODE_APP)
gg.searchNumber(";CheatDetected")
gg.getResults(50000)
gg.editAll(";", gg.TYPE_WORD)
gg.clearResults()
gg.alert("Sn @ghostofficiall, tarafından Lite Anti-cheat Katledildi! 🇹🇷 \n❎ Offline Yok / ❎ 10DK Yok! / ❎ 10Yıl Yok!","İleri⏭️✅")
end

function lobibypass2()
gg.alert("Antiban açılıyor...\n@ghostofficiall 🇹🇷💎")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,914;144,387")
gg.refineNumber("134,914")
gg.getResults(62877)
gg.editAll("133,890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,634;133,890")
gg.refineNumber("133,634")
gg.getResults(62877)
gg.editAll("133,890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,634;134,658")
gg.refineNumber("133,634")
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408")
gg.getResults(62877)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408")
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,633,927;67,109,377")
gg.refineNumber("67,633,927;67,109,377")
gg.getResults(50000)
gg.editAll("67633927", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,109,390;67,114,093")
gg.refineNumber("67,109,390;67,114,093")
gg.getResults(50000)
gg.editAll("67633927", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842,753::5")
gg.refineNumber("196,864")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,109,377;16,384")
gg.refineNumber("16384")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,330;134,658")
gg.refineNumber("134,658")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135,682;144,387")
gg.refineNumber("135,682")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4,096;135,682")
gg.refineNumber("4,096")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,402;67,109,377")
gg.refineNumber("134,402")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,658;134,658")
gg.refineNumber("134,658")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,842;133,635")
gg.refineNumber("131,842")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,634;135,682")
gg.refineNumber("133,634")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,378;144,387")
gg.refineNumber("133,378")
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("Sn @ghostofficiall, tarafından Lite Anti-cheat Katledildi! 🇹🇷 \n❎ Offline Yok / ❎ 10DK Yok! / ❎ 10Yıl Yok!","İleri⏭️✅")
end

function logcleaner()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":Tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":Tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":TSS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":TSS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":", gg.TYPE_BYTE)
gg.sleep(100)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":/report")
gg.refineNumber(":/report")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":cheat")
gg.refineNumber(":cheat")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":Cheat")
gg.refineNumber(":Cheat")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":/tss")
gg.refineNumber(":/tss")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":/report")
gg.refineNumber(":/report")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":cheat")
gg.refineNumber(":cheat")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":Cheat")
gg.refineNumber(":Cheat")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":/tss")
gg.refineNumber(":/tss")
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
gg.toast(" \nBᴇᴋʟᴇ...10%\n🧹▒▒▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...20%\n🧹🧹▒▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...30%\n🧹🧹🧹▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...40%\n🧹🧹🧹🧹▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg.sleep(100)
gg.toast(" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg.sleep(100)
gg.toast(" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
gg.sleep(100)
gg.toast("Temizlik başarı, ile tamamlandı. ✅")
end

function fixer()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("524304", gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("29793", gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("41097", gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("34842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("459861", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("925013", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("19970", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("786544", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("🔰 İstemci yasağı ortadan kaldırıldı. Lobby'de açtığınızdan emin olun.\n\n📝 Her maç sonunda lobby'de tekrar tekrar aktif ediniz.","Tamam✔️")
end

sta = off
function gunhck()
SLH = gg.multiChoice({
"⟅😈⟆ Magic Bullet + AWM Etkisi! \n╰➣ᴏʏᴜɴ",
"⟅🔥⟆ Sekmeme %100ʸᵉⁿⁱ\n╰➣ᴏʏᴜɴ",
"⟅➕⟆ Namlu Sabitlemeʸᵉⁿⁱ\n╰➣ᴏʏᴜɴ",
"⟅🎯⟆ Aimbot 360°ʸᵉⁿⁱ\n╰➣ʟᴏʙɪ̇ + ᴏʏᴜɴ",
"⟅🚹⟆ İleri Uzanan Kol\n╰➣ᴏʏᴜɴ" .. sta,
"⟅⭕⟆ ESP Çemberi Lite! \n╰➣ᴏʏᴜɴ",
"⟅🤕⟆ Yüksek hasar %100 \n╰➣ᴏʏᴜɴ",
"⟅❌⟆ X Hasar Efekti X ##\n╰➣ᴏʏᴜɴ",
"⟅🔙⟆ ɢᴇʀɪ̇ ɢɪ̇ᴛ"
}, nil, ("Ｇｈｏｓｔ  ｏｆｆｉｃｉａｌｌ\n✩｡:*•.─────  ★  ─────.•*:｡✩"))
if SLH == nil then
else
if SLH [1] == true then
magic()
end
if SLH [2] == true then
norc()
end
if SLH [3] == true then
small()
end
if SLH [4] == true then
aimbot()
end
if SLH [5] == true then
stamenu()
end
if SLH [6] == true then
esp()
end
if SLH [7] == true then
hasar()
end
if SLH [8] == true then
xefekt()
end
if SLH [9] == true then
home()
end
end
SS=-1
end

function xefekt()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10.0;46.0;45.0;45.0;10.0;46.0;135.0;135.0;10.0;46.0;225.0;225.0;10.0;46.0::185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("5000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("❌ X ʜᴀsᴀʀ ᴇғᴇᴋᴛɪ̇, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! ")
end

function hasar()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25.0;30.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Yᴜ̈ᴋsᴇᴋ ʜᴀsᴀʀ ℅100, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! ‼️")
end

function esp()
so=gg.getRangesList('libUE4.so')[1].start
py=0XBD1798
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0XBD179C
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0XBCFD28
setvalue(so+py,4,-476053503)
gg.toast("ESP ʟɪ̇ᴛᴇ, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! ⭕")
end

function norc()
so=gg.getRangesList('libUE4.so')[1].start
py=0xDA9058
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x26AEF3C
setvalue(so+py,16,0)
gg.toast("℅100 Sᴇᴋᴍᴇᴍᴇ, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! ⭐")
end

function small()
so=gg.getRangesList('libUE4.so')[1].start 
py=0xDA9618 
setvalue(so+py,16,0) 
gg.toast("Nɪ̇şᴀɴɢᴀʜ ᴋᴜ̈ᴄ̧ᴜ̈ʟᴛᴍᴇ, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! ➕")
end

function aimbot()
so=gg.getRangesList('libUE4.so')[1].start
py=0x194442C
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B2E2A8
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0xDA6A38
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1944420
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0xDBE230
setvalue(so+py,4,-509587454)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1944560
setvalue(so+py,16,999.0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x247750C
setvalue(so+py,16,999.0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x193C31C
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0XBD265C
setvalue(so+py,16,1.66153519e35)
so=gg.getRangesList('libUE4.so')[1].start
py=0XBD33A0
setvalue(so+py,16,-3.69369514e20)
so=gg.getRangesList('libUE4.so')[1].start
py=0X451E9C8
setvalue(so+py,16,-9.98399062e27)
so=gg.getRangesList('libUE4.so')[1].start
py=0X2E5220
setvalue(so+py,16,-2.7395468e28)
so=gg.getRangesList('libUE4.so')[1].start
py=0X11874
setvalue(so+py,16,-1.28117249e23)
gg.toast("Aɪ̇ᴍʙᴏᴛ 360, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! 🎯") 
end


function magic()
so=gg.getRangesList('libUE4.so')[1].start 
py=0x194442C 
setvalue(so+py,16,0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0x3B2E2A8 
setvalue(so+py,16,0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0xDA6A38 setvalue(so+py,16,0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0x1944420 setvalue(so+py,16,0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0xDBE230 
setvalue(so+py,4,-509587454) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0x1944560 
setvalue(so+py,16,999.0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0x247750C 
setvalue(so+py,16,999.0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0x193C31C 
setvalue(so+py,16,0) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0XBD265C 
setvalue(so+py,16,1.66153519e35) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0XBD33A0 
setvalue(so+py,16,-3.69369514e20) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0X451E9C8 
setvalue(so+py,16,-9.98399062e27) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0X2E5220 
setvalue(so+py,16,-2.7395468e28) 
so=gg.getRangesList('libUE4.so')[1].start 
py=0X11874 
setvalue(so+py,16,-1.28117249e23) 
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("952;600", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.17", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("225", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-225", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("105", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😈 Magic Bullet + AWM Etkisi ! 😈")
end

function stamenu()
if sta == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4848124999984742400", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("İʟᴇʀɪ̇ ᴜᴢᴀʏᴀɴ ᴋᴏʟ, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! 🛐")
sta = on
else
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4138667321167981973", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("❎ İʟᴇʀɪ̇ ᴜᴢᴀʏᴀɴ ᴋᴏʟ, ᴋᴀᴘᴀᴛɪʟᴅɪ!")
sta = off
end
end

function game()
GM = gg.multiChoice({
"᚛📡᚜ Anten\n╰➣ʟᴏʙɪ+ᴏʏᴜɴ]",
"᚛👤᚜ iPad Modu\n╰➣ᴏʏᴜɴ",
"᚛☀️᚜ BŞN iPad Moduʸᵉⁿⁱ\n╰➣ᴏʏᴜɴ",
"᚛🌫᚜ Sis Kaldırmaʸᵉⁿⁱ\n╰➣ᴏʏᴜɴ",
"᚛🍂᚜ Çimen Kaldırma\n╰➣ᴏʏᴜɴ",
"᚛🌳᚜ Çimen + Agac Kaldırma\n╰➣ᴏʏᴜɴ",
"᚛🌃᚜ Siyah Gökyüzü\n╰➣ᴏʏᴜɴ",
"᚛🧎🏿‍♂️᚜ sɪʏᴀʜ ᴀᴅᴀᴍ\n╰➣ᴏʏᴜɴ",
"᚛🔙᚜ Geri"
}, nil, ("Ｇｈｏｓｔ  ｏｆｆｉｃｉａｌｌ\n✩｡:*•.─────  ★  ─────.•*:｡✩"))
if GM == nil then
else
if GM [1] == true then
anten()
end
if GM [2] == true then
bsnipad()
end
if GM [3] == true then
bsnipad()
end
if GM [4] == true then
sis()
end
if GM [5] == true then
cim()
end
if GM [6] == true then
agac()
end
if GM [7] == true then
blacksky()
end
if GM [8] == true then
longp()
end
if GM [9] == true then
home()
end
end
SS=-1
end
function sis()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("-298,841,535;-409,731,072;-443,744,204;-486,469,976::13", gg.TYPE_DWORD)
gg.refineNumber("-298,841,535", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🌫️Sis Kaldırıldı")
end

function agac()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("-298,841,535;-409,731,072;-443,744,204;-486,469,976::13", gg.TYPE_DWORD)
gg.refineNumber("-298,841,535", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🍂Cimler Kaldırıldı")
end

function cim()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("-298,841,535;-409,731,072;-443,744,204;-486,469,976::13", gg.TYPE_DWORD)
gg.refineNumber("-298,841,535", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🍂Cimler Kaldırıldı")
end

function blacksky()
so=gg.getRangesList('libUE4.so')[1].start
py=0x28F1E50
setvalue(so+py,4,-1222130000)
gg.toast("Sɪ̇ʏᴀʜ ɢᴏ̈ᴋ, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! 🌑") 
end

function anten()
function readWrite(Search,Get,Type,Range,Name) gg["clearResults"]() gg["setRanges"](Range) gg["setVisible"](false) if Search[1][1]~=false then _G["gg"]["searchAddress"](Search[1][1],0xFFFFFFFF,Search[1][4] or Type,_G["gg"]["SIGN_EQUAL"],Search[1][5] or 1,Search[1][6] or -1) end gg["searchNumber"](Search[1][2],Search[1][4] or Type,false,_G["gg"]["SIGN_EQUAL"],Search[1][5] or 1,Search[1][6] or -1) local count=gg["getResultCount"]() local result=gg["getResults"](count) gg["clearResults"]() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg["getValues"](tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg["addListItems"](item) end end end end tg=(tg_) and "\n modify"..tg_.."data" or "" th=(th_) and "" or "" gg["setValues"](t) t_=gg["getValues"](t_) gg["loadResults"](t_) gg["toast"]("\n"..Name..tg) tg_,th_=nil,nil else gg["toast"]("Not searchable",false) return false end else gg["toast"]("Not searchable") return false end end
readWrite({{false,-100.91194152832,0,16,nil,nil},{87.27782440186,-4,16},{88.50576019287,-8,16},{1.4012985e-45,16,16}},{{1.96875,-8,16,false},{1.96875,-4,16,false},{999999,4,16,false},{2,8,16,false}},16,32,"done")
gg.toast ("Aɴᴛᴇɴ, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! ")
end

function bsnipad()
so=gg.getRangesList('libUE4.so')[1].start
py=0x26B1E20
setvalue(so+py,16,280) 
gg.toast("İ ᴘᴀᴅɪ̇, ᴀᴋᴛɪ̇ғ ᴇᴅɪ̇ʟᴅɪ̇! 🎥") 
end

function skin()
gg.alert("Cilt fonksiyonları, lite için uyumlu hale getirilecek...")
end

function flash()
gg.alert("Bakım devam ediyor...")
end

function fast()
if pars == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,477,699,789", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("💎 Hızlı Paraşü Etkin! 💎") 
pars = on
else
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,414,147,695", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("❌ Hızlı Paraşüt Devredışı ❌ ") 
pars = off
end
end

function car()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20000", gg.TYPE_FLOAT)
gg.processResume()
gg.sleep(500)
if revert ~= nil then
gg.setValues(revert)
gg.clearResults()
end
gg.toast("⤴️ Tüm araçlar uçuyor ⤴️")
end

function exit()
gg.setVisible(false)
return os.exit()
end
while true do
if gg.isVisible(true) then
SS = 1
gg.setVisible(false)
end
gg.clearResults()
if SS == 1 then
home()
end
end