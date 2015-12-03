# Convenience CMake build file
# Jacob Alexander 2015

cmake_minimum_required ( VERSION 2.8.4 )

project ( KLL_Spec NONE )
include ( UseLATEX.cmake )

add_latex_document ( main.tex
	INPUTS
	CapabilityTable.tex
	ConsumerCodeTable.tex
	LEDCodeTable.tex
	LEDIndicatorTable.tex
	SystemCodeTable.tex
	USBCodeTable.tex
	kiibohd-template.cls
	logo.pdf
)

