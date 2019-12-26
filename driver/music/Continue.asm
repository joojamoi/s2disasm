Continue_Header:
	sHeaderInit						; Z80 offset is $1380
	sHeaderTempo	$01, $25
	sHeaderCh	$04, $00
	sHeaderDAC	Continue_DAC1
	sHeaderDAC	Continue_DAC2
	sHeaderFM	Continue_FM1, $E5, $08
	sHeaderFM	Continue_FM2, $E8, $08
	sHeaderFM	Continue_FM3, $F4, $0F
	sHeaderFM	Continue_FM4, $F4, $0F

	; Patch $00
	; $3A
	; $51, $51, $08, $02,	$1E, $1E, $1E, $10
	; $1F, $1F, $1F, $0F,	$00, $00, $00, $02
	; $0F, $0F, $0F, $1F,	$18, $22, $24, $81
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$05, $05, $00, $00
	spMultiple	$01, $01, $08, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1E, $1E, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1F, $1F, $0F
	spDecayRt	$00, $00, $00, $02
	spSustainLv	$00, $00, $00, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $22, $24, $01

	; Patch $01
	; $3B
	; $52, $31, $31, $51,	$12, $12, $14, $14
	; $0D, $0D, $00, $02,	$00, $00, $00, $01
	; $4F, $5F, $0F, $3F,	$1E, $2D, $18, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$05, $03, $03, $05
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $12, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $0D, $00, $02
	spDecayRt	$00, $00, $00, $01
	spSustainLv	$04, $05, $00, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $2D, $18, $00

	; Patch $02
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

	; Patch $03
	; $1C
	; $6F, $21, $01, $71,	$9F, $9E, $DB, $5E
	; $0F, $06, $07, $07,	$08, $0B, $0A, $00
	; $8F, $FF, $8F, $FF,	$18, $26, $8D, $80
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$06, $02, $00, $07
	spMultiple	$0F, $01, $01, $01
	spRateScale	$02, $02, $03, $01
	spAttackRt	$1F, $1E, $1B, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $06, $07, $07
	spDecayRt	$08, $0B, $0A, $00
	spSustainLv	$08, $0F, $08, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $26, $0D, $00

Continue_FM1:
	dc.b nRst, $30
	sVoice		$00

Continue_Loop1:
	saTranspose	$01
	dc.b nRst, $0C, nEb6, $12, nRst, $06, nEb6, nRst
	dc.b nE6, $0C, nRst, $06, nCs6, $18, nRst, $06
	sLoop		$00, $03, Continue_Loop1
	dc.b nF6, $06, nRst, nF6, nRst, nF6, nRst, nC6
	dc.b nRst, nBb5, $0C, nRst, $06, nD6, $4E
	sStop

Continue_FM2:
	sVoice		$01
	saVol		$02
	saTranspose	$F4
;	sComm		0, $01
	dc.b nA5, $0C, nAb5, nG5, nFs5
	saVol		$FE
	saTranspose	$0C
	sVoice		$02

Continue_Loop2:
	dc.b nA4, $06, nRst, nA4, nRst, nE4, nRst, nE4
	dc.b nRst, nG4, $12, nFs4, $0C, nG4, $06, nFs4
	dc.b $0C
	saTranspose	$01
	sLoop		$00, $03, Continue_Loop2
	saTranspose	$FD
	dc.b nB4, $06, nRst, nB4, nRst, nFs4, nRst, nFs4
	dc.b nRst, nE5, $0C, nRst, $06, nEb5, $4E
;	sComm		0, $01
	sStop

Continue_FM3:
	dc.b nRst, $30
	sVoice		$03

Continue_Loop3:
	dc.b nE6, $06, nRst, nE6, nRst, nCs6, nRst, nCs6
	dc.b nRst, nD6, $12, nD6, $1E
	sLoop		$00, $03, Continue_Loop3
	dc.b nE6, $06, nRst, nE6, nRst, nCs6, nRst, nCs6
	dc.b nRst, nG6, $0C, nRst, $06, nG6, $1E, sHold
	dc.b $30
	sStop

Continue_FM4:
	dc.b nRst, $30
	sVoice		$03

Continue_Loop4:
	dc.b nCs6, $06, nRst, nCs6, nRst, nA5, nRst, nA5
	dc.b nRst, nB5, $12, nB5, $1E
	sLoop		$00, $03, Continue_Loop4
	dc.b nCs6, $06, nRst, nCs6, nRst, nA5, nRst, nA5
	dc.b nRst, nD6, $0C, nRst, $06, nD6, $4E
	sStop

Continue_DAC2:
	dc.b nRst, $30

Continue_Loop5:
	dc.b dKick, $0C, dSnare
	sLoop		$00, $0E, Continue_Loop5
	dc.b dKick, $0C, dSnare, $06, dKick, $0C

Continue_DAC1:
	sStop
