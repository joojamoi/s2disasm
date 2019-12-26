CasionNight2P_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $43
	sHeaderCh	$05, $03
	sHeaderDAC	CasionNight2P_DAC1
	sHeaderDAC	CasionNight2P_DAC2
	sHeaderFM	CasionNight2P_FM1, $F4, $06
	sHeaderFM	CasionNight2P_FM2, $F4, $0D
	sHeaderFM	CasionNight2P_FM3, $F4, $10
	sHeaderFM	CasionNight2P_FM4, $E8, $0E
	sHeaderFM	CasionNight2P_FM5, $F4, $10
	sHeaderPSG	CasionNight2P_PSG1, $D0+$0C, $20, $00, v00
	sHeaderPSG	CasionNight2P_PSG2, $D0+$0C, $20, $00, v00
	sHeaderPSG	CasionNight2P_PSG3, $C4+$0C, $28, $00, v00

	; Patch $00
	; $08
	; $09, $30, $70, $00,	$1F, $5F, $1F, $5F
	; $12, $0A, $0E, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$25, $13, $30, $80
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$09, $00, $00, $00
	spRateScale	$00, $01, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0A, $0E, $0A
	spDecayRt	$00, $04, $04, $03
	spSustainLv	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$25, $13, $30, $00

	; Patch $01
	; $3A
	; $01, $01, $07, $01,	$8E, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $FF, $0F,	$17, $27, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $27, $28, $00

	; Patch $02
	; $3A
	; $03, $03, $08, $01,	$8E, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $FF, $0F,	$17, $20, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$03, $03, $08, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $20, $28, $00

	; Patch $03
	; $3A
	; $01, $01, $07, $01,	$8E, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $FF, $0F,	$18, $16, $4E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $16, $4E, $00

	; Patch $04
	; $20
	; $7A, $00, $31, $00,	$9F, $DC, $D8, $DF
	; $10, $04, $0A, $04,	$0F, $08, $08, $08
	; $5F, $BF, $5F, $BF,	$14, $17, $2B, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$07, $00, $03, $00
	spMultiple	$0A, $00, $01, $00
	spRateScale	$02, $03, $03, $03
	spAttackRt	$1F, $1C, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $04, $0A, $04
	spDecayRt	$0F, $08, $08, $08
	spSustainLv	$05, $0B, $05, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $17, $2B, $00

CasionNight2P_FM1:
	sVoice		$00
	dc.b nA3, $06, nRst, nA3, nRst, nB3, nRst, nB3
	dc.b nRst, nC4, nRst, nC4, nRst, nCs4, nRst, nCs4
	dc.b nRst

CasionNight2P_Loop1:
	dc.b nD3, $09, nA3, $03, nD4, $06, nRst, nC4
	dc.b nRst, nB3, $0C, nC4, $06, nRst, $2A, nG3
	dc.b $06, nRst, nG3, nRst, nA3, nRst, nA3, nRst
	dc.b nBb3, nRst, $2A
	sLoop		$00, $02, CasionNight2P_Loop1
	sCall		CasionNight2P_Call1
	dc.b nD3, $0C, nD4, $06, nRst, nC4, nRst, nD4
	dc.b $0C, nD3, $03, nRst, $06, nD3, $03, nD4
	dc.b $0C, nC4, nD4, nG3, $06, nRst, nG3, $0C
	dc.b nA3, $06, nRst, nA3, $0C, nBb3, $06, nRst
	dc.b $2A
	sCall		CasionNight2P_Call1
	dc.b nD3, $0C, nD4, $06, nRst, nC4, nRst, nD4
	dc.b $0C, nD3, $03, nRst, $06, nD3, $03, nD4
	dc.b $0C, nC4, nD4, $09, nA4, $03, nG3, $06
	dc.b nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C
	dc.b nBb3, $06, nRst, $2A
	saVol		$FE

CasionNight2P_Loop2:
	dc.b nC4, $06, nRst, nC4, nRst, nB3, nRst, nBb3
	dc.b nRst, nA3, nRst, nA3, nRst, nE4, nRst, nA3
	dc.b nRst, nD4, nRst, nA3, nRst, nC4, nRst, nCs4
	dc.b nRst, nD4, $09, nD4, $03, nA3, $06, nRst
	dc.b nC4, nRst, nD4, nRst
	sLoop		$00, $03, CasionNight2P_Loop2
	dc.b nC4, $06, nRst, nC4, nRst, nB3, nRst, nBb3
	dc.b nRst, nA3, nRst, nA3, nRst, nE4, nRst, nA3
	dc.b nRst, nRst, $09, nD3, $03, nD4, $0C, nD3
	dc.b nD4, $06, nRst, $03, nD3, $06, nRst, $2D
	saVol		$02
	sJump		CasionNight2P_Loop1

CasionNight2P_Call1:
	dc.b nD3, $0C, nD4, $06, nRst, nC4, nRst, nD4
	dc.b $0C, nD3, $03, nRst, $06, nD3, $03, nD4
	dc.b $0C, nC4, nD4, $09, nA3, $03, nG3, $06
	dc.b nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C
	dc.b nBb3, $06, nRst, $27, nC4, $03
	sRet

CasionNight2P_FM2:
	sVoice		$01
	sCall		CasionNight2P_Call2

CasionNight2P_Loop3:
	sCall		CasionNight2P_Call3
	sLoop		$00, $02, CasionNight2P_Loop3
	sVoice		$03
	ssDetune	$02
	saVol		$07

CasionNight2P_Loop4:
	sCall		CasionNight2P_Call4
	sLoop		$00, $02, CasionNight2P_Loop4

CasionNight2P_Loop5:
	sCall		CasionNight2P_Call5
	sLoop		$00, $02, CasionNight2P_Loop5
	sVoice		$01
	ssDetune	$00
	saVol		$F9
	sCall		CasionNight2P_Call6
	sCall		CasionNight2P_Call7
	sJump		CasionNight2P_Loop3

CasionNight2P_Call6:
	dc.b nRst, $09, nG6, $0F, nE6, $06, nRst, nC6
	dc.b nRst, nF6, $18, nE6, nD6, $06, nRst, nD6
	dc.b nRst, nC6, $09, nD6, $06, nRst, nA5, $33
	dc.b nRst, $09, nG6, $0F, nE6, $06, nRst, nC6
	dc.b nRst, nF6, $18, nE6, nRst, $0C, nD6, $06
	dc.b nRst, nE6, $09, nD6, $06, nRst, nF6, $33
	sRet

CasionNight2P_Call7:
	dc.b nRst, $09, nG6, $0F, nE6, $06, nRst, nC6
	dc.b nRst, nF6, $18, nE6, nD6, $06, nRst, nD6
	dc.b nRst, nC6, $09, nD6, $06, nRst, nA5, $33
	dc.b nRst, $09, nG6, $0F, nE6, $06, nRst, nC6
	dc.b nRst, nF6, $18, nE6, nRst, $09, nD6, $0F
	dc.b nF6, $06, nRst, nE6, nRst, $03, nD6, $06
	dc.b nRst, $2D
	sRet

CasionNight2P_Call2:
	dc.b nA6, $06, nRst, $12, nA6, $15, nE6, $03
	dc.b nA6, $06, nRst, nG6, nRst, nF6, nRst, nE6
	dc.b nRst
	sRet

CasionNight2P_Call3:
	dc.b nC6, $09, nD6, $06, nRst, nD6, nRst, nD6
	dc.b $03, nC6, $0C, nF6, $06, nRst, nD6, $24
	dc.b nRst, $60
	sRet

CasionNight2P_FM3:
	dc.b nRst, $60
	sVoice		$02

CasionNight2P_Loop6:
	dc.b nRst, $60, $3C, nF6, $09, nE6, $03, nF6
	dc.b $09, nE6, $03, nF6, $06, nRst
	sLoop		$00, $02, CasionNight2P_Loop6
	saVol		$04
	sPan		spRight

CasionNight2P_Loop7:
	dc.b nRst, $60, $30, nA5, $06, nRst, nF5, $0C
	dc.b nG5, $09, nF5, $03, nD5, $0C, nRst, $60
	dc.b $30, nA5, $06, nRst, nF5, $0C, nG5, $09
	dc.b nA5, $03, nRst, $0C
	sLoop		$00, $02, CasionNight2P_Loop7
	saVol		$FC
	sPan		spCenter
	sVoice		$01
	ssDetune	$02
	saTranspose	$F4
	saVol		$FF
	sCall		CasionNight2P_Call6
	sCall		CasionNight2P_Call7
	sVoice		$02
	ssDetune	$00
	saTranspose	$0C
	saVol		$01
	sJump		CasionNight2P_Loop6

CasionNight2P_FM4:
	sVoice		$01
	ssDetune	$02
	sCall		CasionNight2P_Call2

CasionNight2P_Loop8:
	sCall		CasionNight2P_Call3
	sLoop		$00, $02, CasionNight2P_Loop8
	sVoice		$03
	ssDetune	$00
	saTranspose	$0C
	saVol		$04
	ssMod68k	$01, $01, $03, $03

CasionNight2P_Loop9:
	sCall		CasionNight2P_Call4
	sLoop		$00, $02, CasionNight2P_Loop9

CasionNight2P_Loop10:
	sCall		CasionNight2P_Call5
	sLoop		$00, $02, CasionNight2P_Loop10
	sVoice		$01
	sCall		CasionNight2P_Call8
	dc.b nEb5, $03, sHold, nE5, $2D, nEb5, $03, sHold
	dc.b nE5, $2D
	sPan		spLeft
	dc.b nRst, $0C, nF5, $06, nRst, nG5, $09, nF5
	dc.b $06, nRst, nA5, $2D, nRst, $06
	sCall		CasionNight2P_Call8
	dc.b nEb5, $03, sHold, nE5, $2D, nEb5, $03, sHold
	dc.b nE5, $2D
	sPan		spLeft
	dc.b nRst, $09, nF5, nRst, $06, nF5, $09, nRst
	dc.b $0C, nF5, $06, nRst, $2D
	ssDetune	$02
	saTranspose	$F4
	saVol		$FC
	sPan		spCenter
	sModOff
	sJump		CasionNight2P_Loop8

CasionNight2P_Call8:
	sPan		spCenter
	dc.b nEb5, $03, sHold, nE5, $2D, nEb5, $03, sHold
	dc.b nE5, $2D
	sPan		spLeft
	dc.b nF5, $06, nRst, nF5, nRst, nE5, $09, nF5
	dc.b $06, nRst, nF5, $0C, nE5, $03, nF5, $06
	dc.b nRst, nE5, $09, nF5, $06, nRst, $09
	sPan		spCenter
	sRet

CasionNight2P_Call4:
	dc.b nF6, $15, nE6, $03, nD6, $06, nRst, nC6
	dc.b $0C, nE6, $06, nRst, nC6, $0C, nD6, $06
	dc.b nRst, $12, nRst, $60
	sRet

CasionNight2P_Call5:
	dc.b nA6, $15, nG6, $03, nF6, $06, nRst, nE6
	dc.b $0C, nG6, $06, nRst, nE6, $0C, nF6, $06
	dc.b nRst, $12, nRst, $60
	sRet

CasionNight2P_FM5:
	dc.b nRst, $60
	sVoice		$02
	sPan		spRight

CasionNight2P_Loop11:
	dc.b nRst, $60, nRst, $3C, nD6, $09, nC6, $03
	dc.b nD6, $09, nC6, $03, nD6, $06, nRst
	sLoop		$00, $02, CasionNight2P_Loop11
	sVoice		$04
	sPan		spCenter
	dc.b nRst, $60
	sCall		CasionNight2P_Call9
	dc.b nRst, $60
	sCall		CasionNight2P_Call10
	sVoice		$03
	saVol		$02
	sPan		spLeft
	ssMod68k	$01, $01, $03, $03
	sCall		CasionNight2P_Call11
	sVoice		$04
	saVol		$FC
	sPan		spCenter
	sCall		CasionNight2P_Call9
	sVoice		$03
	sPan		spLeft
	saVol		$04
	sCall		CasionNight2P_Call11
	sVoice		$04
	saVol		$FC
	sPan		spCenter
	sCall		CasionNight2P_Call10
	saVol		$04
	sVoice		$01
	sCall		CasionNight2P_Call12
	dc.b nB4, $03, sHold, nC5, $2D, nC5, $03, sHold
	dc.b nCs5, $2D
	sPan		spRight
	dc.b nRst, $0C, nD5, $06, nRst, nE5, $09, nD5
	dc.b $03, nRst, $09, nF5, $2D, nRst, $06
	sCall		CasionNight2P_Call12
	dc.b nB4, $03, sHold, nC5, $2D, nC5, $03, sHold
	dc.b nCs5, $2D
	sPan		spRight
	dc.b nRst, $09, nD5, nRst, $06, nD5, $09, nRst
	dc.b $0C, nD5, $06, nRst, $2D
	sVoice		$02
	sPan		spRight
	saVol		$FE
	sModOff
	sJump		CasionNight2P_Loop11

CasionNight2P_Call12:
	sPan		spCenter
	dc.b nB4, $03, sHold, nC5, $2D, nC5, $03, sHold
	dc.b nCs5, $2D
	sPan		spRight
	dc.b nD5, $06, nRst, nD5, nRst, nC5, $09, nD5
	dc.b $06, nRst, nD5, $0C, nC5, $03, nD5, $06
	dc.b nRst, nC5, $09, nD5, $06, nRst, $09
	sPan		spCenter
	sRet

CasionNight2P_Call9:
	dc.b nG3, $06, nRst, nG3, $0C, nA3, $06, nRst
	dc.b nA3, $0C, nBb3, $06, nRst, $27, nC4, $03
	sRet

CasionNight2P_Call11:
	dc.b nF6, $15, nE6, $03, nD6, $06, nRst, nC6
	dc.b $0C, nE6, $06, nRst, nC6, $0C, nD6, $06
	dc.b nRst, $12
	sRet

CasionNight2P_Call10:
	dc.b nG3, $06, nRst, nG3, $0C, nA3, $06, nRst
	dc.b nA3, $0C, nBb3, $06, nRst, $2A
	sRet

CasionNight2P_PSG3:
CasionNight2P_PSG1:
	dc.b nRst, $60
	sNoteTimeOut	$06

CasionNight2P_Loop12:
	dc.b nRst, $0C, nF5, nRst, nF5, nRst, nF5, nRst
	dc.b nF5, nRst, nD5, nRst, nD5, nRst, nD5, nRst
	dc.b nD5
	sLoop		$00, $02, CasionNight2P_Loop12
	dc.b nRst, $60, nRst, $0C, nF5, nRst, nF5, nRst
	dc.b nF5, nRst, nF5, nRst, $60, nRst, $0C, nF5
	dc.b nRst, nF5, nRst, nF5, $04, nRst, nF5, nRst
	dc.b $0C, nF5

CasionNight2P_Loop13:
	dc.b nRst, $60, nRst, $0C, nF5, nRst, nF5, nRst
	dc.b nF5, nRst, nF5
	sLoop		$00, $02, CasionNight2P_Loop13

CasionNight2P_Loop14:
	dc.b nRst, $0C, nC6, nRst, nC6, nRst, nCs6, nRst
	dc.b nCs6, nRst, nD6, nRst, nD6, nRst, nD6, nRst
	dc.b nD6
	sLoop		$00, $03, CasionNight2P_Loop14
	dc.b nRst, $0C, nC6, nRst, nC6, nRst, nCs6, nRst
	dc.b nCs6, nRst, $60
	sJump		CasionNight2P_Loop12

CasionNight2P_PSG2:
	dc.b nRst, $60
	sNoteTimeOut	$06

CasionNight2P_Loop15:
	dc.b nRst, $0C, nD5, nRst, nD5, nRst, nD5, nRst
	dc.b nD5, nRst, nBb4, nRst, nBb4, nRst, nBb4, nRst
	dc.b nBb4
	sLoop		$00, $02, CasionNight2P_Loop15
	dc.b nRst, $60, nRst, $0C, nD5, nRst, nD5, nRst
	dc.b nD5, nRst, nD5, nRst, $60, nRst, $0C, nD5
	dc.b nRst, nD5, nRst, nD5, $04, nRst, nD5, nRst
	dc.b $0C, nD5

CasionNight2P_Loop16:
	dc.b nRst, $60, nRst, $0C, nD5, nRst, nD5, nRst
	dc.b nD5, nRst, nD5
	sLoop		$00, $02, CasionNight2P_Loop16

CasionNight2P_Loop17:
	dc.b nRst, $0C, nA5, nRst, nA5, nRst, nA5, nRst
	dc.b nA5, nRst, nA5, nRst, nA5, nRst, nA5, nRst
	dc.b nA5
	sLoop		$00, $03, CasionNight2P_Loop17
	dc.b nRst, $0C, nA5, nRst, nA5, nRst, nA5, nRst
	dc.b nA5, nRst, $60
	sJump		CasionNight2P_Loop15

CasionNight2P_DAC1:
	sStop

CasionNight2P_DAC2:
	dc.b nRst, $0C, dSnare, dKick, dSnare, dSnare, dSnare, dSnare
	dc.b dSnare

CasionNight2P_Loop18:
	sCall		CasionNight2P_Call13
	sLoop		$00, $03, CasionNight2P_Loop18
	dc.b dKick, $09, dKick, $03, $0C, dSnare, dKick, dKick
	dc.b $15, dSnare, $03, $18

CasionNight2P_Loop19:
	sCall		CasionNight2P_Call13
	sLoop		$00, $0F, CasionNight2P_Loop19
	dc.b nRst, $09, dKick, $0F, dSnare, $0C, dKick, $09
	dc.b dSnare, $1B, $0C, $09, $03
	sJump		CasionNight2P_Loop18

CasionNight2P_Call13:
	dc.b dKick, $09, dKick, $03, $0C, dSnare, dKick, dKick
	dc.b $18, dSnare
	sRet
