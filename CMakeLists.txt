# Convenience CMake build file
# Jacob Alexander 2015-2018

cmake_minimum_required ( VERSION 2.8.4 )

project ( KLL_Spec NONE )
include ( UseLATEX.txt )

add_latex_document ( main.tex
	INPUTS
	CapabilityTable.tex
	ConsumerCodeTable.tex
	LocaleTable.tex
	LEDCodeTable.tex
	LEDIndicatorTable.tex
	SystemCodeTable.tex
	TriggerCodeTable.tex
	USBCodeTable.tex
	kiibohd-template.cls
	logo.pdf
)

