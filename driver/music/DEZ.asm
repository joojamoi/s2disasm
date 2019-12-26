DeathEgg_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $A0
	sHeaderCh	$05, $03
	sHeaderDAC	DeathEgg_DAC1
	sHeaderDAC	DeathEgg_DAC2
	sHeaderFM	DeathEgg_FM1, $00, $16
	sHeaderFM	DeathEgg_FM2, $00, $08
	sHeaderFM	DeathEgg_FM3, $00, $10
	sHeaderFM	DeathEgg_FM4, $00, $10
	sHeaderFM	DeathEgg_FM5, $00, $06
	sHeaderPSG	DeathEgg_PSG1, $E8+$0C, $30, $00, v00
	sHeaderPSG	DeathEgg_PSG2, $E8+$0C, $30, $00, v00
	sHeaderPSG	DeathEgg_PSG3, $00, $10, $00, v01

	; Patch $00
	; $30
	; $75, $71, $75, $31,	$D8, $96, $58, $94
	; $01, $03, $1B, $08,	$01, $01, $04, $01
	; $FF, $3F, $2F, $3F,	$34, $10, $29, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$07, $07, $07, $03
	spMultiple	$05, $01, $05, $01
	spRateScale	$03, $02, $01, $02
	spAttackRt	$18, $16, $18, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $03, $1B, $08
	spDecayRt	$01, $01, $04, $01
	spSustainLv	$0F, $03, $02, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$34, $10, $29, $00

	; Patch $01
	; $3A
	; $32, $72, $11, $11,	$1F, $9F, $1F, $1F
	; $03, $03, $0A, $0A,	$02, $02, $02, $02
	; $AF, $AF, $7F, $7F,	$1E, $28, $00, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $07, $01, $01
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $03, $0A, $0A
	spDecayRt	$02, $02, $02, $02
	spSustainLv	$0A, $0A, $07, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $28, $00, $00

	; Patch $02
	; $3A
	; $11, $01, $15, $11,	$59, $5C, $59, $4E
	; $0A, $0D, $0B, $04,	$00, $00, $00, $00
	; $1F, $2F, $5F, $0F,	$1A, $2E, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $00, $01, $01
	spMultiple	$01, $01, $05, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$19, $1C, $19, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0D, $0B, $04
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $02, $05, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $2E, $0E, $00

	; Patch $03
	; $06
	; $01, $72, $33, $31,	$0A, $4C, $8C, $52
	; $00, $00, $00, $00,	$01, $01, $00, $00
	; $0F, $2F, $0F, $0F,	$4D, $80, $87, $91
	spAlgorithm	$06
	spFeedback	$00
	spDetune	$00, $07, $03, $03
	spMultiple	$01, $02, $03, $01
	spRateScale	$00, $01, $02, $01
	spAttackRt	$0A, $0C, $0C, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$01, $01, $00, $00
	spSustainLv	$00, $02, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$4D, $00, $07, $11

	; Patch $04
	; $3A
	; $01, $01, $02, $01,	$10, $14, $0E, $10
	; $0C, $0E, $0E, $0E,	$00, $00, $00, $00
	; $0F, $7F, $FF, $1F,	$1C, $31, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $14, $0E, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0E, $0E, $0E
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$00, $07, $0F, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $31, $28, $00

	; Patch $05
	; $39
	; $02, $02, $01, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1B, $28, $32, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $28, $32, $00

DeathEgg_FM1:
	sVoice		$00

DeathEgg_Jump1:
	dc.b nA5, $04, nG5, nBb5, nFs5, nA5, nF5, nAb5
	dc.b nFs5, nB5, nF5, nA5, nG5, nBb5, nFs5, nAb5
	dc.b nF5, nA5, nG5, nB5, nF5, nBb5, nFs5, nC6
	dc.b nF5, nBb5, nG5, nB5, nFs5, nA5, nF5, nAb5
	dc.b nFs5, nBb5, nE5, nG5, nEb5, nA5, nF5, nBb5
	dc.b nFs5, nB5, nG5, nA5, nF5, nAb5, nFs5, nBb5
	dc.b nG5, nB5, nAb5, nC6, nA5, nCs6, nG5, nC6
	dc.b nF5, nB5, nFs5, nBb5, nG5, nA5, nF5, nAb5
	dc.b nE5, nG5, nEb5, nA5, nF5, nBb5, nFs5, nB5
	dc.b nG5, nC6, nAb5, nEb6, nG5, nD6, nF5, nC6
	dc.b nG5, nB5, nFs5, nBb5, nG5, nA5, nF5, nAb5
	dc.b nFs5, nB5, nF5, nA5, nG5, nBb5, nFs5, nC6
	dc.b nF5, nBb5, nFs5, nB5, nF5, nA5, nE5, nAb5
	dc.b nEb5, nA5, nE5, nBb5, nF5, nB5, nFs5, nC6
	dc.b nG5, nD6, nF5, nBb5, nFs5, nA5, nG5, nB5
	dc.b nFs5, nBb5, nF5, nB5, nE5, nA5, nF5, nBb5
	dc.b nG5, nB5, nFs5, nA5, nF5, nBb5, nFs5, nC6
	dc.b nE5, nD6, nEb5, nCs6, nF5, nC6, nFs5, nB5
	dc.b nF5, nBb5, nG5, nA5, nFs5, nAb5, nF5, nA5
	dc.b nFs5, nBb5, nG5, nB5, nAb5, nC6, nF5, nA5
	dc.b nFs5, nBb5, nF5, nB5, nE5, nC6, nF5, nB5
	dc.b nFs5, nA5, nG5, nBb5, nFs5, nAb5, nF5, nA5
	dc.b nG5, nBb5, nFs5, nB5, nF5, nC6, nE5, nBb5
	dc.b nF5, nA5, nFs5, nB5, nG5, nAb5, nF5, nA5
	dc.b nFs5, nBb5, nF5, nB5, nE5, nC6, nEb5, nCs6
	dc.b nE5, nBb5, nF5, nA5, nFs5, nAb5, nG5, nB5
	dc.b nF5, nA5, nFs5, nBb5, nG5, nAb5, nF5, nB5
	dc.b nE5, nC6, nEb5, nBb5, nF5, nA5, nFs5, nB5
	dc.b nG5, nBb5, nF5, nA5, nFs5, nAb5, nG5, nB5
	dc.b nF5, nBb5, nFs5, nC6, nD5, nB5, nF5, nA5
	dc.b nFs5, nBb5, nG5, nAb5, nFs5, nA5, nF5, nBb5
	dc.b nE5, nB5, nEb5, nC6, nF5, nCs6, nFs5, nB5
	dc.b nG5, nBb5, nFs5, nA5, nF5, nAb5, nEb5, nG5
	dc.b nF5, nA5, nFs5, nBb5, nG5, nB5, nAb5, nC6
	dc.b nG5, nBb5, nFs5, nA5, nG5, nB5, nF5, nBb5
	dc.b nFs5, nA5, nG5, nB5, nF5, nBb5, nFs5, nA5
	dc.b nF5
	sJump		DeathEgg_Jump1

DeathEgg_FM3:
	dc.b nRst, $30
	sVoice		$02
	ssMod68k	$08, $01, $05, $04
	sJump		DeathEgg_Loop1

DeathEgg_Loop2:
	dc.b nRst, $30

DeathEgg_Loop1:
	dc.b nRst, $08, nEb6, $02, nCs6, nA5, nRst, nEb6
	dc.b nCs6, nA5, nRst
	sLoop		$01, $02, DeathEgg_Loop1
	sLoop		$00, $02, DeathEgg_Loop2
	sCall		DeathEgg_Call1
	dc.b nA4, $10, nB4, $08, nCs5, $10, nA4, $08
	dc.b nE5, $0C, nFs5, $04, nE5, $08, nCs5, $10
	dc.b nA4, $08, nA5, $10, nFs5, $04, nA5, nFs5
	dc.b $10, nE5, $04, nFs5, nE5, $18, nFs5, $10
	dc.b nCs5, $08, nA4, $10, nB4, $08, nCs5, $10
	dc.b nA4, $08, nE5, $0C, nFs5, $04, nE5, $08
	dc.b nCs5, $10, nA4, $08, nA5, $60

DeathEgg_Loop3:
	dc.b nE6, $04, nD6, nCs6, $10
	sLoop		$00, $03, DeathEgg_Loop3
	dc.b nE6, $04, nD6, nCs6, $08, nA5, nCs6, $30
	dc.b nRst
	sJump		DeathEgg_FM3

DeathEgg_Call1:
	sVoice		$03
	dc.b nA4, $10, nB4, $08, nCs5, $10, nA4, $08
	dc.b nE5, $0C, nFs5, $04, nE5, $08, nCs5, $10
	dc.b nA4, $08, nA5, $18, nFs5, nE5, nCs5, nA4
	dc.b $10, nB4, $08, nCs5, $10, nA4, $08, nE5
	dc.b $0C, nFs5, $04, nE5, $08, nCs5, $10, nA4
	dc.b $08, nA5, $20, nFs5, $08, nAb5, nA5, $30
	sRet

DeathEgg_FM4:
	dc.b nRst, $30
	sVoice		$02
	ssMod68k	$08, $01, $05, $04
	sJump		DeathEgg_Loop5+2

DeathEgg_Loop5:
	dc.b nRst, $30
	ssDetune	$02

DeathEgg_Loop4:
	dc.b nRst, $08, nEb6, $02, nCs6, nA5, nRst, nEb6
	dc.b nCs6, nA5, nRst
	sLoop		$01, $02, DeathEgg_Loop4
	sLoop		$00, $02, DeathEgg_Loop5
	sCall		DeathEgg_Call1
	dc.b nCs5, $10, nD5, $08, nE5, $10, nCs5, $08
	dc.b nAb5, $0C, nA5, $04, nAb5, $08, nE5, $10
	dc.b nCs5, $08, nCs6, $10, nA5, $04, nCs6, nA5
	dc.b $10, nAb5, $04, nA5, nAb5, $18, nA5, $10
	dc.b nE5, $08, nCs5, $10, nD5, $08, nE5, $10
	dc.b nCs5, $08, nAb5, $0C, nA5, $04, nAb5, $08
	dc.b nE5, $10, nCs5, $08, nCs6, $60

DeathEgg_Loop6:
	dc.b nCs6, $04, nB5, nA5, $10
	sLoop		$00, $03, DeathEgg_Loop6
	dc.b nCs6, $04, nB5, nA5, $08, nFs5, nA5, $30
	dc.b nRst
	sJump		DeathEgg_Loop5

DeathEgg_FM5:
	sVoice		$05
	sNoteTimeOut	$00
	saVol		$0C
	dc.b nA2, $30
	ssMod68k	$10, $01, $FF, $FF
	dc.b sHold, $30, sHold
	ssMod68k	$00, $01, $10, $FF
	dc.b nG2, $08
	sModOff
	dc.b nC3, $40
	ssMod68k	$10, $01, $FE, $FF
	dc.b sHold, $18
	saVol		$F4
	sVoice		$04
	sNoteTimeOut	$09

DeathEgg_Loop7:
	dc.b nA2, $04, nRst, $28, nAb2, $04, nA2, nA2
	dc.b $02, nRst, $2A, nA2, $04, nRst, $28, nAb2
	dc.b $04, nA2, nA2, nRst, $18, nA4, $04, nB4
	dc.b nC5, nCs5
	sLoop		$00, $04, DeathEgg_Loop7

DeathEgg_Loop8:
	dc.b nA2, $04, nRst, nA4, nA4, nFs4, nA4
	sLoop		$00, $04, DeathEgg_Loop8
	dc.b nA2, $04, nRst, $28, nAb2, $04, nA2, nA2
	dc.b nA4, nB4, nC5, nCs5, nRst, $08, nA4, $04
	dc.b nB4, nC5, nCs5
	sJump		DeathEgg_FM5

DeathEgg_FM2:
	sVoice		$01
	sNoteTimeOut	$0A

DeathEgg_Jump2:
	dc.b nA1, $04, nA2, nA2, nA1, nG2, nA1, nFs2
	dc.b nA1, nF2, nF2, nA1, nE2, nA1, $02, nRst
	dc.b $2E, nA1, $04, nA2, nA2, nA1, nG2, nA1
	dc.b nFs2, nA1, nC3, nC3, nA1, nC3, nA1, $02
	dc.b nRst, $2E
	sJump		DeathEgg_Jump2

DeathEgg_PSG2:
	ssDetune	$FE

DeathEgg_PSG1:
	dc.b nRst, $18
	sLoop		$00, $18, DeathEgg_PSG1

DeathEgg_Loop9:
	ssMod68k	$06, $02, $FE, $FF
	dc.b nG2, $18
	sModOff
	dc.b nA2, $30
	ssMod68k	$06, $01, $01, $FF
	dc.b sHold, $18
	ssMod68k	$00, $01, $FA, $FF
	dc.b nG2, $08
	sModOff
	dc.b nC3, $40
	ssMod68k	$00, $01, $01, $FF
	dc.b sHold, $18
	sLoop		$00, $02, DeathEgg_Loop9

DeathEgg_Loop10:
	ssMod68k	$00, $01, $FD, $FF
	dc.b nG2, $08
	sModOff
	dc.b nA2, $10
	ssMod68k	$00, $01, $FC, $FF
	dc.b $08
	sModOff
	dc.b nC3, $10
	sLoop		$00, $02, DeathEgg_Loop10
	ssMod68k	$00, $01, $FD, $FF
	dc.b nG2, $08
	sModOff
	dc.b nA2, $40
	ssMod68k	$06, $01, $01, $FF
	dc.b sHold, $18
	sJump		DeathEgg_PSG1

DeathEgg_DAC1:
	sStop

DeathEgg_DAC2:
	dc.b nRst, $30, dSnare, $04, dKick, dKick, $10, dSnare
	dc.b $04, dKick, dKick, $10, nRst, $30, dSnare, $04
	dc.b dKick, nRst, dKick, nRst, dKick, dKick, dKick, dSnare
	dc.b $08, dSnare, dKick, $08, dSnare, $04, $04, $08
	dc.b dKick, dSnare, dSnare, dKick, dSnare, $0C, $04, dKick
	dc.b $08, dSnare, dSnare, dKick, dSnare, $04, $08, $04
	dc.b dKick, $08, dSnare, dSnare, dKick, dSnare, $04, $08
	dc.b $04, dKick, $08, dSnare, $04, $04, $08, dKick
	dc.b dSnare, dSnare, dKick, dSnare, $04, $08, $04, dKick
	dc.b $08, dSnare, dSnare, dKick, $08, dSnare, $04, $04
	dc.b $08, dKick, dSnare, dSnare, dKick, dSnare, $04, $08
	dc.b $04, dKick, $08, dSnare, dSnare, dKick, dSnare, $04
	dc.b dSnare, dKick, dSnare, dKick, $08, dSnare, dSnare, dKick
	dc.b dSnare, $04, $08, $04, dKick, $08, dSnare, dSnare
	dc.b dKick, $08, dSnare, $04, $04, $08, dKick, dSnare
	dc.b dSnare, dKick, dSnare, $04, $08, $04, dKick, $08
	dc.b dSnare, dSnare, dKick, $04, dKick, dSnare, dKick, dSnare
	dc.b dKick, dKick, $08, dSnare, dSnare, dKick, dSnare, $04
	dc.b $08, $04, dKick, $08, dSnare, dSnare, dKick, dSnare
	dc.b $04, $04, $08, dKick, dSnare, dSnare, dKick, dSnare
	dc.b $04, $08, $04, dKick, $08, dSnare, dSnare, dSnare
	dc.b $04, dKick, $08, $04, dSnare, dKick, dKick, $08
	dc.b dSnare, dSnare, dKick, $08, dSnare, $04, dSnare, dSnare
	dc.b dSnare, dKick, $08, dSnare, dSnare, dKick, $08, dSnare
	dc.b $04, dSnare, dSnare, dSnare, dKick, $08, dSnare, dSnare
	dc.b dKick, $08, dSnare, $04, $08, $04, dSnare, $04
	dc.b dKick, $08, $04, dSnare, dKick, dSnare, $04, dKick
	dc.b $08, $04, dSnare, dKick
	sJump		DeathEgg_DAC2

DeathEgg_PSG3:
	sNoisePSG	$E7

DeathEgg_Jump3:
	dc.b nRst, $08, nHiHat, nHiHat, nRst, $08, nHiHat, nHiHat
	dc.b nRst, $30, nRst, $08, nHiHat, nHiHat, nRst, $08
	dc.b nHiHat, nHiHat, nRst, $30

DeathEgg_Loop11:
	dc.b nRst, $78
	sLoop		$00, $08, DeathEgg_Loop11
	sJump		DeathEgg_Jump3
