SkyChase_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $A4
	sHeaderCh	$05, $03
	sHeaderDAC	SkyChase_DAC1
	sHeaderDAC	SkyChase_DAC2
	sHeaderFM	SkyChase_FM1, $F4, $12
	sHeaderFM	SkyChase_FM2, $E8, $0E
	sHeaderFM	SkyChase_FM3, $F4, $09
	sHeaderFM	SkyChase_FM4, $F4, $10
	sHeaderFM	SkyChase_FM5, $DC, $24
	sHeaderPSG	SkyChase_PSG1, $F4+$0C, $60, $00, v00
	sHeaderPSG	SkyChase_PSG2, $F9+$0C, $48, $00, v00
	sHeaderPSG	SkyChase_PSG3, $00, $20, $00, v04

	; Patch $00
	; $02
	; $62, $34, $01, $01,	$59, $59, $59, $51
	; $04, $04, $04, $07,	$01, $01, $01, $01
	; $12, $12, $12, $17,	$1E, $25, $19, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$06, $03, $00, $00
	spMultiple	$02, $04, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$19, $19, $19, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $04, $07
	spDecayRt	$01, $01, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$02, $02, $02, $07
	spTotalLv	$1E, $25, $19, $00

	; Patch $01
	; $3A
	; $11, $00, $1A, $11,	$89, $4F, $59, $4F
	; $0A, $06, $0D, $09,	$00, $00, $00, $01
	; $1F, $0F, $FF, $5F,	$20, $3B, $2E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $00, $01, $01
	spMultiple	$01, $00, $0A, $01
	spRateScale	$02, $01, $01, $01
	spAttackRt	$09, $0F, $19, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $06, $0D, $09
	spDecayRt	$00, $00, $00, $01
	spSustainLv	$01, $00, $0F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $3B, $2E, $00

	; Patch $02
	; $3D
	; $01, $02, $42, $22,	$1F, $1F, $1F, $1F
	; $07, $00, $00, $00,	$00, $0E, $0E, $0E
	; $24, $0F, $0F, $0F,	$1C, $89, $89, $89
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $04, $02
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $00, $00, $00
	spDecayRt	$00, $0E, $0E, $0E
	spSustainLv	$02, $00, $00, $00
	spReleaseRt	$04, $0F, $0F, $0F
	spTotalLv	$1C, $09, $09, $09

	; Patch $03
	; $04
	; $57, $74, $07, $54,	$1F, $1F, $1B, $1F
	; $00, $00, $00, $00,	$06, $00, $0A, $0D
	; $00, $00, $0F, $0F,	$1A, $25, $98, $8F
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$05, $07, $00, $05
	spMultiple	$07, $04, $07, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1B, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$06, $00, $0A, $0D
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$00, $00, $0F, $0F
	spTotalLv	$1A, $25, $18, $0F

	; Patch $04
	; $07
	; $06, $75, $7C, $0A,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$80, $80, $80, $80
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$00, $07, $07, $00
	spMultiple	$06, $05, $0C, $0A
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00

	; Patch $05
	; $01
	; $05, $05, $03, $01,	$0F, $CE, $0E, $10
	; $05, $0B, $02, $09,	$08, $00, $03, $0A
	; $FF, $0F, $3F, $FF,	$23, $21, $1A, $83
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$05, $05, $03, $01
	spRateScale	$00, $03, $00, $00
	spAttackRt	$0F, $0E, $0E, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $0B, $02, $09
	spDecayRt	$08, $00, $03, $0A
	spSustainLv	$0F, $00, $03, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $21, $1A, $03

	; Patch $06
	; $3C
	; $01, $01, $02, $02,	$CF, $CF, $0D, $0C
	; $00, $00, $08, $08,	$00, $00, $02, $02
	; $02, $02, $27, $28,	$1E, $1F, $80, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $02, $02
	spRateScale	$03, $03, $00, $00
	spAttackRt	$0F, $0F, $0D, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $08, $08
	spDecayRt	$00, $00, $02, $02
	spSustainLv	$00, $00, $02, $02
	spReleaseRt	$02, $02, $07, $08
	spTotalLv	$1E, $1F, $00, $00

SkyChase_FM4:
	sVoice		$03

SkyChase_Loop2:
	sCall		SkyChase_Call4
	sLoop		$00, $02, SkyChase_Loop2

SkyChase_Jump3:
	sPan		spRight
	ssDetune	$FE
	saVol		$14
	saTranspose	$E8
	sVoice		$04
	sCall		SkyChase_Call5
	sVoice		$03
	saTranspose	$18
	saVol		$EC
	ssDetune	$00
	sPan		spCenter

SkyChase_Loop3:
	sCall		SkyChase_Call4
	sLoop		$00, $08, SkyChase_Loop3
	sJump		SkyChase_Jump3

SkyChase_Call4:
	dc.b nB6, $06, nG6, nA6, nD6, nB6, nG6, nA6
	dc.b nD6
	sRet

SkyChase_FM5:
	dc.b nRst, $60
	sVoice		$04

SkyChase_Jump4:
	sPan		spLeft
	ssDetune	$02
	sCall		SkyChase_Call5
	ssDetune	$00
	sPan		spCenter
	saVol		$FB
	sCall		SkyChase_Call6
	dc.b nD6, $03, $03, $06, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, nRst, $12, nC6, $06, nD6
	saVol		$FA
	sCall		SkyChase_Call6
	dc.b nD6, $30
	saVol		$05
	sJump		SkyChase_Jump4

SkyChase_Call5:
	dc.b nG6, $30, nD6
	sLoop		$00, $04, SkyChase_Call5
	sRet

SkyChase_Call6:
	dc.b nG6, $03, $03, $06, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, nRst, $1E
	saVol		$FA
	dc.b nD6, $03, $03, $06, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, nRst, $1E
	saVol		$FA
	dc.b nC6, $03, $03, $06, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, sHold
	saVol		$02
	dc.b $02, nRst, $1E
	saVol		$FA
	sRet

SkyChase_FM1:
	dc.b nRst, $06
	sVoice		$06
	dc.b nG4, $03, nA4, nG4, $0C, nB4
	dc.b $03, nC5, nB4, $0C, nD5, $03, nE5, nD5
	dc.b $30

SkyChase_Jump1:
	dc.b nRst, $12, nE6, $03, nFs6, nG6, $06, nFs6
	dc.b nE6, nD6, nB5, $30, nRst, $12, nE6, $03
	dc.b nG6, nA6, $06, nG6, nFs6, nE6, nD6, $03
	dc.b nE6, nD6, nB5, $27, nRst, $12, nE6, $03
	dc.b nG6, nFs6, $06, nD6, nB5, nE6, nD6, $30
	dc.b nRst, $12, nE6, $03, nG6, nA6, $06, nG6
	dc.b nFs6, nE6, nD6, $03, nE6, nD6, nB5, $27
	sVoice		$00
	sCall		SkyChase_Call1
	dc.b nB4, $0C, nG4, nA4, nG4, $06, nA4
	sCall		SkyChase_Call1
	dc.b nB4, $30
	sJump		SkyChase_Jump1

SkyChase_Call1:
	dc.b nB4, $0C, nG4, nA4, nD4
	sLoop		$00, $03, SkyChase_Call1
	sRet

SkyChase_FM3:
	dc.b nRst, $06
	ssDetune	$02
	sVoice		$01
	dc.b nB4, $03, nC5, nB4, $0C, nD5
	dc.b $03, nE5, nD5, $0C, nG5, $03, nA5, nG5
	dc.b $30

SkyChase_Jump2:
	sVoice		$05
	saVol		$12
	dc.b nRst, $12, nE6, $03, nFs6, nG6, $06, nFs6
	dc.b nE6, nD6, nB5, $18
	sVoice		$01
	saVol		$EE
	sNoteTimeOut	$0B
	dc.b nG5, $06, nD5, nE5, $03, nG5, $06
	sNoteTimeOut	$00
	dc.b $15
	sVoice		$05
	saVol		$12
	dc.b nE6, $03, nG6, nA6, $06, nG6, nFs6, nE6
	dc.b nD6, $03, nE6, nD6, nB5, $0F
	sVoice		$01
	saVol		$EE
	dc.b nA5, $0C, nB5, nG5, $12
	sVoice		$05
	saVol		$12
	dc.b nE6, $03, nG6, nFs6, $06, nD6, nB5, nE6
	dc.b nD6, $18
	sVoice		$01
	saVol		$EE
	sNoteTimeOut	$0B
	dc.b nG5, $06, nD5, nE5, $03, nG5, $06
	sNoteTimeOut	$00
	dc.b $15
	sVoice		$05
	saVol		$12
	dc.b nE6, $03, nG6, nA6, $06, nG6, nFs6, nE6
	dc.b nD6, $03, nE6
	sVoice		$01
	saVol		$EE
	dc.b nB4, $03, nC5, nB4, $0C, nD5, $03, nE5
	dc.b nD5, $0C, nG5, $03, nA5
	saVol		$FC
	sCall		SkyChase_Call3
	dc.b nG5, $2A, nA5, $03, nB5, $33
	sCall		SkyChase_Call3
	dc.b nG5, $24, nA5, $0C, nG5, $30
	saVol		$04
	sJump		SkyChase_Jump2

SkyChase_Call3:
	dc.b nRst, $12, nG5, $03, nA5, nB5, $0C, nC6
	dc.b $03, nB5, nC6, nD6, $27, nE6, $0C
	sRet

SkyChase_FM2:
	dc.b nRst, $51
	sVoice		$02
	dc.b nG3, $03, nA3, $06, nB3

SkyChase_Loop1:
	dc.b nC4, $03, $0F, $03, $0C, nG4, $03, nA4
	dc.b $06, nG4, nG3, $03, $0F, $0F, nD4, $03
	dc.b nE4, $06, nD4
	sLoop		$00, $04, SkyChase_Loop1
	sCall		SkyChase_Call2
	dc.b nA3, $03, $0F, $0C, $09, $09, nG3, $03
	dc.b $0F, $0C, $06, nA3, nB3
	sCall		SkyChase_Call2
	dc.b nA3, $03, $0F, $0C, $06, nB3, nA3, nG3
	dc.b $30
	sJump		SkyChase_Loop1

SkyChase_Call2:
	dc.b nC4, $03, $0F, $0C, $09, $09, nB3, $03
	dc.b nB3, $0F, $0C, $06, nC4, nB3
	sRet

SkyChase_DAC1:
	sStop

SkyChase_DAC2:
	sCall		SkyChase_Call7
	sLoop		$00, $02, SkyChase_DAC2

SkyChase_Loop5:
	sCall		SkyChase_Call7
	sLoop		$00, $03, SkyChase_Loop5
	sCall		SkyChase_Call8
	sLoop		$01, $03, SkyChase_Loop5

SkyChase_Loop6:
	sCall		SkyChase_Call7
	sLoop		$00, $03, SkyChase_Loop6
	dc.b dKick, $0C, nRst, nRst, dSnare, $06, dSnare, $03
	dc.b dSnare
	sJump		SkyChase_Loop5

SkyChase_Call7:
	dc.b dKick, $03, dKick, nRst, $06, dSnare, dKick, nRst
	dc.b dKick, dSnare, $03, dKick, $09
	sRet

SkyChase_Call8:
	dc.b dKick, $03, dKick, nRst, $06, dSnare, dKick, nRst
	dc.b dKick, dSnare, dSnare, $03, dSnare
	sRet

SkyChase_PSG1:
	dc.b nRst, $60

SkyChase_Loop4:
	dc.b nG4, $30, nFs4
	sLoop		$00, $04, SkyChase_Loop4
	saVol		-$10
	dc.b nG4, $03, $03, $06, nRst, $24, nFs4, $03
	dc.b $03, $06, nRst, $24, nE4, $03, $03, $06
	dc.b nRst, $24, nD4, $03, $03, $06, nRst, $18
	dc.b nE4, $06, nFs4, nG4, $03, $03, $06, nRst
	dc.b $24, nFs4, $03, $03, $06, nRst, $24, nE4
	dc.b $03, $03, $06, nRst, $24, nFs4, $30
	saVol		$10
	sJump		SkyChase_Loop4

SkyChase_PSG2:
	dc.b nRst, $60
	sVolEnv		v08

SkyChase_Jump5:
	dc.b nRst, $12, nD6, $03, nD6, nD6, $06, nD6
	dc.b nD6, nD6, nD6, $30, nRst, $12, nD6, $03
	dc.b nD6, nD6, $06, nD6, nD6, nD6, nD6, $03
	dc.b nD6, nD6, nD6, $27, nRst, $12, nD6, $03
	dc.b nD6, nD6, $06, nD6, nD6, nD6, nD6, $30
	dc.b nRst, $12, nD6, $03, nD6, nD6, $06, nD6
	dc.b nD6, nD6, nD6, $03, nD6, nD6, nD6, $27
	saVol		$08
	dc.b nB4, $03, $03, $06, nRst, $24, nA4, $03
	dc.b $03, $06, nRst, $24, nG4, $03, $03, $06
	dc.b nRst, $24, nFs4, $03, $03, $06, nRst, $18
	dc.b nG4, $06, nA4, nB4, $03, $03, $06, nRst
	dc.b $24, nA4, $03, $03, $06, nRst, $24, nG4
	dc.b $03, $03, $06, nRst, $24, nD4, $30
	saVol		-$08
	sJump		SkyChase_Jump5

SkyChase_PSG3:
	sNoisePSG	$E7
	sNoteTimeOut	$09

SkyChase_Jump6:
	dc.b nHiHat, $0C
	sJump		SkyChase_Jump6
