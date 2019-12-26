FinalBoss_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $57
	sHeaderCh	$05, $03
	sHeaderDAC	FinalBoss_DAC1
	sHeaderDAC	FinalBoss_DAC2
	sHeaderFM	FinalBoss_FM1, $F4, $0B
	sHeaderFM	FinalBoss_FM2, $F4, $0B
	sHeaderFM	FinalBoss_FM3, $E8, $0E
	sHeaderFM	FinalBoss_FM4, $F4, $14
	sHeaderFM	FinalBoss_FM5, $F4, $14
	sHeaderPSG	FinalBoss_PSG1, $D0+$0C, $30, $00, v00
	sHeaderPSG	FinalBoss_PSG2, $F4+$0C, $28, $00, v08
	sHeaderPSG	FinalBoss_PSG3, $FE+$0C, $18, $00, v04

	; Patch $00
	; $3A
	; $01, $01, $07, $01,	$8E, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $01
	; $1F, $1F, $FF, $0F,	$17, $27, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spDecayRt	$00, $00, $00, $01
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $27, $28, $00

	; Patch $01
	; $3D
	; $01, $01, $01, $01,	$8E, $14, $52, $4C
	; $08, $0E, $08, $03,	$00, $03, $03, $03
	; $1F, $1F, $1F, $1F,	$1A, $80, $80, $60
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0E, $08, $03
	spDecayRt	$00, $03, $03, $03
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $00, $00, $60

	; Patch $02
	; $3D
	; $01, $51, $21, $01,	$12, $14, $14, $0F
	; $05, $05, $05, $05,	$00, $00, $00, $00
	; $2F, $2F, $2F, $1F,	$1E, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $05, $02, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $14, $14, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $05
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $00, $00, $00

FinalBoss_FM1:
	sVoice		$00

FinalBoss_Loop1:
	dc.b nBb5, $0C, nF5
	saVol		$05
	sLoop		$00, $04, FinalBoss_Loop1
	saVol		$EC
	sLoop		$01, $02, FinalBoss_Loop1
	sPan		spLeft
	saVol		$FE

FinalBoss_Loop2:
	sCall		FinalBoss_Call1
	sLoop		$00, $02, FinalBoss_Loop2
	saVol		$02
	sPan		spCenter
	sCall		FinalBoss_Call2
	sPan		spLeft

FinalBoss_Loop3:
	sCall		FinalBoss_Call3
	sLoop		$00, $02, FinalBoss_Loop3
	sCall		FinalBoss_Call4
	sLoop		$01, $02, FinalBoss_Loop3
	sPan		spCenter
	sJump		FinalBoss_Loop1

FinalBoss_Call1:
	dc.b nRst, $60, nRst, nRst, $0C, nG6, $06, nA6
	dc.b nE6, $48, nRst, $0C, nG6, $06, nAb6, nE6
	dc.b $48
	sRet

FinalBoss_Call2:
	dc.b nC6, $06, nB5, nC6, nRst, nC6, nB5, nC6
	dc.b nRst, nD6, $12, $06, nRst, $18, nD6, $06
	dc.b nC6, nD6, nRst, nD6, nC6, nD6, nRst, nE6
	dc.b $12, $06, nRst, $18, nE6, $06, nD6, nE6
	dc.b nRst, nE6, nD6, nE6, nRst, nE6, $12, $06
	dc.b nRst, $18, nA6, $24, $03, nRst, nAb6, $36
	dc.b $06, nRst, nAb6, nRst, nAb6, nRst, nAb6, nRst
	dc.b nAb6, nRst, $2A
	sRet

FinalBoss_Call3:
	dc.b nE6, $06, nC6, nRst, nE6, nC6, nRst, nE6
	dc.b nC6, nE6, nC6, nRst, nE6, nC6, nRst, $12
	sRet

FinalBoss_Call4:
	dc.b nRst, $0C, nA5, $06, nB5, nC6, $48, nRst
	dc.b $0C, nB5, $06, nC6, nD6, $48
	sRet

FinalBoss_FM2:
	sVoice		$00

FinalBoss_Loop4:
	dc.b nA5, $0C, nE5
	saVol		$05
	sLoop		$00, $04, FinalBoss_Loop4
	saVol		$EC
	sLoop		$01, $02, FinalBoss_Loop4
	sVoice		$02
	sPan		spLeft
	ssDetune	$03
	saVol		$08

FinalBoss_Loop5:
	sCall		FinalBoss_Call5
	sLoop		$00, $02, FinalBoss_Loop5
	sVoice		$00
	ssDetune	$00
	saVol		$F8
	sPan		spCenter
	sCall		FinalBoss_Call6

FinalBoss_Loop6:
	sCall		FinalBoss_Call7
	sLoop		$00, $02, FinalBoss_Loop6
	sCall		FinalBoss_Call8
	sLoop		$01, $02, FinalBoss_Loop6
	sJump		FinalBoss_Loop4

FinalBoss_Call7:
	dc.b nC6, $06, nA5, nRst, nC6, nA5, nRst, nC6
	dc.b nA5, nC6, nA5, nRst, nC6, nA5, nRst, $12
	sRet

FinalBoss_Call8:
	saTranspose	$F4
	saVol		$03
	dc.b nRst, $0C, nA5, $06, nB5, nC6, $48, nRst
	dc.b $0C, nB5, $06, nC6, nD6, $48
	saTranspose	$0C
	saVol		$FD
	sRet

FinalBoss_Call6:
	dc.b nA5, $06, nG5, nA5, nRst, nA5, nG5, nA5
	dc.b nRst, nB5, $12, $06, nRst, $18, nB5, $06
	dc.b nA5, nB5, nRst, nB5, nA5, nB5, nRst, nC6
	dc.b $12, $06, nRst, $18, nC6, $06, nB5, nC6
	dc.b nRst, nC6, nB5, nC6, nRst, nC6, $12, $06
	dc.b nRst, $18, nE6, $24, $03, nRst, nE6, $36
	dc.b $06, nRst, nE6, nRst, nE6, nRst, nE6, nRst
	dc.b nE6, nRst, $2A
	sRet

FinalBoss_FM3:
	ssMod68k	$13, $01, $03, $05

FinalBoss_Jump1:
	dc.b nRst, $60, nRst
	sVoice		$01

FinalBoss_Loop7:
	sCall		FinalBoss_Call9
	sLoop		$00, $02, FinalBoss_Loop7
	sCall		FinalBoss_Call10
	sCall		FinalBoss_Call11
	dc.b nF4, $54, nG4, $06, nA4, nE4, $60
	sCall		FinalBoss_Call11
	dc.b nF4, $60, nG4
	sJump		FinalBoss_Jump1

FinalBoss_Call11:
	dc.b nA4, $18, nE4, $0C, nA4, nAb4, $18, nE4
	dc.b nG4, nA4, $0C, nG4, nFs4, $18, nD4
	sRet

FinalBoss_Call9:
	dc.b nA4, $0C, nC5, nE5, nA4, nAb4, nC5, nE5
	dc.b nAb4, nG4, nB4, nD5, nG4, nFs4, nA4, nC5
	dc.b nFs4, nF4, nA4, nC5, nA4, nE5, nA4, nC5
	dc.b nF4, nE4, nAb4, nB4, nAb4, nD5, nAb4, nB4
	dc.b nE4
	sRet

FinalBoss_Call10:
	dc.b nF4, $24, nC5, $0C, nB4, $24, nA4, $0C
	dc.b nG4, $24, nD5, $0C, nC5, $24, $06, nD5
	dc.b nE5, $24, $06, $2A, nC5, $06, nD5, nE5
	dc.b $24, nF5, $06, nE5, $36, sHold, $30, nRst
	sRet

FinalBoss_FM4:
	ssMod68k	$12, $01, $05, $05

FinalBoss_Jump2:
	dc.b nRst, $60
	sVoice		$02
	dc.b nRst

FinalBoss_Loop8:
	sCall		FinalBoss_Call5
	sLoop		$00, $02, FinalBoss_Loop8

FinalBoss_Loop9:
	dc.b nRst, $60
	sLoop		$00, $05, FinalBoss_Loop9
	sCall		FinalBoss_Call12
	dc.b nC6, $54, nD6, $06, nC6, nB5, $60
	sCall		FinalBoss_Call12
	dc.b nC6, $60, nD6
	sJump		FinalBoss_Jump2

FinalBoss_Call12:
	dc.b nA5, $24, nAb5, $06, nA5, nB5, $24, nA5
	dc.b $06, nB5, nC6, $24, nB5, $06, nC6, nD6
	dc.b $24, nC6, $06, nD6
	sRet

FinalBoss_Call5:
	dc.b nA5, $18, nC6, nD6, $24, nB5, $0C, nC6
	dc.b $24, nA5, $0C, nB5, $18, nG5, nA5, $60
	dc.b nRst
	sRet

FinalBoss_FM5:
	dc.b nRst, $60, nRst
	sVoice		$01
	ssDetune	$01
	sPan		spRight
	ssMod68k	$13, $01, $03, $05

FinalBoss_Loop10:
	sCall		FinalBoss_Call9
	sLoop		$00, $02, FinalBoss_Loop10
	sCall		FinalBoss_Call10
	sPan		spLeft
	sVoice		$02
	ssDetune	$03
	sCall		FinalBoss_Call12
	dc.b nC6, $54, nD6, $06, nC6, nB5, $60
	sCall		FinalBoss_Call12
	dc.b nC6, $60, nD6
	sJump		FinalBoss_FM5

FinalBoss_PSG1:
	ssDetune	$02

FinalBoss_Jump3:
	dc.b nRst, $60, $60

FinalBoss_Loop11:
	sCall		FinalBoss_Call1
	sLoop		$00, $02, FinalBoss_Loop11

FinalBoss_Loop12:
	dc.b nRst, $60
	sLoop		$00, $05, FinalBoss_Loop12

FinalBoss_Loop13:
	dc.b nRst, $60, nRst, nRst, $0C, nA5, $06, nB5
	dc.b nC6, $48, nRst, $0C, nB5, $06, nC6, nD6
	dc.b $48
	sLoop		$00, $02, FinalBoss_Loop13
	sJump		FinalBoss_Jump3

FinalBoss_PSG2:
	ssMod68k	$0B, $02, $02, $01

FinalBoss_Jump4:
	dc.b nRst, $60
	sLoop		$00, $0F, FinalBoss_PSG2
	sCall		FinalBoss_Call11
	dc.b nF4, $54, nG4, $06, nA4, nE4, $60
	sCall		FinalBoss_Call11
	dc.b nF4, $60, nG4
	sJump		FinalBoss_Jump4

FinalBoss_PSG3:
	sNoisePSG	$E7
	sNoteTimeOut	$06

FinalBoss_Jump5:
	dc.b nA5, $18, $18, $18, $0C, $0C
	sJump		FinalBoss_Jump5

FinalBoss_DAC1:
	sStop

FinalBoss_DAC2:
	dc.b dFloorTimpani, $0C, dSnare, $04, dSnare, dSnare
	sLoop		$00, $03, FinalBoss_DAC2
	dc.b dMidTimpani, $0C, dLowTimpani
	sJump		FinalBoss_DAC2
