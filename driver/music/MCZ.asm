MysticCave_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $4A
	sHeaderCh	$05, $03
	sHeaderDAC	MysticCave_DAC1
	sHeaderDAC	MysticCave_DAC2
	sHeaderFM	MysticCave_FM1, $00, $0C
	sHeaderFM	MysticCave_FM2, $00, $0A
	sHeaderFM	MysticCave_FM3, $00, $0C
	sHeaderFM	MysticCave_FM4, $00, $10
	sHeaderFM	MysticCave_FM5, $00, $10
	sHeaderPSG	MysticCave_PSG1, $DC+$0C, $20, $00, v0B
	sHeaderPSG	MysticCave_PSG2, $DC+$0C, $10, $00, v01
	sHeaderPSG	MysticCave_PSG3, $00, $18, $00, v02

	; Patch $00
	; $04
	; $35, $54, $72, $46,	$1F, $1F, $1F, $1F
	; $07, $07, $0A, $0D,	$00, $00, $0B, $0B
	; $1F, $1F, $0F, $0F,	$23, $1D, $14, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$03, $05, $07, $04
	spMultiple	$05, $04, $02, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $07, $0A, $0D
	spDecayRt	$00, $00, $0B, $0B
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $1D, $14, $00

	; Patch $01
	; $3A
	; $01, $01, $01, $02,	$8D, $07, $07, $52
	; $09, $00, $00, $03,	$01, $02, $02, $00
	; $5F, $0F, $0F, $2F,	$18, $18, $22, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $02
	spRateScale	$02, $00, $00, $01
	spAttackRt	$0D, $07, $07, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $03
	spDecayRt	$01, $02, $02, $00
	spSustainLv	$05, $00, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $18, $22, $00

	; Patch $02
	; $3C
	; $42, $32, $41, $41,	$12, $12, $12, $12
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $06, $06, $08, $08,	$24, $24, $08, $08
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $03, $04, $04
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $12, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$06, $06, $08, $08
	spTotalLv	$24, $24, $08, $08

	; Patch $03
	; $3C
	; $51, $11, $51, $11,	$12, $11, $14, $0F
	; $0A, $05, $05, $05,	$00, $00, $00, $00
	; $A6, $56, $1A, $1A,	$13, $0D, $00, $00
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$05, $01, $05, $01
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $11, $14, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $05, $05
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$0A, $05, $01, $01
	spReleaseRt	$06, $06, $0A, $0A
	spTotalLv	$13, $0D, $00, $00

	; Patch $04
	; $24
	; $70, $30, $74, $38,	$12, $1F, $1F, $1F
	; $05, $05, $03, $03,	$05, $05, $03, $03
	; $36, $26, $2C, $2C,	$0A, $06, $08, $08
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$07, $03, $07, $03
	spMultiple	$00, $00, $04, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $03, $03
	spDecayRt	$05, $05, $03, $03
	spSustainLv	$03, $02, $02, $02
	spReleaseRt	$06, $06, $0C, $0C
	spTotalLv	$0A, $06, $08, $08

	; Patch $05
	; $31
	; $34, $30, $35, $31,	$DF, $9F, $DF, $9F
	; $0C, $0C, $07, $09,	$07, $07, $07, $08
	; $2F, $1F, $1F, $2F,	$17, $14, $32, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$04, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $07, $09
	spDecayRt	$07, $07, $07, $08
	spSustainLv	$02, $01, $01, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $14, $32, $00

	; Patch $06
	; $3D
	; $01, $01, $01, $01,	$10, $50, $50, $50
	; $07, $08, $08, $08,	$01, $00, $00, $00
	; $20, $1A, $1A, $1A,	$19, $84, $84, $84
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $01, $01, $01
	spAttackRt	$10, $10, $10, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $08, $08, $08
	spDecayRt	$01, $00, $00, $00
	spSustainLv	$02, $01, $01, $01
	spReleaseRt	$00, $0A, $0A, $0A
	spTotalLv	$19, $04, $04, $04

MysticCave_Call5:
	sVoice		$04
	dc.b nA2, $14, nB2, $04, nC3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nG3, $08, nE3, $10
	sVoice		$03
	sRet

MysticCave_Call3:
	saTranspose	$FE
	dc.b nA5, $04, sHold, nAb5, sHold, nA5, $04, sHold
	dc.b nAb5, sHold, nA5, sHold, nAb5, sHold, nA5, sHold
	dc.b nAb5
	saTranspose	$01
	dc.b sHold, nA5, sHold, nAb5, sHold, nA5, sHold, nAb5
	dc.b sHold, nA5, sHold, nAb5
	saTranspose	$01
	dc.b sHold, nA5, sHold, nAb5, sHold, nA5, sHold, nAb5
	dc.b sHold, nA5, $05, sHold, nAb5, sHold, nA5, $05
	dc.b sHold, nAb5, nRst, $04
	sRet

MysticCave_Call4:
	saTranspose	$FD
	dc.b nA5, $04, sHold, nAb5, sHold, nA5, sHold, nAb5
	dc.b sHold, nA5, sHold, nAb5, sHold, nA5, sHold, nAb5
	saTranspose	$FF
	dc.b sHold, nA5, sHold, nAb5, sHold, nA5, sHold, nAb5
	saTranspose	$FF
	dc.b sHold, nA5, sHold, nAb5, sHold, nA5, sHold, nAb5
	dc.b sHold, nA5, sHold, nAb5
	saTranspose	$FF
	dc.b sHold, nA5, $05, sHold, nAb5, sHold, nA5, $05
	dc.b sHold, nAb5, nRst, $04
	saTranspose	$06
	sRet

MysticCave_FM5:
	dc.b nRst, $01
	sVoice		$01
	sPan		spLeft
	sCall		MysticCave_Call5

MysticCave_Jump3:
	dc.b nRst, $2F, nRst, $1E
	sVoice		$06
	dc.b nB2, $12, nC3, $06
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nC5, $08, nB4, $04
	dc.b nBb4, $08, nA4, $04, nAb4, $08, nG4, $04
	dc.b nRst, $30, nRst, $1E
	sVoice		$06
	dc.b nB2, $12, nC3, $06
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nC5, $08, nB4, $04
	dc.b nBb4, $08, nA4, $04, nAb4, $08, nG4, $04
	dc.b nRst, $30, nRst, $1E
	sVoice		$06
	dc.b nB2, $12, nC3, $06
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nC5, $08, nB4, $04
	dc.b nBb4, $08, nA4, $04, nAb4, $08, nG4, $04
	dc.b nRst, $30, nRst, $1E
	sVoice		$06
	dc.b nB2, $12, nC3, $06
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nC5, $08, nB4, $04
	dc.b nBb4, $08, nA4, $04, nAb4, $08, nG4, $04

MysticCave_Loop6:
	dc.b nRst, $0C, nE5, $06, nRst, $12, $06, nRst
	dc.b $12, nE5, $06, nRst, $0C
	sVoice		$06
	dc.b nB2, $12, nC3, $06, nRst
	sVoice		$01
	dc.b nE5, $06, nRst, $12, $06, nRst, $12, nE5
	dc.b $08, nEb5, $04, nE5, $08, nEb5, $04, nE5
	dc.b $0C
	sLoop		$00, $04, MysticCave_Loop6
	dc.b nRst, $01
	sCall		MysticCave_Call5
	dc.b nRst, $0B, nA3, $08, nB3, $04, nC4, $08
	dc.b nB3, $04, nA3, $0C, $08, nB3, $04, nC4
	dc.b $08, nB3, $04, nA3, $06, nRst, $12, nRst
	dc.b $01
	sCall		MysticCave_Call5
	dc.b nA2, $0C, nRst, nG2, nRst, nF2, nRst, nE2
	dc.b nRst
	sCall		MysticCave_Call5
	dc.b nRst, $0B, nC4, $08, nD4, $04, nE4, $08
	dc.b nD4, $04, nC4, $0C, $08, nD4, $04, nE4
	dc.b $08, nD4, $04, nC4, $06, nRst, $12, nRst
	dc.b $01
	sCall		MysticCave_Call5
	dc.b nA2, $0C, nA2, nE2, $08, nG2, $0C, nA2
	dc.b $06, nRst, $2E
	sJump		MysticCave_Jump3

MysticCave_Call1:
	dc.b nFs5, $01, sHold, nG5, sHold, nAb5, sHold, nA5
	dc.b $2D
	sRet

MysticCave_Call2:
	dc.b sHold, $24, sHold, nAb5, $01, sHold, nG5, sHold
	dc.b nFs5, sHold, nF5, sHold, nE5, sHold, nEb5, sHold
	dc.b nD5, sHold, nCs5, sHold, nC5, sHold, nB4, sHold
	dc.b nBb4, sHold, nA4
	sRet

MysticCave_FM1:
	dc.b nRst, $30, nRst
	sVoice		$02
	ssMod68k	$18, $01, $0A, $04

MysticCave_Jump1:
	sCall		MysticCave_Call1
	saTranspose	$02
	sCall		MysticCave_Call1
	saTranspose	$01
	sCall		MysticCave_Call1
	saTranspose	$FC
	sCall		MysticCave_Call1
	saTranspose	$01
	sCall		MysticCave_Call1
	dc.b sHold, $30, sHold, $30
	sCall		MysticCave_Call2
	sCall		MysticCave_Call1
	saTranspose	$03
	sCall		MysticCave_Call1
	saTranspose	$FF
	sCall		MysticCave_Call1
	saTranspose	$FF
	sCall		MysticCave_Call1
	saTranspose	$FF
	sCall		MysticCave_Call1
	dc.b sHold, $30, sHold, $24
	sCall		MysticCave_Call2
	dc.b nRst, $0C

MysticCave_Loop1:
	dc.b nRst, $30, nRst
	sLoop		$00, $09, MysticCave_Loop1
	sCall		MysticCave_Call3
	dc.b nRst, $30, nRst
	saTranspose	$03
	sCall		MysticCave_Call4
	dc.b nRst, $30, nRst
	saTranspose	$FD
	sCall		MysticCave_Call3
	dc.b nRst, $30, nRst, nRst, nRst
	sJump		MysticCave_Jump1

MysticCave_PSG1:
	dc.b nRst, $04, nRst, $30, nRst

MysticCave_Jump4:
	sCall		MysticCave_Call1
	saTranspose	$02
	sCall		MysticCave_Call1
	saTranspose	$01
	sCall		MysticCave_Call1
	saTranspose	$FC
	sCall		MysticCave_Call1
	saTranspose	$01
	sCall		MysticCave_Call1
	dc.b sHold, $30, sHold, $30
	sCall		MysticCave_Call2
	sCall		MysticCave_Call1
	saTranspose	$03
	sCall		MysticCave_Call1
	saTranspose	$FF
	sCall		MysticCave_Call1
	saTranspose	$FF
	sCall		MysticCave_Call1
	saTranspose	$FF
	sCall		MysticCave_Call1
	dc.b sHold, $30, sHold, $24
	sCall		MysticCave_Call2
	dc.b nRst, $0C

MysticCave_Loop7:
	dc.b nRst, $30, nRst
	sLoop		$00, $09, MysticCave_Loop7
	sCall		MysticCave_Call3
	dc.b nRst, $30, nRst
	saTranspose	$03
	sCall		MysticCave_Call4
	dc.b nRst, $30, nRst
	saTranspose	$FD
	sCall		MysticCave_Call3
	dc.b nRst, $30, nRst, nRst, nRst
	sJump		MysticCave_Jump4

MysticCave_PSG2:
	dc.b nRst, $30, nRst

MysticCave_Loop8:
	dc.b nRst, $30, nRst
	sLoop		$00, $08, MysticCave_Loop8
	dc.b nA5, $0C, nAb5, nG5, $08, nAb5, $04, nG5
	dc.b $08, nFs5, $04, nF5, $08, $04, nE5, $0C
	dc.b nEb5, $08, nD5, $10, nC5, $0C, nC5, nB4
	dc.b $08, nC5, $0C, nE5, $06, nRst, $2E, nA5
	dc.b $0C, nAb5, nG5, $08, nAb5, $04, nG5, $08
	dc.b nFs5, $04, nF5, $08, $04, nE5, $0C, nEb5
	dc.b $08, nD5, $10, nC5, $0C, nC5, nB4, $08
	dc.b nC5, $0C, nA4, $06, nRst, $2E, nC6, $0C
	dc.b nB5, nBb5, $08, nB5, $04, nBb5, $08, nA5
	dc.b $04, nAb5, $08, $04, nG5, $0C, nFs5, $08
	dc.b nF5, $10, nE5, $0C, nE5, nD5, $08, nE5
	dc.b $0C, nG5, $06, nRst, $2E, nC6, $0C, nB5
	dc.b nBb5, $08, nB5, $04, nBb5, $08, nA5, $04
	dc.b nAb5, $08, $04, nG5, $0C, nFs5, $08, nF5
	dc.b $10, nE5, $0C, nE5, nD5, $08, nE5, $0C
	dc.b nC5, $06, nRst, $2E

MysticCave_Loop9:
	dc.b nA5, $0C, nE6, $08, nA5, $0C, nD6, nA5
	dc.b $04, nC6, $0C, nA5, $08, nB5, $0C, nA5
	dc.b $04, nC6, $0C
	sLoop		$00, $07, MysticCave_Loop9
	dc.b nA5, $0C, nE6, $08, nA5, $0C, nC6, nA5
	dc.b $06, nRst, $2E
	sJump		MysticCave_Loop8

MysticCave_FM3:
	ssMod68k	$18, $01, $03, $04
	sVoice		$06
	dc.b nA2, $14, nB2, $04, nC3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nG3, $08, nE3, $10
	sPan		spRight
	sVoice		$00

MysticCave_Loop3:
	dc.b nRst, $30, nRst
	sLoop		$00, $08, MysticCave_Loop3
	dc.b nA5, $0C, nAb5, nG5, $08, nAb5, $04, nG5
	dc.b $08, nFs5, $04, nF5, $08, $04, nE5, $0C
	dc.b nEb5, $08, nD5, $10, nC5, $0C, nC5, nB4
	dc.b $08, nC5, $0C, nE5, $06, sHold, $2E, nA5
	dc.b $0C, nAb5, nG5, $08, nAb5, $04, nG5, $08
	dc.b nFs5, $04, nF5, $08, $04, nE5, $0C, nEb5
	dc.b $08, nD5, $10, nC5, $0C, nC5, nB4, $08
	dc.b nC5, $0C, nA4, $06, sHold, $2E, nA5, $0C
	dc.b nAb5, nG5, $08, nAb5, $04, nG5, $08, nFs5
	dc.b $04, nF5, $08, $04, nE5, $0C, nEb5, $08
	dc.b nD5, $10, nC5, $0C, nC5, nB4, $08, nC5
	dc.b $0C, nE5, $06, sHold, $2E, nA5, $0C, nAb5
	dc.b nG5, $08, nAb5, $04, nG5, $08, nFs5, $04
	dc.b nF5, $08, $04, nE5, $0C, nEb5, $08, nD5
	dc.b $10, nC5, $0C, nC5, nB4, $08, nC5, $0C
	dc.b nA4, $06, sHold, $2E
	sPan		spCenter
	saVol		$06

MysticCave_Loop4:
	dc.b nA5, $0C, nE6, nA5, $08, nD6, $0C, nA5
	dc.b $04, nC6, $08, nA5, $0C, nB5, nA5, $04
	dc.b nC6, $0C
	sLoop		$00, $07, MysticCave_Loop4
	saVol		$FA
	dc.b nA5, $0C, nE6, $08, nA5, $0C, nC6, nA5
	dc.b $06, nRst, $2E
	sPan		spRight
	sJump		MysticCave_Loop3

MysticCave_FM2:
	dc.b nRst, $30
	sVoice		$05
	dc.b nRst

MysticCave_Loop2:
	dc.b nA2, $0C, nA3, nG3, $08, nA3, $04, nG3
	dc.b $08, nE3, $04, nD3, $08, $04, nEb3, $0C
	dc.b nE3, $08, nAb2, $10, nA2, $0C, nA3, nG3
	dc.b $08, nA3, $04, nG3, $08, nE3, $04, nD3
	dc.b $08, $04, nEb3, $08, nE3, $04, nRst, $18
	sLoop		$00, $08, MysticCave_Loop2
	dc.b nRst, $30, nRst, nA2, $08, $04, nB2, $0C
	dc.b nC3, nD3, nEb3, nD3, nC3, nB2, nRst, $30
	dc.b nRst, nA2, $0C, nRst, nG2, nRst, nF2, nRst
	dc.b nE2, nRst, nRst, $30, nRst, nA2, $08, $04
	dc.b nB2, $0C, nC3, nD3, nEb3, nD3, nC3, nB2
	dc.b nRst, $30, nRst, nA2, $0C, nA2, nE2, $08
	dc.b nG2, $0C, nA2, nA2, $04, nFs2, $0C, nG2
	dc.b nAb2
	sJump		MysticCave_Loop2

MysticCave_FM4:
	sVoice		$01
	sPan		spRight
	sCall		MysticCave_Call5

MysticCave_Jump2:
	dc.b nRst, $30, nRst, $1E
	sPan		spRight
	sVoice		$06
	dc.b nAb2, $12, nA2, $06
	sPan		spCenter
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nA4, $08, nAb4, $04
	dc.b nG4, $08, nFs4, $04, nF4, $08, nE4, $04
	dc.b nRst, $30, nRst, $1E
	sPan		spRight
	sVoice		$06
	dc.b nAb2, $12, nA2, $06
	sPan		spCenter
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nA4, $08, nAb4, $04
	dc.b nG4, $08, nFs4, $04, nF4, $08, nE4, $04
	dc.b nRst, $30, nRst, $1E
	sPan		spRight
	sVoice		$06
	dc.b nAb2, $12, nA2, $06
	sPan		spCenter
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nA4, $08, nAb4, $04
	dc.b nG4, $08, nFs4, $04, nF4, $08, nE4, $04
	dc.b nRst, $30, nRst, $1E
	sPan		spRight
	sVoice		$06
	dc.b nAb2, $12, nA2, $06
	sPan		spCenter
	sVoice		$01
	dc.b nRst, $30, nRst, $06, nA4, $08, nAb4, $04
	dc.b nG4, $08, nFs4, $04, nF4, $08, nE4, $04

MysticCave_Loop5:
	dc.b nRst, $0C, nC5, $06, nRst, $12, $06, nRst
	dc.b $12, nC5, $06, nRst, $0C
	sVoice		$06
	dc.b nAb2, $12, nA2, $06, nRst
	sVoice		$01
	dc.b nC5, $06, nRst, $12, $06, nRst, $12, nC5
	dc.b $08, nB4, $04, nC5, $08, nB4, $04, nC5
	dc.b $0C
	sLoop		$00, $04, MysticCave_Loop5
	sCall		MysticCave_Call5
	sPan		spRight
	saTranspose	$F4
	dc.b nRst, $0C, nA3, $08, nB3, $04, nC4, $08
	dc.b nB3, $04, nA3, $0C, $08, nB3, $04, nC4
	dc.b $08, nB3, $04, nA3, $06, nRst, $12
	sPan		spCenter
	saTranspose	$0C
	sCall		MysticCave_Call5
	sPan		spRight
	dc.b nA2, $0C, nRst, nG2, nRst, nF2, nRst, nE2
	dc.b nRst
	sPan		spCenter
	sCall		MysticCave_Call5
	sPan		spRight
	dc.b nRst, $0C, nA3, $08, nB3, $04, nC4, $08
	dc.b nB3, $04, nA3, $0C, $08, nB3, $04, nC4
	dc.b $08, nB3, $04, nA3, $06, nRst, $12
	sPan		spCenter
	sCall		MysticCave_Call5
	sPan		spRight
	dc.b nA2, $0C, nA2, nE2, $08, nG2, $0C, nA2
	dc.b $06, nRst, $2E
	sPan		spCenter
	sJump		MysticCave_Jump2

MysticCave_PSG3:
	sNoisePSG	$E7
	dc.b nRst, $30, nRst

MysticCave_Jump5:
	dc.b nHiHat, $0C, $08, $04
	sJump		MysticCave_Jump5

MysticCave_DAC2:
	dc.b nRst, $30, nRst, $18, dKick, $0C, $08, $04

MysticCave_Jump6:
	dc.b dKick, $08, $0C, $04, dSnare, $0C, dKick, $08
	dc.b $0C, dSnare, $04, dKick, $0C, dSnare, dKick, dKick
	dc.b $08, $0C, $04, dSnare, $0C, dKick, $08, $0C
	dc.b dSnare, $04, dKick, $0C, dSnare, dSnare, $08, $04
	sJump		MysticCave_Jump6

MysticCave_DAC1:
	sStop
