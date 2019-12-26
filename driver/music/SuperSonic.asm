SuperSonic_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $06
	sHeaderCh	$05, $01
	sHeaderDAC	SuperSonic_DAC1
	sHeaderDAC	SuperSonic_DAC2
	sHeaderFM	SuperSonic_FM1, $F4, $13
	sHeaderFM	SuperSonic_FM2, $F4, $0A
	sHeaderFM	SuperSonic_FM3, $F4, $13
	sHeaderFM	SuperSonic_FM4, $F4, $13
	sHeaderFM	SuperSonic_FM5, $F4, $13
	sHeaderPSG	SuperSonic_PSG1, $D0+$0C, $01, $00, v09

	; Patch $00
	; $3A
	; $02, $01, $07, $01,	$8E, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $FF, $0F,	$19, $15, $4E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $15, $4E, $00

	; Patch $01
	; $08
	; $0A, $30, $70, $00,	$1F, $5F, $1F, $5F
	; $12, $0A, $0E, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$22, $13, $2E, $80
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$0A, $00, $00, $00
	spRateScale	$00, $01, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0A, $0E, $0A
	spDecayRt	$00, $04, $04, $03
	spSustainLv	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $13, $2E, $00

	; Patch $02
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

	; Patch $03
	; $2C
	; $71, $33, $72, $33,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1E, $23, $80, $82
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $03, $02, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $23, $00, $02

	; Patch $04
	; $3A
	; $61, $14, $3C, $31,	$9C, $9C, $DB, $DA
	; $04, $04, $09, $03,	$03, $03, $01, $00
	; $1F, $0F, $0F, $AF,	$21, $31, $47, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$06, $01, $03, $03
	spMultiple	$01, $04, $0C, $01
	spRateScale	$02, $02, $03, $03
	spAttackRt	$1C, $1C, $1B, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $09, $03
	spDecayRt	$03, $03, $01, $00
	spSustainLv	$01, $00, $00, $0A
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $31, $47, $00

SuperSonic_FM1:
	dc.b nRst, $60, nRst
	sVoice		$00

SuperSonic_Loop1:
	sCall		SuperSonic_Call1
	sLoop		$00, $02, SuperSonic_Loop1

SuperSonic_Loop2:
	sCall		SuperSonic_Call2
	dc.b nRst, nF6, nRst, nE6, nRst, nF6, nG6, $12
	sCall		SuperSonic_Call2
	dc.b nRst, nF6, $0C, nRst, $24
	sLoop		$00, $02, SuperSonic_Loop2
	sCall		SuperSonic_Call3
	sJump		SuperSonic_FM1

SuperSonic_Call1:
	dc.b nRst, $0C, nB5, $16, nRst, $02, nB5, $06
	dc.b nRst, nC6, $12, nD6, nE6, $0C, nD6, $06
	dc.b nRst, nD6, nRst, nD6, nRst, nB5, nRst, nC6
	dc.b $12, nA5, $18, nRst, $06
	sRet

SuperSonic_Call2:
	dc.b nRst, $09, nB6, $0F, nG6, $06, nRst, nD6
	sRet

SuperSonic_Call3:
	dc.b nC6, $24, nA5, $06, nC6, nE6, $24, nC6
	dc.b $06, nE6, nG6, $3C, nRst, $24
	sRet

SuperSonic_FM3:
	sVoice		$00
	dc.b nB5, $12, nC6, nCs6, $0C, nC6, $12, nCs6
	dc.b nD6, $0C, nCs6, $12, nD6, nEb6, $0C, nD6
	dc.b $12, nEb6, nE6, $0C
	sVoice		$02
	ssDetune	$03

SuperSonic_Loop5:
	sCall		SuperSonic_Call1
	sLoop		$00, $02, SuperSonic_Loop5

SuperSonic_Loop6:
	sVoice		$00
	ssDetune	$00
	dc.b nB5, $0C, nRst, nB5, nRst, nA5, nRst, nA5
	dc.b nRst, nB5, $06, nRst, nB5, nRst, nA5, $0C
	dc.b nB5, $06, nRst, $36
	saTranspose	$03
	sLoop		$00, $02, SuperSonic_Loop6
	saTranspose	$FA
	dc.b nC6, $18, nRst, nE6, nRst, nG6, nG6, nG6
	dc.b nG6
	sJump		SuperSonic_FM3

SuperSonic_FM4:
	sVoice		$00

SuperSonic_Jump2:
	dc.b nG5, $12, nAb5, nA5, $0C, nAb5, $12, nA5
	dc.b nBb5, $0C, nA5, $12, nBb5, nB5, $0C, nBb5
	dc.b $12, nB5, nC6, $0C
	sVoice		$03

SuperSonic_Loop7:
	sCall		SuperSonic_Call5
	dc.b nC6, nRst, nC6, nRst, nC6, nRst, nC6, nRst
	sCall		SuperSonic_Call5
	dc.b nA5, nRst, nA5, nRst, nA5, nRst, nA5, nRst
	sLoop		$00, $02, SuperSonic_Loop7
	sVoice		$00

SuperSonic_Loop8:
	dc.b nG5, $0C, nRst, nG5, nRst, nF5, nRst, nF5
	dc.b nRst, nG5, $06, nRst, nG5, nRst, nF5, $0C
	dc.b nG5, $06, nRst, $36
	saTranspose	$04
	sLoop		$00, $02, SuperSonic_Loop8
	saTranspose	$F8
	dc.b nA5, $18, nRst, nC6, nRst, nE6, nE6, nE6
	dc.b nE6
	sJump		SuperSonic_Jump2

SuperSonic_Call5:
	dc.b nB5, $06, nRst, nB5, nRst, nB5, nRst, nB5
	dc.b nRst
	sRet

SuperSonic_FM2:
	sVoice		$01

SuperSonic_Jump1:
	dc.b nCs3, $12, nD3, nEb3, $0C, nD3, $12, nEb3
	dc.b nE3, $0C, nEb3, $12, nE3, nF3, $0C, nE3
	dc.b $12, nF3, nFs3, $0C
	sVoice		$04

SuperSonic_Loop3:
	sCall		SuperSonic_Call4
	dc.b nRst, $06, nE3, $0C
	sCall		SuperSonic_Call4
	dc.b nF3, $06, nE3, $0C
	sLoop		$00, $02, SuperSonic_Loop3
	sVoice		$01

SuperSonic_Loop4:
	dc.b nRst, $60, nRst, $3C, nBb3, $06, nB3, nG3
	dc.b $0C, nFs3
	sLoop		$00, $02, SuperSonic_Loop4
	dc.b nF4, $18, nF3, nF4, nF3, nF4, $0C, nF3
	dc.b nF4, nF3, nF4, nF3, nF4, nF3
	sJump		SuperSonic_Jump1

SuperSonic_Call4:
	dc.b nG3, $06, nRst, nG3, $0C, nD3, $06, nRst
	dc.b nD3, $0C, nF3, $06, nRst, nF3, $0C, nE3
	dc.b $06
	sRet

SuperSonic_FM5:
	dc.b nRst, $60, nRst
	sVoice		$03
	sPan		spRight

SuperSonic_Loop9:
	sCall		SuperSonic_Call6
	dc.b nE6, nRst, nE6, nRst, nE6, nRst, nE6, nRst
	sCall		SuperSonic_Call6
	dc.b nC6, nRst, nC6, nRst, nC6, nRst, nC6, nRst
	sLoop		$00, $02, SuperSonic_Loop9

SuperSonic_Loop10:
	sVoice		$02
	ssDetune	$03
	sPan		spLeft
	sCall		SuperSonic_Call2
	dc.b nRst, $06, nF6, nRst, nE6, nRst, nF6, nG6
	dc.b $12
	sCall		SuperSonic_Call2
	dc.b nRst, $06, nF6, $0C
	sVoice		$03
	ssDetune	$00
	sPan		spCenter
	dc.b nCs4, $06, nD4, nB3, $0C, nG3
	sLoop		$00, $02, SuperSonic_Loop10
	sVoice		$02
	ssDetune	$02
	sCall		SuperSonic_Call3
	ssDetune	$00
	sJump		SuperSonic_FM5

SuperSonic_Call6:
	dc.b nD6, $06, nRst, nD6, nRst, nD6, nRst, nD6
	dc.b nRst
	sRet

SuperSonic_PSG1:
	dc.b nRst, $60
	sLoop		$00, $0A, SuperSonic_PSG1
	dc.b nRst, $18
	sCall		SuperSonic_Call7
	dc.b nD6, nRst, $15, nC7, $03, nB6, nBb6, nA6
	dc.b nAb6, nG6, nFs6, nF6
	sCall		SuperSonic_Call7
	dc.b nCs6, nC7, nB6, nA6, nAb6, nG6, nFs6, nF6
	dc.b nE7, nEb7, nD7, nCs7, nC7, nB6, nBb6, nA6
	dc.b nG6, nFs6, nF6, nE6, nEb6, nD6, nCs6, nB5
	sJump		SuperSonic_PSG1

SuperSonic_Call7:
	dc.b nA6, $03, nAb6, nG6, nFs6, nF6, nE6, nEb6
	dc.b nD6
	sRet

SuperSonic_DAC1:
	sStop

SuperSonic_DAC2:
	dc.b dKick, $0C, dSnare, $06, dKick, $12, dSnare, $0C
	sLoop		$00, $03, SuperSonic_DAC2
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, dSnare, $06
	dc.b $0C

SuperSonic_Loop11:
	dc.b dKick, $0C, dSnare
	sLoop		$00, $07, SuperSonic_Loop11
	dc.b dKick, $06, dSnare, dSnare, $0C
	sLoop		$01, $05, SuperSonic_Loop11
	sJump		SuperSonic_DAC2
