
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function read_file(path) local file = io.open(path, "rb") if not file then return nil end local content = file:read("*a") file:close() return content end
on = '「✅」'
off = '「❎」'

Xa1 = off
HOME = 1
function HOME()
MN = gg.choice({
"🛡️ ☉︎ Antiban Flash ",
"🪄 ☉︎ Güçlü Menü",
"🏇 ☉︎ Flash %0 Lag",
"⭐ ☉︎ Skin Paketi $",
"🔥 ☉︎ iPad'i Görüşü",
"Çıkış Yap🚪",
}, 2000, ("😈 Ｇｈｏｓｔ  ｏｆｆｉｃｉａｌｌ 👿\n✩｡:*•.─────  ★  ─────.•*:｡✩\n🗡️ Telegram : @ghostviphack 乡"))
if MN == nil then else
if MN == 1 then bypas() end
if MN == 2 then magic() end
if MN == 3 then flash() end
if MN == 4 then skin() end
if MN == 5 then wiew() end
if MN == 6 then EXIT() end
end
PUBGMH = -1
end

function bypas()
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("620137442967552;564058054983680", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620137442967552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("620,137,442,967,552;564,058,054,983,680", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(500000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.sleep(10000)
gg.setRanges(gg.REGION_BAD)
gg.processResume()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("111,957")
gg.refineNumber("111,957")
gg.getResults(80000)
gg.editAll("67,240,961", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("111,954")
gg.refineNumber("111,954")
gg.getResults(80000)
gg.editAll("67,240,961", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65,537;196,609")
gg.getResults(80000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("67,108,866")
gg.getResults(80000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("133634;133890", gg.TYPE_DWORD, nil, nil, nil, nil)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("133634;133890", gg.TYPE_DWORD, nil, nil, nil, nil)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("118,163,466")
gg.getResults(80000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,701,147,238")
gg.getResults(80000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("Bypass açıldı!")
end

sta = off
function magic()
SLH = gg.multiChoice({
"Magic Bullet v1",
"Magic Bullet v2",
"Magic Bullet v3",
"Sekmeme %100",
"Namlu Sabitle",
"X Hasar Efekti",
"Uzayan Kol" .. sta,
"⟅🔙⟆ Geri"
}, nil, ("Ｇｈｏｓｔ  ｏｆｆｉｃｉａｌｌ\n✩｡:*•.─────  ★  ─────.•*:｡✩"))
if SLH == nil then
else
if SLH [1] == true then
magichax()
end
if SLH [2] == true then
headhax()
end
if SLH [3] == true then
ultrahead()
end
if SLH [4] == true then
norecoil()
end
if SLH [5] == true then
smallcrosshair()
end
if SLH [6] == true then
xefekt()
end
if SLH [7] == true then
stamenu()
end
if SLH [8] == true then
HOME()
end
end
PUBGMH =-1
end

function magichax()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT)
gg.searchNumber("26", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT)
gg.searchNumber("28", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("-660", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD)
gg.searchNumber("-298284466", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
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
gg.toast("Magic Bullet")
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
gg.toast("🚹 İleri Uzanan Kol Aktif Edildi!")
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
gg.toast("❎ İleri Uzanan Kol Deaktif Edildi!")
sta = off
end
end

function ultrahead()
gg.setRanges(131072)
gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
gg.searchNumber("26", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("-460", 16)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
gg.searchNumber("28", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("-560", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.201618;30.5;25", 16, false, 536870912, 0, -1)
gg.searchNumber("30.5;25", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("160", 16)
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("2048D;1F", 16, false, 536870912, 0, -1)
gg.searchNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0.07", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("140", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
gg.getResults(500)
gg.editAll("-125", 16)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("500", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("1.10000000149", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("151.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("69.5;35;33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("160;140;230", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("1224995", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Magic Bullet")
end

function headhax()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
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
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("280", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("700", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("23;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("699", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;23;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("180", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("450", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.editAll("1.10000000149", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16000~99999;3D;0.1;1D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Magic Bullet")
end

function smallcrosshair()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1DF2868 
setvalue(so+py,16,0.0)
gg.toast(" ➕ Namlu Ucu Sabitlendi ➕")
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
gg.toast("X Hasar Efekti!")
end

function norecoil()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.786982e28;-2.2673448e24;-1.13688735e-13", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.786982e28", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Sekmeme %100")
end

function flash()
FLH = gg.multiChoice({
"♾️ Flash No Lag "..Xa1,
"🔰 SitFly VIP",
"Ana Menü ⏪"
}, nil, ("🌍 PUBG MOBILE 1.8.0 VIP\n✩｡:*•.─────  ★  ─────.•*:｡✩\n𝐌𝐚𝐤𝐞𝐫 𝐛𝐲 @𝐠𝐡𝐨𝐬𝐭𝐨𝐟𝐟𝐢𝐜𝐢𝐚𝐥𝐥 🇹🇷"))
if FLH == nil then
else
if FLH [1] == true then
SPEED()
end
if FLH [2] == true then
STUK()
end
if FLH [3] == true then
HOME()
end
end
PUBGMH =-1
end

function SPEED()
if Xa1 == off then 
gg.clearResults() 
gg.setVisible(false)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;-1.86389771e-20;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.86389771e-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
XXR31=gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
XXR32=gg.getResults(1401)
gg.editAll("1,873,498,234,778,812,416", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
XXR33=gg.getResults(1401)
gg.editAll("403,635,275,035,574,272", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
XXR34=gg.getResults(1401)
gg.editAll("-2,044,616,634,647,180,800", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
XXR35=gg.getResults(1401)
gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
Xa1 = on
gg.toast("💎 Flash, MediaTek G90T")
else
gg.clearResults()
gg.setValues(XXR31)
gg.setValues(XXR32)
gg.setValues(XXR33)
gg.setValues(XXR34)
gg.setValues(XXR35)
gg.clearResults()
gg.toast("Flash, Kapatıldı ❎") 
Xa1 = off
end
end

function STUK()
gg.clearResults() 
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400;0.10000000149;1000;88;60;30", 16)
gg.refineNumber("60", 16)
gg.getResults(100)
gg.editAll("-63", 16)
gg.clearResults()
gg.toast("🔰 SitFly, Aktif edildi!")
end

function skin()
NO = gg.alert("📛 Toplu skin paketi VIP\n\n ⚜️ AÇILACAK OLAN HİLELER ⚜️\n🔰 Beyaz mumya seti\n🔰 Cehennem sürücüsü kaskı\n🔰 Kanatlı melek sırt çantası\n\n❓ Açmak istiyor musunuz ❓",
"Onayla ✅ ",
"İptal Et ✖️")
if NO == nil then
else
if NO == 1 then
skin3()
end
if NO == 2 then
HOME()
end
end
PUBGMH=-1
end

function skin3()
qmnb = {{["memory"] = 32},{["name"] = "Mumya Seti"},{["value"] = 1400129,["type"] = 4},{["lv"] = 519,["offset"] = 4,["type"] = 4}}
qmxg = {{["value"] = 1400687,["offset"] = -0,["type"] = 4}}
xqmnb(qmnb)
gg.clearResults()
gg.toast("Beyaz mumya seti ♥️") 
-----------------------------------------------------
qmnb = {{["memory"] = 32},{["name"] = "Inferno Rider Helmet"},{["value"] = 502001,["type"] = 4},{["lv"] = 502,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1502001014,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "Inferno Rider Helmet"},{["value"] = 502002,["type"] = 4},{["lv"] = 502,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1502002014,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "Inferno Rider Helmet"},{["value"] = 502003,["type"] = 4},{["lv"] = 502,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1502003014,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "Inferno Rider Helmet"},{["value"] = 502004,["type"] = 4},{["lv"] = 502,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1502003014,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "Inferno Rider Helmet"},{["value"] = 502005,["type"] = 4},{["lv"] = 502,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1502003014,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
gg.clearResults()
xqmnb(qmnb)
gg.clearResults()
gg.toast("Hayalet sürücüsü kaskı 🔰")
-----------------------------------------------------
qmnb = {{["memory"] = 32},{["name"] = "U-Search 135002"},{["value"] = 501001,["type"] = 4},{["lv"] = 501,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1501003081,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "U-Search 135002"},{["value"] = 501002,["type"] = 4},{["lv"] = 501,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1501003081,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "U-Search 135002"},{["value"] = 501003,["type"] = 4},{["lv"] = 501,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1501003081,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "U-Search 135002"},{["value"] = 501004,["type"] = 4},{["lv"] = 501,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1501003081,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "U-Search 135002"},{["value"] = 501005,["type"] = 4},{["lv"] = 501,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1501003081,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "U-Search 135002"},{["value"] = 501006,["type"] = 4},{["lv"] = 501,["offset"] = -4,["type"] = 4}}
qmxg = {{["value"] = 1501003081,["offset"] = 0,["type"] = 4}}
xqmnb(qmnb)
gg["setVisible"](false)
gg.clearResults()
gg.toast("Kanatlı melek sırt çantası 👼")
-----------------------------------------------------
gg["searchNumber"]("10100100", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("10100100", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("1101001089", gg["TYPE_DWORD"])
-----------------------------------------------------
gg["searchNumber"]("10100400 ", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("10100400 ", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("1101004046", gg["TYPE_DWORD"])
gg.alert("Başarılı... 🔥")
end

function wiew()
input = gg.prompt({ "Görünüm Hilesini Seçin : [200; 360]"},
{250},
{"number"})
if input == nil then HOME()
else
gg.setVisible(false) 
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C24C14
setvalue(so+py,16,input[1])
gg.clearResults()
end
end

function EXIT()
print("🔥🇹🇷 @ghostofficiall")
gg.skipRestoreState()
os.exit()
end
while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
gg.clearResults()
if PUBGMH == 1 then
HOME()
end
end
