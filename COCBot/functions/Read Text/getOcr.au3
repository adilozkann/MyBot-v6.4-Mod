; #FUNCTION# ====================================================================================================================
; Name ..........: OCR
; Description ...: Gets complete value of gold/Elixir/DarkElixir/Trophy/Gem xxx,xxx
; Author ........: Didipe (2015)
; Modified ......: ProMac (2015), Hervidero (2015-12), MMHK (2016-12)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================


Func getNameBuilding($x_start, $y_start); getNameBuilding(242,520) -> Gets complete name and level of the buildings, bottom of screen
	Return getOcrAndCapture("coc-build", $x_start, $y_start, 377, 27)
EndFunc   ;==>getNameBuilding

Func getGoldVillageSearch($x_start, $y_start);48, 69 -> Gets complete value of gold xxx,xxx while searching, top left, Getresources.au3
	Return getOcrAndCapture("coc-v-g", $x_start, $y_start, 90, 16, True)
EndFunc   ;==>getGoldVillageSearch

Func getRemainTrainTimer($x_start, $y_start);
	Return getOcrAndCapture("coc-RemainTrain", $x_start, $y_start, 70, 12, True)
EndFunc   ;==>getRemainTrainTimer

Func getElixirVillageSearch($x_start, $y_start) ;48, 69+29 -> Gets complete value of Elixir xxx,xxx, top left,  Getresources.au3
	Return getOcrAndCapture("coc-v-e", $x_start, $y_start, 90, 16, True)
EndFunc   ;==>getElixirVillageSearch

Func getDarkElixirVillageSearch($x_start, $y_start) ;48, 69+57 or 69+69  -> Gets complete value of Dark Elixir xxx,xxx, top left,  Getresources.au3
	Return getOcrAndCapture("coc-v-de", $x_start, $y_start, 75, 18, True)
EndFunc   ;==>getDarkElixirVillageSearch

Func getTrophyVillageSearch($x_start, $y_start) ;48, 69+99 or 69+69 -> Gets complete value of Trophies xxx,xxx , top left, Getresources.au3
	Return getOcrAndCapture("coc-v-t", $x_start, $y_start, 75, 18, True)
EndFunc   ;==>getTrophyVillageSearch

Func getTrophyMainScreen($x_start, $y_start) ; -> Gets trophy value, top left of main screen "VillageReport.au3"
	Return getOcrAndCapture("coc-ms", $x_start, $y_start, 50, 16, True)
EndFunc   ;==>getTrophyMainScreen

Func getTrophyLossAttackScreen($x_start, $y_start) ; 48,214 or 48,184 WO/DE -> Gets red number of trophy loss from attack screen, top left
	Return getOcrAndCapture("coc-t-p", $x_start, $y_start, 50, 16, True)
EndFunc   ;==>getTrophyLossAttackScreen

Func getUpgradeResource($x_start, $y_start) ; -> Gets complete value of Gold/Elixir xxx,xxx , RED text on green upgrade button."UpgradeBuildings.au3"
	Return getOcrAndCapture("coc-u-r", $x_start, $y_start, 98, 16, True)
EndFunc   ;==>getUpgradeResource

Func getResourcesMainScreen($x_start, $y_start) ; -> Gets complete value of Gold/Elixir/Dark Elixir/Trophies/Gems xxx,xxx "VillageReport.au3"
	Return getOcrAndCapture("coc-ms", $x_start, $y_start, 110, 16, True)
EndFunc   ;==>getResourcesMainScreen

Func getResourcesLoot($x_start, $y_start) ; -> Gets complete value of Gold/Elixir after attack xxx,xxx "AttackReport"
	Return getOcrAndCapture("coc-loot", $x_start, $y_start, 107, 22, True)
EndFunc   ;==>getResourcesLoot

Func getResourcesLootDE($x_start, $y_start) ; -> Gets complete value of Dark Elixir after attack xxx,xxx "AttackReport"
	Return getOcrAndCapture("coc-loot", $x_start, $y_start, 75, 22, True)
EndFunc   ;==>getResourcesLootDE

Func getResourcesLootT($x_start, $y_start) ; -> Gets complete value of Trophies after attack. xxx,xxx "AttackReport"
	Return getOcrAndCapture("coc-loot", $x_start, $y_start, 37, 22, True)
EndFunc   ;==>getResourcesLootT

Func getResourcesBonus($x_start, $y_start) ; -> Gets complete value of Gold/Elixir bonus loot in "AttackReport.au3"
	Return getOcrAndCapture("coc-bonus", $x_start, $y_start, 98, 16, True)
EndFunc   ;==>getResourcesBonus

Func getResourcesBonusPerc($x_start, $y_start) ; -> Gets complete value of Bonus % in "AttackReport.au3"
	Return getOcrAndCapture("coc-bonus", $x_start, $y_start, 48, 16, True)
EndFunc   ;==>getResourcesBonusPerc

Func getLabUpgrdResourceWht($x_start, $y_start) ; -> Gets complete value of Elixir/DE on the troop buttons, xxx,xxx for "laboratory.au3" when white text
	Return getOcrAndCapture("coc-lab-w", $x_start, $y_start, 60, 14, True)
EndFunc   ;==>getLabUpgrdResourceWht

Func getLabUpgrdResourceRed($x_start, $y_start) ; -> Gets complete value of Elixir/DE on the troop buttons,  xxx,xxx for "laboratory.au3" when red text
	Return getOcrAndCapture("coc-lab-r", $x_start, $y_start, 60, 14, True)
EndFunc   ;==>getLabUpgrdResourceRed

Func getBldgUpgradeTime($x_start, $y_start) ; -> Gets complete remain building upgrade time
	Return getOcrAndCapture("coc-uptime", $x_start, $y_start, 42, 18) ; 42 is enougth xxx : 2 numbers and one letter at max
EndFunc   ;==>getBldgUpgradeTime

Func getLabUpgradeTime($x_start, $y_start) ; -> Gets complete remain lab upgrade time V2 for Dec2015 update
	Return getOcrAndCapture("coc-uptime2", $x_start, $y_start, 40, 20) ; 40 is enougth xxx : 2 numbers and one letter at max
EndFunc   ;==>getLabUpgradeTime

Func getHeroUpgradeTime($x_start, $y_start) ; -> Gets complete upgrade time for heroes 464, 527 + $midOffsetY
	Return getOcrAndCapture("coc-uptime2", $x_start, $y_start, 68, 20) ; 68 is required to days & hours for young hero
EndFunc   ;==>getHeroUpgradeTime

Func getChatString($x_start, $y_start, $language) ; -> Get string chat request - Latin Alphabetic - EN "DonateCC.au3"
	Return getOcrAndCapture($language, $x_start, $y_start, 280, 16)
EndFunc   ;==>getChatString

Func getBuilders($x_start, $y_start);  -> Gets Builders number - main screen --> getBuilders(324,23)  coc-profile
	Return getOcrAndCapture("coc-Builders", $x_start, $y_start, 40, 18, True)
EndFunc   ;==>getBuilders

Func getProfile($x_start, $y_start);  -> Gets Attack Win/Defense Win/Donated/Received values - profile screen --> getProfile(160,268)  troops donation
	Return getOcrAndCapture("coc-profile", $x_start, $y_start, 46, 11, True)
EndFunc   ;==>getProfile

Func getTroopCountSmall($x_start, $y_start);  -> Gets troop amount on Attack Screen for non-selected troop kind
	Return getOcrAndCapture("coc-t-s", $x_start, $y_start, 53, 15, True)
EndFunc   ;==>getTroopCountSmall

Func getTroopCountBig($x_start, $y_start);  -> Gets troop amount on Attack Screen for selected troop kind
	Return getOcrAndCapture("coc-t-b", $x_start, $y_start, 53, 16, True)
EndFunc   ;==>getTroopCountBig

Func getArmyTroopQuantity($x_start, $y_start);  -> Gets troop amount on army camp or new windows
	Return getOcrAndCapture("coc-train-quant", $x_start, $y_start, 45, 12, True)
EndFunc   ;==>getArmyTroopQuantity

Func getArmyTroopKind($x_start, $y_start);  -> Gets kind of troop on army camp or new windows
	Return getOcrAndCapture("coc-train-t-kind", $x_start, $y_start, 59, 11, True)
EndFunc   ;==>getArmyTroopKind

Func getArmyCampCap($x_start, $y_start);  -> Gets army camp capacity --> train.au3, and used to read CC request time remaining
	Return getOcrAndCapture("coc-ms", $x_start, $y_start, 82, 16, True)
EndFunc   ;==>getArmyCampCap

Func getCastleDonateCap($x_start, $y_start);  -> Gets clan castle capacity,  --> donatecc.au3
	Return getOcrAndCapture("coc-army", $x_start, $y_start, 30, 14, True)
EndFunc   ;==>getCastleDonateCap

Func getBarracksTroopQuantity($x_start, $y_start);  -> Gets quantity of troops in training --> train.au3
	Return getOcrAndCapture("coc-train", $x_start, $y_start, 52, 16, True)
EndFunc   ;==>getBarracksTroopQuantity

Func getAttackDisable($x_start, $y_start);  -> 346, 182 - Gets red text disabled for early warning of Personal Break
	Return getOcrAndCapture("coc-dis", $x_start, $y_start, 118, 24, True)
EndFunc   ;==>getAttackDisable

Func getOcrLanguage($x_start, $y_start);  -> Get english language - main screen - "Builder" text at top--> getLanguage(324,6)
	Return getOcrAndCapture("coc-ms-testl", $x_start, $y_start, 43, 11, True)
EndFunc   ;==>getOcrLanguage

Func getOcrSpellDetection($x_start, $y_start);  -> Recognition of the Spells in Armyoverview window
	;remove text after § (if dll return heal§2 we return heal, if dll return heal§3 we return heal, if dll return heal we return heal)
	Local $result = getOcrAndCapture("coc-t-spells2", $x_start, $y_start, 50, 30, True)
	Local $PositionSpecialCaracter = 0 ; search position of § into result, if no found return 0
	$PositionSpecialCaracter = StringInStr($result, "§")
	If $PositionSpecialCaracter > 0 Then
		Return StringLeft($result, $PositionSpecialCaracter - 1)
	Else
		Return $result
	EndIf
EndFunc   ;==>getOcrSpellDetection

Func getOcrSpellQuantity($x_start, $y_start);  -> Get the Spells quantity in Armyoverview window
	Return getOcrAndCapture("coc-t-t", $x_start, $y_start, 25, 12, True)
EndFunc   ;==>getOcrSpellQuantity

Func getOcrClanLevel($x_start, $y_start);  -> Get the clan level from clan info page
	Return getOcrAndCapture("coc-clanlevel", $x_start, $y_start, 20, 19, True)
EndFunc   ;==>getOcrClanLevel

Func getOcrSpaceCastleDonate($x_start, $y_start);  -> Get the number of troops donated/capacity from a request
	Return getOcrAndCapture("coc-totalreq", $x_start, $y_start, 45, 12, True)
EndFunc   ;==>getOcrSpaceCastleDonate

Func getOcrDonationTroopsDetection($x_start, $y_start);  -> Get the type of troop from the donate window
	Local $result = getOcrAndCapture("coc-donationtroop", $x_start, $y_start, 45, 30, True)
	Local $PositionSpecialCaracter = 0 ; search position of § into result, if no found return 0
	$PositionSpecialCaracter = StringInStr($result, "§")
	If $PositionSpecialCaracter > 0 Then
		Return StringLeft($result, $PositionSpecialCaracter - 1)
	Else
		Return $result
	EndIf
EndFunc   ;==>getOcrDonationTroopsDetection

Func getOcrOverAllDamage($x_start, $y_start);  -> Get the Overall Damage %
	Return getOcrAndCapture("coc-overalldamage", $x_start, $y_start, 50, 20, True)
EndFunc   ;==>getOcrOverAllDamage

Func getOcrGuardShield($x_start, $y_start);  -> Get the guard/shield time left, middle top of the screen
	Return getOcrAndCapture("coc-guardshield", $x_start, $y_start, 68, 15)
EndFunc   ;==>getOcrGuardShield

Func getOcrPBTtime($x_start, $y_start);  -> Get the Time until PBT starts from PBT info window
	Return getOcrAndCapture("coc-pbttime", $x_start, $y_start, 59, 15)
EndFunc   ;==>getOcrPBTtime

Func getOcrMaintenanceTime($x_start, $y_start, $sLogText = Default, $LogTextColor = Default, $bSilentSetLog = Default)
	;  -> Get the Text with time till maintenance is over from reload msg(171, 375)
	Local $result = getOcrAndCapture("coc-reloadmsg", $x_start, $y_start, 116, 19, True)
	If $sLogText = Default Then
		$String = "getOcrMaintenanceTime: " & $result
	Else
		$String = $sLogText & " " & $result
	EndIf
	If $debugSetlog = 1 Then ; if enabled generate debug log message
		SetDebugLog($String, $LogTextColor, $bSilentSetLog)
	ElseIf $result <> "" Then ;
		SetDebugLog($String, $LogTextColor, True) ; if result found, add to log file
	EndIF
	Return $result
EndFunc   ;==>getOcrMaintenanceTime

Func getOcrRateCoc($x_start, $y_start, $sLogText = Default, $LogTextColor = Default, $bSilentSetLog = Default)
	;  -> Get the Text with time till maintenance is over from reload msg(228, 402)
	Local $result = getOcrAndCapture("coc-ratecoc", $x_start, $y_start, 42, 28, True)
	If $sLogText = Default Then
		$String = "getOcrRateCoc: " & $result
	Else
		$String = $sLogText & " " & $result
	EndIf
	If $debugSetlog = 1 Then ; if enabled generate debug log message
		SetDebugLog($String, $LogTextColor, $bSilentSetLog)
	ElseIf $result <> "" Then ;
		SetDebugLog($String, $LogTextColor, True) ; if result found, add to log file
	EndIf
	Return $result
EndFunc   ;==>getOcrRateCoc

Func getRemainTLaboratory($x_start, $y_start) ; read actual time remaining in Lab for current upgrade (336,260)
	Return getOcrAndCapture("coc-RemainLaboratory", $x_start, $y_start, 192, 24)
EndFunc   ;==>getRemainTLaboratory

Func getRemainTHero($x_start, $y_start) ; Get time remaining for hero to be ready for attack from train window, BK:443,504 AQ:504,504 GW:565:504
	Return getOcrAndCapture("coc-remainhero", $x_start, $y_start, 38, 12, True)
EndFunc   ;==>getRemainTHero

Func getHeroStatus($x_start, $y_start) ; Get status/type_of_Hero from Hero Slots in training overview window, Slot1:464,446 Slot2:526,446 Slot3:588:446
	Return getOcrAndCapture("coc-herostatus", $x_start, $y_start, 20, 20)
EndFunc   ;==>getHeroStatus

Func getCloudTextShort($x_start, $y_start, $sLogText = Default, $LogTextColor = Default, $bSilentSetLog = Default)
	; Get 3 characters of yellow text in center of attack search window during extended cloud waiting (388,378)
	; Full text length is 316 pixels, some is covered by chat window when open
	Local $result = getOcrAndCapture("coc-cloudsearch", $x_start, $y_start, 51, 27)
	If $debugSetlog = 1 And $sLogText <> Default And IsString($sLogText) Then ; if enabled generate debug log message
		Local $String = $sLogText & $result
		SetDebugLog($String, $LogTextColor, $bSilentSetLog)
	EndIf
	Return $result
EndFunc   ;==>getCloudTextShort

Func getCloudFailShort($x_start, $y_start, $sLogText = Default, $LogTextColor = Default, $bSilentSetLog = Default)
	; Get 6 characters of pink text in center of attack search window during failed attack search (271, 381)
	; Full text length is 318 pixels, on checking for 1st 6 characters
	Local $result = getOcrAndCapture("coc-cloudfail", $x_start, $y_start, 72, 24)
	If $debugSetlog = 1 And $sLogText <> Default And IsString($sLogText) Then ; if enabled generate debug log message
		Local $String = $sLogText & $result
		SetDebugLog($String, $LogTextColor, $bSilentSetLog)
	EndIf
	Return $result
EndFunc   ;==>getCloudFailShort

Func getBarracksNewTroopQuantity($x_start, $y_start) ;  -> Gets quantity of troops in army Window
	Return getOcrAndCapture("coc-newarmy", $x_start, $y_start, 45, 18, True)
EndFunc   ;==>getBarracksNewTroopQuantity

Func getArmyCapacityOnTrainTroops($x_start, $y_start) ;  -> Gets quantity of troops in army Window
	Return getOcrAndCapture("coc-NewCapacity", $x_start, $y_start, 67, 14, True)
EndFunc   ;==>getArmyCapacityOnTrainTroops

Func getQueueTroopsQuantity($x_start, $y_start) ;  -> Gets quantity of troops in Queue in Train Tab
	Return StringReplace(getOcrAndCapture("coc-qqtroop", $x_start, $y_start, 71, 22, True), "b", "")
EndFunc   ;==>getQueueTroopsQuantity

Func getChatStringChinese($x_start, $y_start) ; -> Get string chat request - Chinese - "DonateCC.au3"
	Local $bUseOcrImgLoc = True
	Return getOcrAndCapture("chinese-bundle", $x_start, $y_start, 160, 14, Default, $bUseOcrImgLoc)
EndFunc   ;==>getChatStringChinese

Func OcrForceCaptureRegion($bForce = Default)
	If $bForce = Default Then Return $bOcrForceCaptureRegion
	Local $wasForce = $bOcrForceCaptureRegion
	$bOcrForceCaptureRegion = $bForce
	Return $wasForce
EndFunc   ;==>OcrForceCaptureRegion

Func getOcrAndCapture($language, $x_start, $y_start, $width, $height, $removeSpace = Default, $bImgLoc = Default, $bForceCaptureRegion = Default)
	If $removeSpace = Default Then $removeSpace = False
	If $bImgLoc = Default Then $bImgLoc = False
	If $bForceCaptureRegion = Default Then $bForceCaptureRegion = $bOcrForceCaptureRegion
	Local $bDelete_hHBitmap = False
	If $bForceCaptureRegion = True Then
		_CaptureRegion2($x_start, $y_start, $x_start + $width, $y_start + $height)
		Local $_hHBitmap = $hHBitmap2
	Else
		$bDelete_hHBitmap = True
		Local $_hHBitmap = GetHHBitmapArea($hHBitmap2, $x_start, $y_start, $x_start + $width, $y_start + $height)
	EndIf
	Local $result
	If $bImgLoc Then
		$result = getOcrImgLoc($_hHBitmap, $language)
	Else
		$result = getOcr($_hHBitmap, $language)
	EndIf
	If $bDelete_hHBitmap Then _WinAPI_DeleteObject($_hHBitmap)
	If ($removeSpace) Then
		$result = StringReplace($result, " ", "")
	Else
		$result = StringStripWS($result, BitOR($STR_STRIPLEADING, $STR_STRIPTRAILING, $STR_STRIPSPACES))
	EndIf
	Return $result
EndFunc   ;==>getOcrAndCapture

Func getOcr($hBitmap, $language)
	Local $result = DllCall($hFuncLib, "str", "ocr", "ptr", $hBitmap, "str", $language, "int", $debugOcr)
	If IsArray($result) Then
		Return $result[0]
	Else
		Return ""
	EndIf
EndFunc   ;==>getOcr

Func getOcrImgLoc($hBitmap, $sLanguage)
	Local $result = DllCall($pImgLib, "str", "DoOCR", "handle", $hBitmap, "str", $sLanguage)

	Local $error = @error ; Store error values as they reset at next function call
	Local $extError = @extended
	If $error Then
		_logErrorDLLCall($pImgLib, $error)
		If $DebugSetlog = 1 Then SetLog(" imgloc DLL Error : " & $error & " --- "  & $extError)
		Return SetError(2, $extError , "") ; Set external error code = 2 for DLL error
	EndIF
	If $debugImageSave = 1 Then DebugImageSave($sLanguage, False)

	If IsArray($result) Then
		Return $result[0]
	Else
		Return ""
	EndIf
EndFunc   ;==>getOcrImgLoc
