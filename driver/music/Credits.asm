Credits_Header:
	sHeaderInit						; Z80 offset is $D797
	sHeaderTempo	$01, $10
	sHeaderCh	$05, $03
	sHeaderDAC	Credits_DAC1
	sHeaderDAC	Credits_DAC2
	sHeaderFM	Credits_FM1, $00, $0E
	sHeaderFM	Credits_FM2, $18, $0A
	sHeaderFM	Credits_FM3, $00, $14
	sHeaderFM	Credits_FM4, $00, $16
	sHeaderFM	Credits_FM5, $0C, $16
	sHeaderPSG	Credits_PSG1, $E8+$0C, $30, $00, v0B
	sHeaderPSG	Credits_PSG2, $DC+$0C, $38, $00, v0B
	sHeaderPSG	Credits_PSG3, $00+$0C, $10, $00, v03

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
	; $08
	; $09, $30, $70, $00,	$1F, $5F, $1F, $5F
	; $12, $0A, $0E, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$25, $0E, $30, $84
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
	spTotalLv	$25, $0E, $30, $04

	; Patch $02
	; $3C
	; $31, $50, $52, $30,	$52, $52, $53, $53
	; $08, $08, $00, $00,	$04, $04, $00, $00
	; $10, $10, $0B, $0D,	$19, $0B, $80, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $05, $05, $03
	spMultiple	$01, $00, $02, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$12, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $00, $00
	spDecayRt	$04, $04, $00, $00
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$00, $00, $0B, $0D
	spTotalLv	$19, $0B, $00, $00

	; Patch $03
	; $08
	; $0A, $30, $70, $00,	$1F, $5F, $1F, $5F
	; $12, $0A, $0E, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$24, $13, $2D, $80
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
	spTotalLv	$24, $13, $2D, $00

	; Patch $04
	; $3D
	; $01, $51, $21, $01,	$12, $14, $14, $0F
	; $0A, $05, $05, $05,	$00, $00, $00, $00
	; $2B, $2B, $2B, $1B,	$19, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $05, $02, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $14, $14, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $05, $05
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$0B, $0B, $0B, $0B
	spTotalLv	$19, $00, $00, $00

	; Patch $05
	; $04
	; $57, $70, $02, $50,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$06, $00, $0A, $0A
	; $00, $00, $0F, $0F,	$1A, $10, $80, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$05, $07, $00, $05
	spMultiple	$07, $00, $02, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spDecayRt	$06, $00, $0A, $0A
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$00, $00, $0F, $0F
	spTotalLv	$1A, $10, $00, $00

	; Patch $06
	; $35
	; $01, $13, $01, $00,	$1F, $18, $1D, $19
	; $00, $06, $09, $0D,	$00, $02, $00, $03
	; $00, $15, $06, $16,	$1E, $83, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $01, $00, $00
	spMultiple	$01, $03, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $18, $1D, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $06, $09, $0D
	spDecayRt	$00, $02, $00, $03
	spSustainLv	$00, $01, $00, $01
	spReleaseRt	$00, $05, $06, $06
	spTotalLv	$1E, $03, $00, $00

	; Patch $07
	; $3C
	; $31, $50, $52, $30,	$52, $52, $53, $53
	; $08, $08, $00, $00,	$04, $04, $00, $00
	; $1F, $1F, $0F, $0F,	$1A, $16, $88, $88
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $05, $05, $03
	spMultiple	$01, $00, $02, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$12, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $00, $00
	spDecayRt	$04, $04, $00, $00
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $16, $08, $08

	; Patch $08
	; $20
	; $36, $30, $35, $31,	$DF, $9F, $DF, $9F
	; $07, $09, $06, $06,	$07, $06, $06, $08
	; $2F, $1F, $1F, $FF,	$14, $0F, $37, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $09, $06, $06
	spDecayRt	$07, $06, $06, $08
	spSustainLv	$02, $01, $01, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $0F, $37, $00

	; Patch $09
	; $3B
	; $0F, $01, $06, $02,	$DF, $1F, $1F, $DF
	; $0C, $0A, $00, $03,	$0F, $00, $00, $01
	; $F3, $55, $05, $5C,	$22, $22, $20, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $01, $06, $02
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $00, $03
	spDecayRt	$0F, $00, $00, $01
	spSustainLv	$0F, $05, $00, $05
	spReleaseRt	$03, $05, $05, $0C
	spTotalLv	$22, $22, $20, $00

	; Patch $0A
	; $3C
	; $31, $50, $52, $30,	$52, $52, $53, $53
	; $08, $08, $00, $00,	$04, $04, $00, $00
	; $1F, $1F, $0F, $0F,	$1C, $14, $84, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $05, $05, $03
	spMultiple	$01, $00, $02, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$12, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $00, $00
	spDecayRt	$04, $04, $00, $00
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $14, $04, $00

	; Patch $0B
	; $3A
	; $69, $50, $70, $60,	$1C, $1A, $18, $18
	; $10, $02, $0C, $09,	$08, $06, $06, $03
	; $F9, $06, $56, $06,	$28, $14, $15, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$06, $05, $07, $06
	spMultiple	$09, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $1A, $18, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $02, $0C, $09
	spDecayRt	$08, $06, $06, $03
	spSustainLv	$0F, $00, $05, $00
	spReleaseRt	$09, $06, $06, $06
	spTotalLv	$28, $14, $15, $00

	; Patch $0C
	; $3D
	; $00, $02, $01, $01,	$4C, $50, $0F, $12
	; $0C, $00, $02, $05,	$01, $00, $00, $00
	; $28, $2A, $29, $19,	$1A, $06, $00, $00
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $01, $01
	spRateScale	$01, $01, $00, $00
	spAttackRt	$0C, $10, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $00, $02, $05
	spDecayRt	$01, $00, $00, $00
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$08, $0A, $09, $09
	spTotalLv	$1A, $06, $00, $00

	; Patch $0D
	; $2C
	; $71, $31, $71, $31,	$1F, $1F, $16, $16
	; $00, $00, $0F, $0F,	$00, $00, $0F, $0F
	; $00, $00, $FA, $FA,	$15, $14, $00, $00
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $16, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0F, $0F
	spDecayRt	$00, $00, $0F, $0F
	spSustainLv	$00, $00, $0F, $0F
	spReleaseRt	$00, $00, $0A, $0A
	spTotalLv	$15, $14, $00, $00

	; Patch $0E
	; $18
	; $37, $31, $32, $31,	$9E, $1C, $DC, $9C
	; $0D, $04, $06, $01,	$08, $03, $0A, $05
	; $B6, $36, $B6, $28,	$2C, $14, $22, $00
	spAlgorithm	$00
	spFeedback	$03
	spDetune	$03, $03, $03, $03
	spMultiple	$07, $01, $02, $01
	spRateScale	$02, $00, $03, $02
	spAttackRt	$1E, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $04, $06, $01
	spDecayRt	$08, $03, $0A, $05
	spSustainLv	$0B, $03, $0B, $02
	spReleaseRt	$06, $06, $06, $08
	spTotalLv	$2C, $14, $22, $00

	; Patch $0F
	; $3D
	; $01, $02, $02, $02,	$10, $50, $50, $50
	; $07, $08, $08, $08,	$01, $00, $00, $00
	; $24, $18, $18, $18,	$1C, $82, $82, $82
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $01, $01, $01
	spAttackRt	$10, $10, $10, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $08, $08, $08
	spDecayRt	$01, $00, $00, $00
	spSustainLv	$02, $01, $01, $01
	spReleaseRt	$04, $08, $08, $08
	spTotalLv	$1C, $02, $02, $02

	; Patch $10
	; $32
	; $71, $33, $0D, $01,	$5F, $5F, $99, $94
	; $05, $05, $05, $07,	$02, $02, $02, $02
	; $11, $11, $11, $72,	$23, $26, $2D, $80
	spAlgorithm	$02
	spFeedback	$06
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $03, $0D, $01
	spRateScale	$01, $01, $02, $02
	spAttackRt	$1F, $1F, $19, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $07
	spDecayRt	$02, $02, $02, $02
	spSustainLv	$01, $01, $01, $07
	spReleaseRt	$01, $01, $01, $02
	spTotalLv	$23, $26, $2D, $00

	; Patch $11
	; $3A
	; $32, $52, $01, $31,	$1F, $1F, $1F, $18
	; $01, $00, $1F, $00,	$00, $00, $0F, $00
	; $5A, $03, $0F, $1A,	$3B, $4F, $30, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $00, $03
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $00, $1F, $00
	spDecayRt	$00, $00, $0F, $00
	spSustainLv	$05, $00, $00, $01
	spReleaseRt	$0A, $03, $0F, $0A
	spTotalLv	$3B, $4F, $30, $00

	; Patch $12
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

	; Patch $13
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

	; Patch $14
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

	; Patch $15
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

	; Patch $16
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

	; Patch $17
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

	; Patch $18
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

	; Patch $19
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

	; Patch $1A
	; $3A
	; $61, $51, $08, $02,	$5D, $5D, $5D, $50
	; $04, $1F, $0F, $1F,	$00, $00, $00, $00
	; $1F, $0F, $5F, $0F,	$22, $22, $1E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$06, $05, $00, $00
	spMultiple	$01, $01, $08, $02
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1D, $1D, $1D, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $1F, $0F, $1F
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $00, $05, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $22, $1E, $00

	; Patch $1B
	; $02
	; $01, $02, $55, $04,	$92, $8E, $8D, $54
	; $0D, $00, $0C, $03,	$00, $00, $00, $00
	; $FF, $0F, $2F, $5F,	$16, $1D, $2A, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$00, $00, $05, $00
	spMultiple	$01, $02, $05, $04
	spRateScale	$02, $02, $02, $01
	spAttackRt	$12, $0E, $0D, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $00, $0C, $03
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$0F, $00, $02, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $1D, $2A, $00

	; Patch $1C
	; $02
	; $75, $73, $71, $31,	$1F, $96, $58, $9F
	; $01, $03, $1B, $08,	$01, $01, $04, $05
	; $FF, $3F, $2F, $2F,	$24, $30, $29, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$07, $07, $07, $03
	spMultiple	$05, $03, $01, $01
	spRateScale	$00, $02, $01, $02
	spAttackRt	$1F, $16, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $03, $1B, $08
	spDecayRt	$01, $01, $04, $05
	spSustainLv	$0F, $03, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $30, $29, $00

	; Patch $1D
	; $20
	; $66, $60, $65, $60,	$DF, $9F, $DF, $1F
	; $00, $09, $06, $0C,	$07, $06, $06, $08
	; $2F, $1F, $1F, $FF,	$1C, $16, $3A, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$06, $06, $06, $06
	spMultiple	$06, $00, $05, $00
	spRateScale	$03, $02, $03, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $09, $06, $0C
	spDecayRt	$07, $06, $06, $08
	spSustainLv	$02, $01, $01, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $16, $3A, $00

	; Patch $1E
	; $0D
	; $32, $06, $08, $01,	$1F, $19, $19, $19
	; $0A, $05, $05, $05,	$00, $02, $02, $02
	; $3F, $2F, $2F, $2F,	$28, $86, $80, $8D
	spAlgorithm	$05
	spFeedback	$01
	spDetune	$03, $00, $00, $00
	spMultiple	$02, $06, $08, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $05, $05
	spDecayRt	$00, $02, $02, $02
	spSustainLv	$03, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $06, $00, $0D

	; Patch $1F
	; $38
	; $3A, $11, $0A, $02,	$D4, $50, $14, $0E
	; $05, $02, $08, $88,	$00, $00, $00, $00
	; $99, $09, $09, $1A,	$2D, $19, $2C, $86
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$03, $01, $00, $00
	spMultiple	$0A, $01, $0A, $02
	spRateScale	$03, $01, $00, $00
	spAttackRt	$14, $10, $14, $0E
	spAmpMod	$00, $00, $00, $01
	spSustainRt	$05, $02, $08, $08
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$09, $00, $00, $01
	spReleaseRt	$09, $09, $09, $0A
	spTotalLv	$2D, $19, $2C, $06

	; Patch $20
	; $0D
	; $32, $02, $04, $01,	$1F, $19, $19, $19
	; $0A, $05, $05, $05,	$00, $02, $02, $02
	; $3F, $2F, $2F, $2F,	$28, $8B, $86, $93
	spAlgorithm	$05
	spFeedback	$01
	spDetune	$03, $00, $00, $00
	spMultiple	$02, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $05, $05
	spDecayRt	$00, $02, $02, $02
	spSustainLv	$03, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $0B, $06, $13

	; Patch $21
	; $3A
	; $20, $60, $23, $01,	$1E, $1F, $1F, $1F
	; $0A, $0B, $0A, $0A,	$05, $0A, $07, $08
	; $A4, $96, $85, $78,	$21, $28, $25, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $06, $02, $00
	spMultiple	$00, $00, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0B, $0A, $0A
	spDecayRt	$05, $0A, $07, $08
	spSustainLv	$0A, $09, $08, $07
	spReleaseRt	$04, $06, $05, $08
	spTotalLv	$21, $28, $25, $00

	; Patch $22
	; $3A
	; $32, $32, $56, $42,	$8D, $15, $4F, $52
	; $06, $07, $08, $04,	$02, $00, $00, $00
	; $18, $28, $18, $28,	$19, $2A, $20, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $05, $04
	spMultiple	$02, $02, $06, $02
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0D, $15, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $07, $08, $04
	spDecayRt	$02, $00, $00, $00
	spSustainLv	$01, $02, $01, $02
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$19, $2A, $20, $00

	; Patch $23
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

	; Patch $24
	; $20
	; $36, $30, $35, $31,	$DF, $9F, $DF, $9F
	; $07, $09, $06, $06,	$07, $06, $06, $08
	; $2F, $1F, $1F, $FF,	$19, $13, $37, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $09, $06, $06
	spDecayRt	$07, $06, $06, $08
	spSustainLv	$02, $01, $01, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $13, $37, $00

	; Patch $25
	; $3D
	; $01, $02, $02, $02,	$14, $8C, $0E, $0E
	; $08, $02, $05, $05,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1A, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$14, $0C, $0E, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $02, $05, $05
	spDecayRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $00, $00, $00

Credits_FM1:
	saTranspose	$F4
	saVol		$FE
	sCall		Credits_Call1
	saTranspose	$0C
	saVol		$02

Credits_Loop1:
	dc.b nRst, $30
	sLoop		$00, $08, Credits_Loop1
	sVoice		$03
	sCall		Credits_Call2
	dc.b nA3, $06, nA2
	sCall		Credits_Call2
	saVol		$FD

Credits_Loop2:
	sVoice		$00
	dc.b nFs4, $06, nA4
	sCall		Credits_Call3
	sLoop		$00, $02, Credits_Loop2
	dc.b nRst, $06, nRst, nRst, $30, nRst
	sVoice		$0B
	saTranspose	$18
	saVol		$02

Credits_Loop3:
	dc.b nG1, $0C, nD1, nF1, nD1, $06, nG1, $05
	dc.b nG1, $07, $06, nD1, $0C, nF1, nD1
	sLoop		$00, $05, Credits_Loop3
	dc.b nRst, $30, nRst
	sVoice		$0E
	saVol		$FF
	saTranspose	$E8
	sCall		Credits_Call4
	dc.b nRst, $12, nE1, nG1, $06, nRst, $18, nA1
	dc.b $12, nCs2, $06, nRst, nRst, $12, nD1, nFs1
	dc.b $08, nRst, $16, nA1, $06, nE1, nF1, nG1
	dc.b nA1
	sCall		Credits_Call4
	dc.b nRst, $12, nE2, nCs2, $08, nRst, $16, nA1
	dc.b $12, nE2, $08, nRst, $04
	sVoice		$12
	ssMod68k	$18, $01, $0A, $04
	dc.b nRst, $30, nRst
	sCall		Credits_Call5
	dc.b sHold, $24, sHold, nAb5, $01, sHold, nG5, sHold
	dc.b nFs5, sHold, nF5, sHold, nE5, sHold, nEb5, sHold
	dc.b nD5, sHold, nCs5, sHold, nC5, sHold, nB4, sHold
	dc.b nBb4, sHold, nA4, nRst, $60
	sVoice		$01
	saTranspose	$F4
	saVol		$FA
	sModOff
	sCall		Credits_Call6
	dc.b nC4, $03
	sCall		Credits_Call6
	dc.b nRst, $03, nRst, $60
	saVol		$04
	ssDetune	$01
	sVoice		$1B
	saVol		$06
	dc.b nE5, $0C
	sNoteTimeOut	$06
	dc.b nC5, $06, nA4, nC5, $0C, nRst, nRst
	sVoice		$1C
	saVol		$FA
	sNoteTimeOut	$00
	dc.b nB4, $0C, $12, $06
	sVoice		$1B
	saVol		$06
	sNoteTimeOut	$06
	dc.b nF5, $06, nF5, nRst, nF5, nRst, nF5
	sNoteTimeOut	$00
	dc.b nFs5, $0C, nG5, nRst
	sNoteTimeOut	$06
	dc.b nG5, $06, $06, nA5, nG5
	sNoteTimeOut	$00
	dc.b nE5, $0C
	sNoteTimeOut	$06
	dc.b nC5, $06, nA4, nC5, $0C, nRst, nRst
	sNoteTimeOut	$00
	sVoice		$1C
	saVol		$FA
	dc.b nE5, nG5, nE5
	sVoice		$1A
	saVol		$06
	sNoteTimeOut	$06
	dc.b nF5, $06, nF5, nRst, nF5, nRst, nF5
	sNoteTimeOut	$00
	dc.b nFs5, $0C, nG5, $06, nRst, nRst, $24, nRst
	dc.b $30, nRst
	sVoice		$1F
	saTranspose	$18
	saVol		$F7
	ssDetune	$00
	dc.b nRst, $06, nG3, nA3, nRst, nC4, nRst, nD4
	dc.b nRst, nEb4, nRst, nD4, nRst, nC4, nD4, nRst
	dc.b nC4
	saTranspose	$F4
	sVoice		$00
	dc.b nRst, $0C, nG3, $06, nA3, nC4, nRst, $12
	dc.b nG3, $06, nA3, nC4, nRst, nEb4, nC4, nRst
	dc.b nC4
	saTranspose	$0C
	sVoice		$1F
	dc.b nRst, $06, nG4, $12, nEb4, $06, nRst, nD4
	dc.b nRst, nEb4, nRst, nD4, nRst, nC4, nA3, nRst
	dc.b nC4
	saTranspose	$F4
	sVoice		$00
	dc.b nRst, $06, nBb3, $12, nA3, $06, nRst, $12
	dc.b nBb3, $06, nRst, nA3, nRst, nBb3, nC4, nRst
	dc.b nC4, nRst, $30, nRst
	sVoice		$21
	saTranspose	$0C
	dc.b nRst, $30, nRst, $08, nG2, $04, nF2, $0C
	dc.b nE2, nD2, nC2, $08, $04, nE1, $0C, nF1
	dc.b nFs1, nG1, nB1, nC2, nD2, nE2, nB1, nAb1
	dc.b nFs1, nE1, nB1, nE2, nE1, nA1, nB1, nC2
	dc.b nB1, nA1, nC2, nE2, nA1, nAb1, nBb1, nC2
	dc.b nBb1, nAb1, nA1, nBb1, nB1, nC2, nB1, nC2
	dc.b nD2, nE2, $08, $04, nB1, $0C, nE1, nAb1
	dc.b nA1, nB1, nC2, nE2, nF2, $08, nA1, $10
	dc.b nBb1, $0C, nB1
	sCall		Credits_Call7
	dc.b nF2
	saVol		$04
	sCall		Credits_Call7
	dc.b nF2
	saVol		$FC
	sCall		Credits_Call7
	dc.b nF2, $08, nC2, $04
	sVoice		$23
	saTranspose	$E8
	saVol		$07
	dc.b nRst, $60
	sCall		Credits_Call8
	dc.b nRst, $60
	saVol		$FB
	dc.b nRst, $0C, nE6, $06, nRst, nB6, nE6, $06
	dc.b nRst, $0C, nE6, $06, nRst, nB6, nE6, $06
	dc.b nRst, $18
	saVol		$05
	dc.b nRst, $0C, nA3, nRst, nA3, nRst, $24
	ssDetune	$02
	saVol		$08
	dc.b nA2, $6C
	sStop

Credits_Call2:
	dc.b nC3, $0C, nC4, $06, nRst, nC4, $0C, nG3
	dc.b nD4, $12, nC4, $0C, nG3, $06, nA3, nC4
	dc.b nD3, $0C, nD4, $06, nRst, nD4, $0C, nA3
	dc.b nE4, $12, nD4, $06, nRst, nA3, nB3, nD4
	dc.b nBb2, $0C, nBb3, $06, nRst, nBb3, $0C, nF3
	dc.b nC4, $12, nBb3, $0C, nF3, $06, nG3, nBb3
	dc.b nA2, $0C, nA3, $06, nA2, nB2, $0C, nB3
	dc.b $06, nB2, nC3, $0C, nC4, $06, nC3, nA2
	dc.b $0C
	sRet

Credits_Call3:
	dc.b nCs5, $0C, nB4, $06, nA4, nB4, nA4, $04
	dc.b sHold, $08, nA4, $04, nRst, $0E
	sVoice		$07
	dc.b nFs4, $06, nCs4, nE4, nFs4
	sVoice		$00
	dc.b nFs4, nA4, nCs5, $0C, nB4, $06, nA4, nB4
	dc.b nA4, $0C, nB4, $04, nRst, $08, nA4, $04
	dc.b nRst, $08, nB4, $04, nRst, $08, nCs5, $12
	dc.b nA4, $06, nFs4, nRst, nFs4, nRst, $24
	sVoice		$07
	dc.b nFs4, $06, nCs4, nE4, nFs4, nRst, $0C, nRst
	dc.b $30, nCs5, $06, nCs5, nA4, $04, nRst, $08
	dc.b nB4, $06, nCs5
	sRet

Credits_Call5:
	dc.b nFs5, $01, sHold, nG5, sHold, nAb5, sHold, nA5
	dc.b $2D
	saTranspose	$02
	dc.b nFs5, $01, sHold, nG5, sHold, nAb5, sHold, nA5
	dc.b $2D
	saTranspose	$01
	dc.b nFs5, $01, sHold, nG5, sHold, nAb5, sHold, nA5
	dc.b $2D
	saTranspose	$FC
	dc.b nFs5, $01, sHold, nG5, sHold, nAb5, sHold, nA5
	dc.b $2D
	saTranspose	$01
	dc.b nFs5, $01, sHold, nG5, sHold, nAb5, sHold, nA5
	dc.b $2D, sHold, $30, sHold, $30
	sRet

Credits_Call6:
	dc.b nD3, $0C, nD4, $06, nRst, nC4, nRst, nD4
	dc.b $0C, nD3, $03, nRst, $06, nD3, $03, nD4
	dc.b $0C, nC4, nD4, $09, nA3, $03, nG3, $06
	dc.b nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C
	dc.b nBb3, $06, nRst, $27
	sRet

Credits_Call8:
	dc.b nRst, $0C, nCs6, $15, nRst, $03, nCs6, $06
	dc.b nRst, nD6, $0F, nRst, $03, nB5, $18, nRst
	dc.b $06, nCs6, nRst, nCs6, nRst, nCs6, nRst, nA5
	dc.b nRst, nG5, $0F, nRst, $03, nB5, $18, nRst
	dc.b $06
	sLoop		$00, $02, Credits_Call8
	sRet

Credits_Call4:
	dc.b nRst, $12, nG1, nBb1, $06, nRst, $18, nC2
	dc.b $12, nG1, $06, nRst, nRst, $12, nF1, nA1
	dc.b $06, nRst, $18, nBb1, $12, nF1, $06, nRst
	sRet

Credits_Call7:
	dc.b nRst, nC2, nRst, nC2, nRst, nF2, nRst
	sRet

Credits_Call1:
	sVoice		$07
	dc.b nRst, $54, nBb5, $04, nB5, nC6, nCs6, $24
	dc.b nE6, nA6, $18, nG6, $24, nFs6, nD6, $18
	dc.b nD6, $0C, nCs6, nRst, nE6, $60, sHold, $3C
	dc.b nCs6, $24, nE6, nA6, $18, nB6, $24, nG6
	dc.b nB6, $18, nB6, $24, nCs7, $60, sHold, $3C
	sRet

Credits_FM2:
	dc.b nRst, $60
	sVoice		$01
	sNoteTimeOut	$06
	sCall		Credits_Call9
	sCall		Credits_Call9

Credits_Loop4:
	dc.b nE0, $0C
	sLoop		$00, $0C, Credits_Loop4
	dc.b nA0, nFs0, nG0, nAb0
	sCall		Credits_Call9

Credits_Loop5:
	dc.b nG0
	sLoop		$00, $0B, Credits_Loop5

Credits_Loop6:
	dc.b nA0
	sLoop		$00, $0A, Credits_Loop6
	sNoteTimeOut	$00
	saVol		$FC
	dc.b nA0, nBb0, nB0
	saVol		$04
	sNoteTimeOut	$09

Credits_Loop7:
	dc.b nC1, $0C
	sLoop		$00, $0C, Credits_Loop7
	sNoteTimeOut	$00
	dc.b nC1, nA0, nBb0, nB0
	sNoteTimeOut	$09

Credits_Loop8:
	dc.b nC1, $0C
	sLoop		$00, $0C, Credits_Loop8
	dc.b nC1, $06, nC2
	sNoteTimeOut	$00
	dc.b nA0, $0C, nBb0, nB0
	saTranspose	$E8
	saVol		$0C
	sVoice		$04

Credits_Loop9:
	sCall		Credits_Call10
	sLoop		$00, $02, Credits_Loop9
	saVol		$F9
	sVoice		$08

Credits_Loop13:
	sCall		Credits_Call11

Credits_Loop10:
	dc.b nFs2, $04, nRst, $08, nFs2, $0C
	sLoop		$00, $02, Credits_Loop10
	dc.b $06, nEb2, $12, nE2, $0C, nF2
	sCall		Credits_Call11

Credits_Loop11:
	dc.b nE2, $04, nRst, $08, nE2, $0C
	sLoop		$00, $02, Credits_Loop11

Credits_Loop12:
	dc.b nEb2, $04, nRst, $08, nEb2, $0C
	sLoop		$00, $02, Credits_Loop12
	sLoop		$01, $02, Credits_Loop13
	dc.b nRst, $60, nRst, $48
	sVoice		$0C
	saVol		$13
	sCall		Credits_Call12
	dc.b $24, nRst, $60
	sVoice		$0F
	saVol		$F3
	ssMod68k	$04, $02, $03, $02
	sCall		Credits_Call13
	dc.b nG5, $18, nFs5, $30, sHold, $18, nRst, $0C
	sCall		Credits_Call13
	dc.b nCs5
	sVoice		$13
	saVol		$F5
	sModOff
	dc.b nRst, $60

Credits_Loop14:
	sCall		Credits_Call14
	dc.b nEb3, $0C, nE3, $08, nAb2, $10
	sCall		Credits_Call14
	dc.b nEb3, $08, nE3, $04, nRst, $18
	sLoop		$00, $02, Credits_Loop14
	dc.b nRst, $60
	sVoice		$17
	ssDetune	$02
	saTranspose	$F4
	saVol		$0A
	sCall		Credits_Call15
	dc.b nF6, $15, nE6, $03, nD6, $06, nRst, nC6
	dc.b $0C, nE6, $06, nRst, nC6, $0C, nD6, $06
	dc.b nRst, $12, nRst, $60
	sVoice		$1B
	ssDetune	$00
	sNoteTimeOut	$06
	dc.b nRst, $3C, nG4, $06, $06, nA4, nC5, nC5
	dc.b nA4
	sVoice		$1D
	saVol		$FA
	sNoteTimeOut	$00
	sCall		Credits_Call16
	dc.b nRst
	sCall		Credits_Call17
	sCall		Credits_Call16
	sVoice		$1C
	dc.b nC5
	sVoice		$1D
	sCall		Credits_Call17
	dc.b nRst, $30, nRst
	sVoice		$01
	saTranspose	$18
	saVol		$F9

Credits_Loop15:
	dc.b nC2, $0C, nC3, $06, nRst, nA1, $0C, nA2
	dc.b $06, nRst, nBb1, $0C, nBb2, $06, nRst, nB1
	dc.b $0C, nEb3, $06, nD3, nC2, $06, nC2, $12
	dc.b nA1, $0C, nA2, $06, nRst, nBb1, $0C, nBb2
	dc.b $06, nRst, nB1, $0C, nB2, $06, nRst
	sLoop		$00, $02, Credits_Loop15
	dc.b nRst, $60
	sVoice		$22
	saTranspose	$E8
	saVol		$03
	ssMod68k	$1C, $01, $06, $04
	dc.b nRst, $50, nG3, $04, nA3, $08, nC4, $04
	dc.b nE4, $30, nRst, $0C, nE4, $08, nRst, $04
	dc.b nF4, $08, nE4, $10, nAb4, $08, $04, nRst
	dc.b $08, nE4, $34, nRst, $0C, nE4, nA4, $08
	dc.b $04, nRst, $08, nE4, $04, nC4, $24, nRst
	dc.b $0C, nC4, $08, nRst, $04, nD4, $08, nC4
	dc.b $04, nEb4, $0C, nD4, $08, nC4, $4C, nRst
	dc.b $0C, nE4, $08, nRst, $04, nF4, $08, nRst
	dc.b $04, nE4, $08, nRst, $04, nAb4, $08, $04
	dc.b nRst, $08, nE4, $1C, nRst, $0C, nA4, $18
	dc.b nB4, $08, nA4, $04, nC5, $18, nRst, $0C
	dc.b nA4, $04, nRst, $08, nG4, $18, nE4, nC4
	dc.b nD4, $0C
	saVol		$04
	sCall		Credits_Call18
	dc.b nD4, $0C
	saVol		$FC
	sCall		Credits_Call18
	dc.b nD4, $14, nC4, $04
	saVol		$FF
	sVoice		$24
	sModOff
	dc.b nRst, $60

Credits_Loop16:
	sCall		Credits_Call19
	dc.b nG3, $12, nFs3, $0C, nG3, $06, nFs3, $0C
	sCall		Credits_Call19
	dc.b nD4, $12, nCs4, $0C, nD4, $06, nCs4, $0C
	sLoop		$00, $02, Credits_Loop16
	dc.b nG3, $06, nRst, nE3, nRst, nF3, nRst, nFs3
	dc.b nRst, nG3, nG3, nE3, nRst, nF3, nRst, nG3
	dc.b nRst, nE3, nRst, nE3, nRst, nAb3, nRst, nAb3
	dc.b nRst, nB3, nRst, nB3, nRst, nD4, nRst, nD4
	dc.b nRst, nRst, $0C, nA2, $12, nRst, $06, nA2
	dc.b $12, nAb3, nA3, $06, nRst
	saVol		$FD
	dc.b nA2, $6C
	sStop

Credits_Call10:
	dc.b nRst, $0C, nG5, $06, nRst, nA5, nRst, nG5
	dc.b nRst, nC6, nRst, nC6, nRst, nD6, nE6, nRst
	dc.b $0C, nRst, nD6, $18, nA5, $06, nRst, nC6
	dc.b nC6, nRst, nD6, $0C, nRst, $12, nRst, $1E
	dc.b nBb5, $06, nC6, nBb5, nD6, nRst, nC6, nRst
	dc.b nBb5, nC6, nRst, nA5, sHold, nA5, $30, sHold
	dc.b $18, nRst, $18
	sRet

Credits_Call11:
	dc.b nFs2, $04, nRst, $08, nFs2, $0C
	sLoop		$00, $03, Credits_Call11
	dc.b $06, nFs3, nFs2, $0C
	sRet

Credits_Call12:
	dc.b nG4, $08, nA4, nB4, nF4, $30, sHold, $30
	dc.b sHold, nF4, nRst, $18, nG4, $08, nA4, nB4
	dc.b nF4, $30, sHold, $30, sHold, $30, sHold
	sRet

Credits_Call13:
	dc.b nD5, $06, nC5, nD5, $12, nF5, nD5, $0C
	dc.b nE5, nRst, $06, $12, nG5, $0C, nF5, $06
	dc.b nRst, nC6, nA5, $3C, nRst, $06, $0C, nBb5
	dc.b $12, nA5, nG5, $06, nF5, nE5, $18
	sRet

Credits_Call15:
	dc.b nF6, $15, nE6, $03, nD6, $06, nRst, nC6
	dc.b $0C, nE6, $06, nRst, nC6, $0C, nD6, $06
	dc.b nRst, $12, nRst, $60
	sRet

Credits_Call14:
	dc.b nA2, $0C, nA3, nG3, $08, nA3, $04, nG3
	dc.b $08, nE3, $04, nD3, $08, $04
	sRet

Credits_Call16:
	dc.b nRst, $0C, nC4, nA3, $06, $06, nG3, $0C
	dc.b nRst, nB3, nA3, $06, $06, nG3, $0C
	sRet

Credits_Call17:
	dc.b nA3, nG3, $06, $06, nF3, $0C, nRst, nG3
	dc.b $0C, $06, $06, nA3, nG3
	sRet

Credits_Call18:
	dc.b nA4, $04, nRst, $08, nG4, $18, nE4, nC4
	sRet

Credits_Call19:
	dc.b nA3, $06, nRst, nA3, nRst, nE3, nRst, nE3
	dc.b nRst
	sRet

Credits_Call9:
	dc.b nA0, $0C
	sLoop		$00, $08, Credits_Call9
	sRet

Credits_FM3:
	dc.b nRst, $60
	sCall		Credits_Call20
	saTranspose	$18
	sVoice		$02
	sCall		Credits_Call21
	dc.b nG4, $3C
	sCall		Credits_Call21
	dc.b nC5, $3C
	saTranspose	$E8
	saVol		$02
	ssDetune	$03
	sVoice		$04
	sPan		spLeft

Credits_Loop17:
	sCall		Credits_Call10
	sLoop		$00, $02, Credits_Loop17
	sVoice		$09
	saTranspose	$0C
	saVol		$FD
	sPan		spRight
	ssMod68k	$06, $01, $05, $04
	ssDetune	$00

Credits_Loop18:
	dc.b nFs2, $0C, nFs3, $06, nRst, nE3, nRst, nFs3
	dc.b nFs2, nRst, nFs2, nFs3, nRst, nE3, nRst, nFs3
	dc.b $0C
	sLoop		$00, $03, Credits_Loop18
	dc.b nE2, $0C, nE3, $06, nRst, nEb3, nRst, nE3
	dc.b nEb2, nRst, nEb2, nEb3, nRst, nCs3, nRst, nEb3
	dc.b $0C
	sLoop		$01, $02, Credits_Loop18
	dc.b nRst, $60
	sVoice		$0D
	saVol		$FB
	sPan		spCenter
	sModOff
	dc.b nRst, $60

Credits_Loop19:
	sCall		Credits_Call22
	sLoop		$00, $02, Credits_Loop19
	dc.b nRst, $60
	sVoice		$0F
	sPan		spLeft
	saVol		$0B
	sCall		Credits_Call13
	dc.b nG5, $18, nFs5, $48, nRst, $0C
	sCall		Credits_Call13
	dc.b nCs5, $0C
	ssMod68k	$18, $01, $03, $04
	saVol		$F3
	sPan		spCenter
	sVoice		$14
	dc.b nA2, $14, nB2, $04, nC3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nG3, $08, nE3, $10

Credits_Loop20:
	dc.b nRst, $30
	sLoop		$00, $0A, Credits_Loop20
	sVoice		$18
	saTranspose	$F4
	saVol		$08
	sModOff
	sPan		spRight
	dc.b nRst, $60, nRst, $30, nA5, $06, nRst, nF5
	dc.b $0C, nG5, $09, nF5, $03, nD5, $0C, nRst
	dc.b $60, nRst, $3C, nRst, $60
	sVoice		$1B
	saVol		$FB
	sPan		spCenter
	sNoteTimeOut	$06
	dc.b nG5, $06, $06, nA5, nC6, nC6, nA5
	sNoteTimeOut	$00
	dc.b nE6, $0C
	sNoteTimeOut	$06
	dc.b nC6, $06, nA5, nC6, $0C, nRst, nRst, $12
	sVoice		$1C
	sNoteTimeOut	$00
	dc.b nC5, nA4, $0C
	sNoteTimeOut	$06
	sVoice		$1B
	dc.b nF6, $06, nF6, nRst, nF6, nRst, nF6
	sNoteTimeOut	$00
	dc.b nFs6, $0C, nG6, nRst
	sNoteTimeOut	$06
	dc.b nG6, $06, $06, nA6, nG6
	sNoteTimeOut	$00
	dc.b nE6, $0C
	sNoteTimeOut	$06
	dc.b nC6, $06, nA5, nC6, $0C
	sNoteTimeOut	$00
	sVoice		$1C
	dc.b nRst, $1E, nF5, $0C, nF5, nC5, $06, nRst
	dc.b $60, nRst, $60
	sVoice		$00
	saTranspose	$18
	dc.b nRst, $60, nRst, $0C, nG3, $06, nA3, nC4
	dc.b nRst, $12, nG3, $06, nA3, nC4, nRst, nEb4
	dc.b nC4, nRst, nC4, nRst, $60, nRst, $06, nBb3
	dc.b $12, nA3, $06, nRst, $12, nBb3, $06, nRst
	dc.b nA3, nRst, nBb3, nC4, nRst, nC4, nRst, $60
	sVoice		$22
	saTranspose	$DC
	saVol		$FF
	sPan		spLeft
	dc.b nRst, $60
	sCall		Credits_Call23
	dc.b nE6, $30, nD6, $18, nE6, $0C, nD6, nC6
	dc.b $30, nF6
	sCall		Credits_Call24
	saVol		$04
	sCall		Credits_Call24
	saVol		$FC
	dc.b nRst, nG5, nRst, nG5, nRst, nA5, $18, $08
	dc.b nG5, $04
	saTranspose	$0C
	saVol		$FF
	sPan		spCenter
	sVoice		$00
	dc.b nRst, $60

Credits_Loop22:
	sCall		Credits_Call25
	dc.b nD6, $12, nD6, $1E
	sCall		Credits_Call25
	dc.b nG6, $12, nG6, $1E
	sLoop		$00, $02, Credits_Loop22
	dc.b nRst, $0C, nD6, $12, nRst, $06, nD6, nRst
	dc.b nCs6, $12, nD6, nCs6, $0C, nAb5, $18, nB5
	dc.b nD6, nAb6, nRst, $0C, nE6, nRst, nE6, $12
	dc.b nEb6, nE6, $06, nRst
	saVol		$F8
	sVoice		$01
	ssDetune	$03
	dc.b nA2, $6C
	sStop

Credits_Call22:
	dc.b nRst, $60, nB4, $06, nC5, nB4, nG4, nA4
	dc.b nF4, $0C, nG4, nD4, nD4, $06, nF4, $0C
	dc.b nG4
	sRet

Credits_Call23:
	dc.b nRst, $0C, nE6, $04, nRst, $10, nE6, $04
	dc.b nRst, $0C, nE6, $0C, nF6, $08, nE6, $04
	dc.b nRst, $18, nRst, $0C, nD6, $04, nRst, $10
	dc.b nD6, $04, nRst, $0C, nD6, $0C, nE6, $08
	dc.b nD6, $04, nRst, $18

Credits_Loop21:
	dc.b nRst, $0C, nC6, $04, nRst, $10, nC6, $04
	dc.b nRst, $0C, nC6, $0C, nD6, $08, nC6, $04
	dc.b nRst, $18
	sLoop		$00, $02, Credits_Loop21
	sRet

Credits_Call21:
	dc.b nRst, $18, nG4, $0B, nRst, $0D, nA4, $0C
	dc.b $0B, nRst, $19, nC5, $0C, $0B, nRst, $0D
	sRet

Credits_Call24:
	dc.b nRst, $0C, nG5, nRst, nG5, nRst, nA5, nRst
	dc.b nA5
	sRet

Credits_Call25:
	dc.b nE6, $06, nRst, nE6, nRst, nCs6, nRst, nCs6
	dc.b nRst
	sRet

Credits_Call20:
	sVoice		$05
	saTranspose	$F4
	dc.b nA5, $60, nD6, nE6, sHold, nE6, nA5, $60
	dc.b nG6, nG6, $24, nA6, $60, sHold, $3C
	sRet

Credits_FM4:
	dc.b nRst, $60
	saTranspose	$FB
	saVol		$FE
	sCall		Credits_Call20
	saTranspose	$1D
	saVol		$02
	sVoice		$02
	sCall		Credits_Call26
	dc.b nE4, $3C
	sCall		Credits_Call26
	dc.b nG4, $3C
	saVol		$06
	sVoice		$05
	ssMod68k	$02, $01, $FE, $04

Credits_Loop23:
	dc.b nE5, $30, sHold, $30, nFs5, sHold, $30, nD5
	dc.b sHold, $30, nC5, sHold, $30
	sLoop		$00, $02, Credits_Loop23
	sVoice		$0A
	saTranspose	$F4
	saVol		$F7
	ssMod68k	$0C, $01, $FB, $04

Credits_Loop24:
	sCall		Credits_Call27
	dc.b nRst, $25, nFs5, $06, nFs5, nRst, $0C, nFs5
	dc.b $06, nFs5, $05, nRst, $0D, nFs5, $06, nAb5
	dc.b $30, sHold, $06
	sCall		Credits_Call27
	dc.b nRst, $31, nRst, $60
	sLoop		$00, $02, Credits_Loop24
	dc.b nRst, $60, nRst, $48
	sVoice		$0C
	saVol		$05
	sModOff
	ssDetune	$02
	sPan		spLeft
	sCall		Credits_Call12
	dc.b $24, nRst, $0C, nRst, $60
	sVoice		$10
	saVol		$F7
	ssDetune	$00
	sPan		spRight
	sCall		Credits_Call28
	dc.b nD4, nFs4, $06, nA3, $0C, nC4, nD4, nFs4
	dc.b $06, nRst, nFs4, nA3, $0C, nC4
	sCall		Credits_Call28
	sVoice		$15
	saVol		$01
	sCall		Credits_Call29

Credits_Loop25:
	sVoice		$14
	dc.b nRst, $4E
	sPan		spRight
	dc.b nAb2, $12, nA2, $06
	sPan		spCenter
	sVoice		$16
	dc.b nRst, $30, nRst, $06, nA4, $08, nAb4, $04
	dc.b nG4, $08, nFs4, $04, nF4, $08, nE4, $04
	sLoop		$00, $02, Credits_Loop25
	dc.b nRst, $60
	sVoice		$17
	saTranspose	$F4
	saVol		$02
	sPan		spCenter
	ssMod68k	$01, $01, $03, $03

Credits_Loop26:
	sCall		Credits_Call15
	sLoop		$00, $02, Credits_Loop26
	dc.b nRst, $60
	sVoice		$1E
	sPan		spRight
	saVol		$FE
	saTranspose	$F4
	sModOff
	sNoteTimeOut	$06
	dc.b nRst, $0C, nE5, $06, $12, $18, nG5, $06
	dc.b $12, $0C
	sVoice		$1C
	sPan		spCenter
	saVol		$FA
	sNoteTimeOut	$00
	dc.b nA5
	sNoteTimeOut	$06
	saVol		$06
	sVoice		$1E
	sPan		spRight
	dc.b nF5, $06, $12, $18, nG5, $06, $12, $18
	dc.b nE5, $06, $12, $18, nG5, $06, $12, $0C
	sVoice		$1A
	sPan		spCenter
	saTranspose	$0C
	dc.b nA5, $06, nA5, nRst, nA5, nRst, nA5
	sNoteTimeOut	$00
	dc.b nBb5, $0C, nB5, $06
	sVoice		$1E
	sPan		spRight
	saTranspose	$F4
	sNoteTimeOut	$06
	dc.b nRst, nG5, $06, $12, $0C, nRst, $60
	sVoice		$20
	saTranspose	$18
	saVol		$FA
	sPan		spCenter
	sNoteTimeOut	$00
	dc.b nEb4, $03, sHold, nF4, $5D, nD4, $03, sHold
	dc.b nE4, $5D, nC4, $03, sHold, nD4, $5D, nD4
	dc.b $03, sHold, nE4, $5D, nRst, $60
	sVoice		$22
	sPan		spRight
	saTranspose	$E8
	saVol		$04
	dc.b nRst, $30, nRst
	sCall		Credits_Call30
	dc.b nC6, $30, nB5, $18, nC6, $0C, nB5, nA5
	dc.b $30, nC6, nRst, $0C, nE5, nRst, nE5, nRst
	dc.b nF5, nRst, nF5
	saVol		$04
	dc.b nRst, nE5, nRst, nE5, nRst, nF5, nRst, nF5
	saVol		$FC
	dc.b nRst, nE5, nRst, nE5, nRst, nF5, $18, $08
	dc.b nE5, $04
	saTranspose	$0C
	saVol		$FF
	sPan		spCenter
	sVoice		$00
	dc.b nRst, $60

Credits_Loop27:
	sCall		Credits_Call31
	dc.b nB5, $12, nB5, $1E
	sCall		Credits_Call31
	dc.b nD6, $12, nD6, $1E
	sLoop		$00, $02, Credits_Loop27
	ssDetune	$03
	saVol		$08
	sCall		Credits_Call32
	saVol		$F0
	sVoice		$01
	ssMod68k	$00, $01, $06, $04
	dc.b nA2, $6C
	sStop

Credits_Call29:
	dc.b nA2, $14, nB2, $04, nC3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nG3, $08, nE3, $10
	sRet

Credits_Call30:
	dc.b nRst, $0C, nC6, $04, nRst, $10, nC6, $04
	dc.b nRst, $0C, nC6, $0C, nD6, $08, nC6, $04
	dc.b nRst, $18, nRst, $0C, nB5, $04, nRst, $10
	dc.b nB5, $04, nRst, $0C, nB5, $0C, nC6, $08
	dc.b nB5, $04, nRst, $18, nRst, $0C, nA5, $04
	dc.b nRst, $10, nA5, $04, nRst, $0C, nA5, $0C
	dc.b nB5, $08, nA5, $04, nRst, $18, nRst, $0C
	dc.b nAb5, $04, nRst, $10, nAb5, $04, nRst, $0C
	dc.b nAb5, $0C, nBb5, $08, nAb5, $04, nRst, $18
	sRet

Credits_Call32:
	sVoice		$25
	dc.b nRst, $0C, nG6, nB6, nD7, nFs7, $0C, nRst
	dc.b $06, nFs7, $0C, nG7, $06, nFs7, $0C, nAb7
	dc.b $60, nA7, $0C, nRst, nA7, nRst, nRst, $06
	dc.b nAb7, $12, nA7, $0C
	sRet

Credits_Call26:
	dc.b nRst, $18, nE4, $0B, nRst, $0D, nFs4, $0C
	dc.b $0B, nRst, $19, nA4, $0C, $0B, nRst, $0D
	sRet

Credits_Call27:
	dc.b nFs5, $05, nRst, $13, nFs5, $12, nFs5, $05
	sRet

Credits_Call31:
	dc.b nCs6, $06, nRst, nCs6, nRst, nA5, nRst, nA5
	dc.b nRst
	sRet

Credits_Call28:
	dc.b nBb3, $0C, nD4, $06, nF4, $0C, nBb3, nC4
	dc.b $06, nRst, nC4, $0C, nE4, $06, nG4, $0C
	dc.b nC4, $06, nRst, nF4, $0C, nA4, $06, nC4
	dc.b $0C, nE4, nF4, nA4, $06, nRst, nA4, nBb3
	dc.b $0C, nD4, nE4, nG4, $06, nCs4, $0C, nD4
	dc.b nE4, nG4, $06, nRst, nG4, nCs4, $0C, nE4
	sRet

Credits_FM5:
	saTranspose	$E8
	saVol		$F8
	ssDetune	$05
	sCall		Credits_Call1
	saTranspose	$18
	saVol		$08
	ssDetune	$00
	sVoice		$02
	ssMod68k	$0C, $01, $FC, $04
	sCall		Credits_Call33
	dc.b nC4, $3C
	sCall		Credits_Call33
	dc.b nE4, $3C
	saTranspose	$F4
	saVol		$07
	ssMod68k	$30, $01, $04, $04
	sVoice		$06

Credits_Loop28:
	dc.b nG5, $30, sHold, $30, nA5, sHold, $30, nF5
	dc.b sHold, $30, nE5, sHold, $30
	sLoop		$00, $02, Credits_Loop28
	sVoice		$0A
	saVol		$F6
	ssMod68k	$0C, $01, $05, $04
	sPan		spLeft

Credits_Loop29:
	sCall		Credits_Call34
	dc.b nRst, $25, nA5, $06, nA5, nRst, $0C, nA5
	dc.b $06, nA5, $05, nRst, $0D, nA5, $06, nB5
	dc.b $30, sHold, $06
	sCall		Credits_Call34
	dc.b nRst, $31, nRst, $60
	sLoop		$00, $02, Credits_Loop29
	dc.b nRst, $60, nRst, $48
	saVol		$05
	sModOff
	dc.b nRst, $01
	sVoice		$0C
	ssDetune	$FE
	sPan		spRight
	sCall		Credits_Call12
	dc.b $23, nRst, $0C, nRst, $60
	sVoice		$11
	saTranspose	$F4
	saVol		$F4
	ssDetune	$00
	sPan		spCenter
	ssMod68k	$06, $01, $06, $05
	dc.b nRst, $60, nRst, $30, nF5, $06, nF5, nC6
	dc.b nA5, $1E, nRst, $60, nRst, $06, nD6, nRst
	dc.b nD6, nC6, nRst, nC6, nRst, nBb5, nRst, nBb5
	dc.b nRst, nA5, $03, nRst, nA5, nRst, $09, nRst
	dc.b $06, nRst, $60, nRst, $30, nF5, $06, nF5
	dc.b nC6, nA5, $1E, nRst, $60
	sVoice		$16
	saTranspose	$0C
	saVol		$04
	sModOff
	sPan		spLeft
	dc.b nRst, $01
	sCall		Credits_Call29
	dc.b nRst, $2F
	sCall		Credits_Call35
	dc.b nRst, $30
	sCall		Credits_Call35
	dc.b nRst, $60
	sVoice		$19
	saTranspose	$F4
	sPan		spCenter
	sCall		Credits_Call36
	dc.b nRst, $27, nC4, $03
	sCall		Credits_Call36
	dc.b nRst, $2A, nRst, $60
	sVoice		$1E
	saTranspose	$F4
	sNoteTimeOut	$06

Credits_Loop30:
	dc.b nRst, $0C, nG5, $06, $12, $18, nB5, $06
	dc.b $12, $0C, nRst, nA5, $06, $12, $18, nB5
	dc.b $06, $12, $0C
	sLoop		$00, $02, Credits_Loop30
	dc.b nRst, $60
	sVoice		$20
	sNoteTimeOut	$00
	saTranspose	$18
	saVol		$FA
	dc.b nG4, $03, sHold, nA4, $5D, nF4, $03, sHold
	dc.b nG4, $5D, nEb4, $03, sHold, nF4, $5D, nF4
	dc.b $03, sHold, nG4, $5D, nRst, $60
	sVoice		$22
	saTranspose	$F4
	saVol		$05
	ssMod68k	$1C, $01, $06, $04
	dc.b nRst, $50, nD3, $04, nE3, $08, nG3, $04
	dc.b nC4, $30, nRst, $0C, nC4, $08, nRst, $04
	dc.b nD4, $08, nC4, $10, nE4, $08, nE4, $04
	dc.b nRst, $08, nB3, $34, nRst, $0C, nB3, nE4
	dc.b $08, $04, nRst, $08, nC4, $04, nA3, $24
	dc.b nRst, $0C, nA3, $08, nRst, $04, nB3, $08
	dc.b nA3, $04, nC4, $0C, nBb3, $08, nAb3, $4C
	dc.b nRst, $0C, nC4, $08, nRst, $04, nD4, $08
	dc.b nRst, $04, nC4, $08, nRst, $04, nE4, $08
	dc.b nE4, $04, nRst, $08, nB3, $1C, nRst, $0C
	dc.b nE4, $18, nG4, $08, nE4, $04, nA4, $18
	dc.b nRst, $0C, nF4, $04, nRst, $08, nE4, $18
	dc.b nC4, nA3, nB3, $0C
	saVol		$04
	dc.b nF4, $04, nRst, $08, nE4, $18, nC4, nA3
	dc.b nB3, $0C
	saVol		$F8
	dc.b nF4, $04, nRst, $08, nE4, $18, nC4, nA3
	dc.b nF3, $14, nE3, $04
	saVol		$0C
	sVoice		$23
	ssDetune	$03
	saVol		$F7
	dc.b nRst, $60
	sCall		Credits_Call8
	saVol		$09
	ssMod68k	$00, $01, $06, $04
	sCall		Credits_Call32
	sStop

Credits_Call35:
	dc.b nRst, $1E
	sVoice		$14
	dc.b nB2, $12, nC3, $06
	sVoice		$16
	dc.b nRst, $30, nRst, $06, nC5, $08, nB4, $04
	dc.b nBb4, $08, nA4, $04, nAb4, $08, nG4, $04
	sRet

Credits_Call33:
	dc.b nRst, $18, nC4, $0B, nRst, $0D, nD4, $0C
	dc.b $0B, nRst, $19, nF4, $0C, $0B, nRst, $0D
	sRet

Credits_Call34:
	dc.b nA5, $05, nRst, $13, nA5, $12, nA5, $05
	sRet

Credits_Call36:
	dc.b nRst, $60, nG3, $06, nRst, nG3, $0C, nA3
	dc.b $06, nRst, nA3, $0C, nBb3, $06
	sRet

Credits_PSG1:
	dc.b nRst, $60
	sLoop		$00, $0D, Credits_PSG1

Credits_Loop31:
	dc.b nG5, $60, nA5, nF5, nE5
	sLoop		$00, $02, Credits_Loop31

Credits_Loop32:
	dc.b nRst, $60
	sLoop		$00, $0F, Credits_Loop32
	saTranspose	$F4
	saVol		-$10
	sVolEnv		v01
	sCall		Credits_Call37
	dc.b nA3, nD4, $06, nG3, $0C, nA3, nA3, nD4
	dc.b $06, nRst, nD4, nFs3, $0C, nA3
	sCall		Credits_Call37
	sVolEnv		v0B
	dc.b nRst, $04, nRst, $60
	sCall		Credits_Call5
	dc.b sHold, $20, sHold, nAb5, $01, sHold, nG5, sHold
	dc.b nFs5, sHold, nF5, sHold, nE5, sHold, nEb5, sHold
	dc.b nD5, sHold, nCs5, sHold, nC5, sHold, nB4, sHold
	dc.b nBb4, sHold, nA4, nRst, $60
	sVolEnv		v00
	sNoteTimeOut	$06
	saTranspose	$F4
	sCall		Credits_Call38
	dc.b nF5, nRst, nF5
	sCall		Credits_Call38
	dc.b nF5, $04, nRst, nF5, nRst, $0C, nF5, nRst
	dc.b $60
	sVolEnv		v08
	saTranspose	$04
	saVol		$10
	sNoteTimeOut	$06

Credits_Loop34:
	sCall		Credits_Call39
	sLoop		$00, $02, Credits_Loop34

Credits_Loop35:
	dc.b nRst, $60
	sLoop		$00, $07, Credits_Loop35
	sVolEnv		v00
	saTranspose	$F0
	saVol		-$08
	sCall		Credits_Call23
	saTranspose	$18
	saVol		$10
	dc.b nE4, $30, nD4, $18, nE4, $0C, nD4, nC4
	dc.b $30, nF4
	saVol		-$10
	dc.b nRst, $0C, nG4, nRst, nG4, nRst, nA4, nRst
	dc.b nA4
	saVol		$18
	dc.b nG5, $18, nE5, nC5, nD5, $0C, nRst
	saVol		-$20
	dc.b nRst, nG4, nRst, nG4, nRst, nA4, $18, $08
	dc.b nG4, $04
	saTranspose	$F4
	saVol		$08
	sVolEnv		v05

Credits_Loop36:
	dc.b nRst, $60
	sLoop		$00, $05, Credits_Loop36
	dc.b nRst, $0C, nB5, $12, nRst, $06, nB5, nRst
	dc.b nA5, $12, nB5, nA5, $0C, nE5, $18, nAb5
	dc.b nB5, nD6, nRst, $0C, nCs6, nRst, nCs6, $12
	dc.b nC6, nCs6, $06, nRst, $09
	saTranspose	$30
	saVol		-$20
	sJump		Credits_Jump1

Credits_Call39:
	dc.b nRst, $0C, nC5, $06, $12, $18, nG5, $06
	dc.b $12, $0C, nRst, nF5, $06, $12, $18, nG5
	dc.b $06, $12, $0C
	sRet

Credits_Call38:
	dc.b nRst, $60, nRst, $0C, nF5, nRst, nF5, nRst
	sRet

Credits_Call37:
	dc.b nG3, $0C, nBb3, $06, nD4, $0C, nG3, nG3
	dc.b $06, nRst, nG3, $0C, nBb3, $06, nE4, $0C
	dc.b nG3, $06, nRst, $06, nC4, $0C, nF4, $06
	dc.b nA3, $0C, nC4, nD4, nF4, $06, nRst, nF4
	dc.b nF3, $0C, nBb3, nBb3, nE4, $06, nG3, $0C
	dc.b nBb3, nCs4, nE4, $06, nRst, nE4, nA3, $0C
	dc.b nCs4
	sRet

Credits_PSG2:
	dc.b nRst, $60
	sLoop		$00, $0D, Credits_PSG2

Credits_Loop39:
	dc.b nE5, $30, sHold, $30, nFs5, sHold, $30, nD5
	dc.b sHold, $30, nC5, sHold, $30
	sLoop		$00, $02, Credits_Loop39

Credits_Loop40:
	dc.b nRst, $60
	sLoop		$00, $0A, Credits_Loop40
	saTranspose	$0C
	saVol		-$18
	sVolEnv		v04

Credits_Loop41:
	sCall		Credits_Call22
	sLoop		$00, $02, Credits_Loop41
	dc.b nRst, $60
	ssMod68k	$03, $02, $01, $05
	sVolEnv		v0A
	saTranspose	$E8
	saVol		$10
	dc.b nRst, $60, nRst, $30, nC5, $06, nD5, nA5
	dc.b nF5, $1E, nRst, $60, nRst, $06, nA5, nRst
	dc.b nA5, nG5, nRst, nG5, nRst, nFs5, nRst, nFs5
	dc.b nRst, nD5, $03, nRst, nD5, nRst, $09, nRst
	dc.b $06, nRst, $30, nRst, nRst, nC5, $06, nD5
	dc.b nA5, nF5, $1E, nRst, $60
	sModOff

Credits_Loop42:
	dc.b nRst, $60
	sLoop		$00, $07, Credits_Loop42
	sVolEnv		v00
	saVol		-$10
	sNoteTimeOut	$06
	dc.b nRst, $0C, nD5, nRst, nD5, nRst
	dc.b nD5, nRst, nD5, nRst, $60, nRst, $0C, nD5
	dc.b nRst, nD5, nRst, nD5, $04, nRst, nD5, nRst
	dc.b $0C, nD5, nRst, $60
	saVol		$02

Credits_Loop43:
	sCall		Credits_Call39
	sLoop		$00, $02, Credits_Loop43

Credits_Loop44:
	dc.b nRst, $60
	sLoop		$00, $07, Credits_Loop44
	sVolEnv		v00
;	saTranspose	$F4
	saVol		-$08
	saTranspose	$E8
	sCall		Credits_Call30
	saTranspose	$18			; I don't even know, the original song would... Go very outside of the bounds? WTF Sonic team??? Idk rest of this will play 1 octave higher now
	saVol		$10
	dc.b nC4, $30, nB3, $18, nC4, $0C, nB3, nA3
	dc.b $30, nC4
	saVol		-$10
	dc.b nRst, $0C, nE4, nRst, nE4, nRst, nF4, nRst
	dc.b nF4
	saVol		$18
	dc.b nRst, nC4, nRst, nC4, nRst, nC4, nRst, nC4
	saVol		-$20
	dc.b nRst, nC4, nRst, nC4, nRst, nC4, $18, $08
	dc.b nC4, $04
	saVol		$08
	saTranspose	$18-$0C			; lets fix that octave
	sVolEnv		v05
	ssDetune	$01
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b $0C, nE6, $06, nRst, nB6, nE6, nRst, $0C
	dc.b nE6, $06, nRst, nB6, nE6, nRst, $18, nRst
	dc.b $54
	saTranspose	$24
	saVol		-$18

Credits_Jump1:
	sVolEnv		v03
	dc.b nRst, $06

Credits_Loop37:
	dc.b nD5, $03, nE5, nFs5
	saVol		$08
	saTranspose	$FF
	sLoop		$00, $05, Credits_Loop37

Credits_Loop38:
	dc.b nD5, $03, nE5, nFs5
	saVol		$08
	saTranspose	$01
	sLoop		$00, $07, Credits_Loop38
	sStop

Credits_PSG3:
	sNoisePSG	$E7
	dc.b nRst, $60
	sVolEnv		v02

Credits_Loop45:
	dc.b nA5, $0C, $0C, $0C, $06, $06, $0C, $0C
	dc.b $06, $06, $0C
	sLoop		$00, $08, Credits_Loop45

Credits_Loop46:
	dc.b nRst, $60
	sLoop		$00, $04, Credits_Loop46

Credits_Loop47:
	dc.b nA5, $0C, $06, $06
	sLoop		$00, $1F, Credits_Loop47
	dc.b $0C
	sVolEnv		v03
	dc.b nA5
	sVolEnv		v02

Credits_Loop48:
	dc.b nA5, $0C, $06, $06
	sLoop		$00, $07, Credits_Loop48
	dc.b $06, $06, $06, $06
	sLoop		$02, $04, Credits_Loop48

Credits_Loop49:
	dc.b nRst, $60
	sLoop		$00, $06, Credits_Loop49
	sVolEnv		v04
	saVol		$20

Credits_Loop50:
	sNoteTimeOut	$03
	dc.b nA5, $06, $06
	sNoteTimeOut	$00
	dc.b $0C
	sLoop		$00, $04, Credits_Loop50
	sVolEnv		v02
	saVol		-$18

Credits_Loop51:
	dc.b nRst, $0C, nA5, $06, nRst, $07, nA5, $06
	dc.b nRst, $11, nA5, $0C, nRst, $06, nA5, $0C
	dc.b nRst, $06, nA5, nRst
	sLoop		$00, $07, Credits_Loop51
	saVol		$10

Credits_Loop52:
	dc.b nA5, $0C, $08, $04
	sLoop		$00, $18, Credits_Loop52

Credits_Loop53:
	dc.b nA5, $0C, $0C, $0C, $08, $04
	sLoop		$00, $08, Credits_Loop53
	dc.b nRst, $60
	sVolEnv		v04
	saVol		$10

Credits_Loop54:
	dc.b nA5, $06, $06, $0C
	sLoop		$00, $10, Credits_Loop54

Credits_Loop55:
	dc.b nRst, $60
	sLoop		$00, $06, Credits_Loop55
	saVol		-$08

Credits_Loop56:
	sVolEnv		v01
	dc.b nA5, $0C
	sVolEnv		v02
	saVol		-$08
	dc.b $08
	sVolEnv		v01
	saVol		$08
	dc.b $04
	sLoop		$00, $27, Credits_Loop56
	saVol		-$08
	sVolEnv		v04

Credits_Loop57:
	sNoteTimeOut	$03
	dc.b nA5, $0C
	sNoteTimeOut	$0C
	dc.b $0C
	sLoop		$00, $1E, Credits_Loop57
	sNoteTimeOut	$03
	dc.b nA5, $06
	sNoteTimeOut	$0E
	dc.b $12
	sNoteTimeOut	$03
	dc.b $0C
	sNoteTimeOut	$0F
	dc.b $0C
	sStop

Credits_DAC2:
	dc.b dSnare, $06, dSnare, dSnare, dSnare, dSnare, $0C, $06
	dc.b $0C, $06, $0C, $0C, $0C

Credits_Loop58:
	dc.b dKick, $18, dSnare
	sLoop		$00, $0E, Credits_Loop58
	dc.b dKick, $0C

Credits_Loop59:
	dc.b dSnare
	sLoop		$00, $07, Credits_Loop59
	ssTempo		$16
	sCall		Credits_Call40
	dc.b dKick, $0C, dLowTom, dSnare, dKick, dKick, dFloorTom, dSnare
	dc.b dScratch, $04, $06, $02, dKick, $0C, dSnare, $06
	dc.b dSnare, dSnare, dSnare, dKick, $0C, dSnare, $06, dSnare
	dc.b dKick, dKick, dSnare, dSnare, dSnare, dSnare

Credits_Loop60:
	dc.b dKick, $18, dSnare, dKick, dSnare
	sLoop		$00, $07, Credits_Loop60
	dc.b dKick, $0C, dSnare, dSnare, dSnare, dSnare, $06, dSnare
	dc.b dMidTom, dMidTom, dLowTom, dLowTom, dFloorTom, dFloorTom
	sCall		Credits_Call41
	dc.b dKick, $18, dSnare, $0C, dKick, $18, dSnare, $0C
	dc.b dSnare, dSnare, $06, dSnare
	sCall		Credits_Call41
	dc.b dKick, $0C, dSnare, dSnare, dSnare, dLowTom, $06, dLowTom
	dc.b dFloorTom, dFloorTom, dSnare, $06, dSnare, dLowTom, $0C, dSnare
	dc.b $0C, dSnare, $06, dSnare, nRst, dSnare, dSnare, $0C
	dc.b dSnare, $0C, dSnare, dSnare, $06, dSnare, dLowTom, dLowTom

Credits_Loop61:
	dc.b dKick, $0C, dHiBongo, $06, dMidBongo, dSnare, $0C, dMidBongo
	dc.b $06, dLowBongo, dKick, $0C, dHiBongo, $06, dLowBongo, dSnare
	dc.b $0C, dHiBongo, $06, dLowBongo
	sLoop		$00, $04, Credits_Loop61
	dc.b dKick, $0C, dHiBongo, $06, dLowBongo, dSnare, $0C, dHiBongo
	dc.b $06, dLowBongo, dMidTom, $06, $03, $03, dLowTom, $06
	dc.b dLowTom, dLowTom, dFloorTom, dFloorTom, dFloorTom, dKick, $06, $0C
	dc.b dSnare, $06, nRst, $0C, dKick, dSnare, dFloorTom, dSnare
	dc.b $06, dSnare, dSnare, dSnare

Credits_Loop62:
	dc.b dKick, $0C, dSnare, $06, dKick, $12, dKick, $06
	dc.b dKick, $12, dMidTom, $06, dSnare, $0C, dClap, $06
	dc.b dKick, nRst
	sLoop		$00, $06, Credits_Loop62
	dc.b dKick, $0C, dSnare, $06, dKick, $12, dKick, $06
	dc.b dKick, $06, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, $08, $04
	ssTempo		$33
	dc.b dSnare, $30, dSnare, $0C, dSnare, dSnare, dSnare, $08
	dc.b $04
	sCall		Credits_Call42
	sCall		Credits_Call42
	dc.b dKick, $08, $0C, $04, dSnare, $0C, dKick, $08
	dc.b $04, dSnare, $08, $04, $08, $04, $04, $04
	dc.b $04, $08, $04
	ssTempo		$3B

Credits_Loop63:
	dc.b dKick, $09, dKick, $03, $0C, dSnare, dKick, dKick
	dc.b $18, dSnare
	sLoop		$00, $03, Credits_Loop63
	dc.b dKick, $09, dKick, $03, $0C, dSnare, dKick, dKick
	dc.b $18, dSnare, $0C, $06, $06, dKick, $0C, dSnare
	dc.b $06, dSnare, dSnare, dSnare, dLowTom, $0C, dSnare, $0C
	dc.b $0C, $0C, $06, $06

Credits_Loop64:
	dc.b dKick, $0C, dKick, dSnare, nRst, dKick, dKick, dSnare
	dc.b dClap
	sLoop		$00, $03, Credits_Loop64
	dc.b dKick, dSnare, dSnare, dSnare, dSnare, $06, $06, $06
	dc.b $06, $0C, $06, $06, dKick, $06, dKick, dSnare
	dc.b dSnare, dKick, dSnare, dKick, dKick, dSnare, $02, dSnare
	dc.b $04, dKick, $0C, $06, dSnare, $0C, $06, $06
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b dKick, $06, dKick, $12, dSnare, $0C, dKick, dKick
	dc.b $18, dSnare, dKick, $18, dSnare, $0C, dKick, dKick
	dc.b $18, dSnare, dKick, $06, dKick, $12, dSnare, $0C
	dc.b $0C, $06, $06, $06, $06, $0C, $06, $06
	dc.b dSnare, $02, $04, dKick, $0C, $06, $0C, dSnare
	dc.b $02, $04, dKick, $0C, $06, $0C, dSnare, $06
	dc.b dSnare, dSnare, dSnare
	ssTempo		$40
	dc.b dKick, $0C, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b $08, dSnare, $04, $0C

Credits_Loop65:
	dc.b dKick, $0C, dSnare
	sLoop		$00, $0F, Credits_Loop65
	dc.b dKick, $08, dSnare, $04, $0C

Credits_Loop66:
	dc.b dKick, $0C, dSnare
	sLoop		$00, $13, Credits_Loop66
	dc.b dSnare, $08, $0C, $04, dKick, $0C, dSnare, dKick
	dc.b dSnare, dKick, $0C, dSnare, dKick, $06, nRst, $02
	dc.b dSnare, dSnare, dSnare, $09, dSnare, $03

Credits_Loop67:
	dc.b dKick, $0C, dSnare
	sLoop		$00, $06, Credits_Loop67
	dc.b dKick, $0C, dSnare, dKick, $06, nRst, $02, dSnare
	dc.b dSnare, dSnare, $09, dSnare, $03
	sLoop		$01, $03, Credits_Loop67
	dc.b dKick, $0C, dSnare, dKick, dSnare, dKick, $06, dSnare
	dc.b $12, dSnare, $0C, dKick

Credits_DAC1:
	sStop

Credits_Call40:
	dc.b dKick, $0C, dLowTom, dSnare, dKick, dKick, dFloorTom, dSnare
	dc.b dScratch, $04, $06, $02, dKick, $0C, dLowTom, dSnare
	dc.b dKick, dKick, dFloorTom, dSnare, dClap
	sRet

Credits_Call41:
	dc.b dKick, $18, dSnare, $0C, dKick, $18, $0C, dSnare
	dc.b dKick, dKick, $18, dSnare, $0C, dKick, $12, dKick
	dc.b dSnare, $18, dKick, dSnare, $0C, dKick, $18, $0C
	dc.b dSnare, dKick
	sRet

Credits_Call42:
	dc.b dKick, $08, $0C, $04, dSnare, $0C, dKick, $08
	dc.b $0C, dSnare, $04, dKick, $0C, dSnare, dKick, dKick
	dc.b $08, $0C, $04, dSnare, $0C, dKick, $08, $0C
	dc.b dSnare, $04, dKick, $0C, dSnare, dSnare, $08, $04
	sRet

	dc.b dKick, $06, nRst, $03, dKick, dKick, $06, dSnare	; Unused
	dc.b dKick, $06, nRst, $03, dKick, dKick, $06, dSnare	; Unused
	dc.b $03, dSnare, dKick, $06, nRst, $03, dKick, dKick	; Unused
	dc.b $06, dSnare					; Unused
	sRet