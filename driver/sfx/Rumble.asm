	sHeaderInit						; Z80 offset is $F34C
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pRumble
	ssMod68k	$00, $01, $20, $08

.Loop1
	dc.b nBb0, $0A
	sLoop		$00, $08, .Loop1

.Loop2
	dc.b nBb0, $10
	saVol		$03
	sLoop		$00, $09, .Loop2
	sStop