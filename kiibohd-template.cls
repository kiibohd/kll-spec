%% Copyright (C) 2013-2014 Jacob Alexander
%%
%% kiibohd-template is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 3 of the License, or
%% any later version.
%%
%% kiibohd-template is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kiibohd-template}
    [ 2013/01/02 Kiibohd Latex Template]
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}


\LoadClass[letterpaper,12pt]{report}
\ProcessOptions



% Required Packages to compile documents
%\usepackage[default]{sourcesanspro}
\RequirePackage{DejaVuSans}
%\RequirePackage[defaultsans]{droidsans}
\renewcommand*\familydefault{\sfdefault}
\RequirePackage{etex}
\RequirePackage{pgfplots}
\RequirePackage[intlimits]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{esint}
\RequirePackage{changepage}
\RequirePackage{chngcntr}
\RequirePackage{url}
\RequirePackage{listings}
\RequirePackage[titles]{tocloft}
\RequirePackage{rotating}
\RequirePackage{textcase}
\RequirePackage{setspace}
\RequirePackage{multirow}
\RequirePackage{moreverb}
\RequirePackage{enumitem}
%\RequirePackage[none]{hyphenat} % Disable hyphenation entirely
\RequirePackage[labelfont=bf]{caption}
\RequirePackage{fancyhdr}
%\RequirePackage{longtable}
\RequirePackage{float}
\RequirePackage{hyperref}
\RequirePackage{xparse}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage{afterpage}
\RequirePackage{vhistory}
\RequirePackage{longtable}

\usepackage[english]{babel}
\usepackage[utf8x]{inputenc}
\usepackage[colorinlistoftodos,textsize=scriptsize]{todonotes}



\pgfplotsset{compat=newest}



% Remove Paragraph Indentation
\setlength\parindent{0pt} % Disabling



% Colors
\definecolor{grey}{HTML}{252525}



% KLL Listings Definition
\lstdefinelanguage{KLL}
{
	keywords={Name, Version, Date, Author, KLL, None},
	comment=[l]{\#},
	string=[b]{"},
}



% Listings Settings
\lstset{
	language=KLL,
	showstringspaces=false,
	frame=single,
	commentstyle=\bfseries\color{blue!80!white},
	keywordstyle=\bfseries\color{orange},
	stringstyle=\color{red},
}



% Template Parameters
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
	\newcommand{\@email}{\ClassError{detail}{No \noexpand\email given}{}}
\newcommand{\docrev}[1]{\renewcommand{\@docrev}{#1}}
	\newcommand{\@docrev}{\ClassError{detail}{No \noexpand\docrev given}{}}
\newcommand{\urlname}[1]{\renewcommand{\@urlname}{#1}}
	\newcommand{\@urlname}{\ClassError{detail}{No \noexpand\urlname given}{}}
\newcommand{\titlename}[1]{\renewcommand{\@titlename}{#1}}
	\newcommand{\@titlename}{\ClassError{detail}{No \noexpand\titlename given}{}}




% Chapter Formatting
\renewcommand{\chapter}{%
%\clearpage
  \@startsection
      {chapter}{0}%
      {\z@} % No indent
	{8ex plus 0.1ex minus -.2ex} %
      {20pt}% Two Lines
      {\fontsize{18}{\f@baselineskip}\bf}%
}



% Section Formatting
\renewcommand{\section}{%
\@startsection
{section}{1}%
{\z@} % No indent
{4ex plus 0.1ex minus -.2ex} %
{1ex plus 0.1ex minus -.2ex}% Two Lines
{\fontsize{14}{\f@baselineskip}\bf}%
}%



% Subsection Formatting
\renewcommand{\subsection}{%
  \@startsection
      {subsection}{2}%
      {\z@} % No indent
{4ex plus 0.1ex minus -.2ex} %
{1ex plus 0.1ex minus -.2ex}% Two Lines
{\fontsize{12}{\f@baselineskip}\bf}%
}



% Subsubsection Formatting
\renewcommand{\subsubsection}{%
  \@startsection
      {subsubsection}{3}%
      {\z@} % No indent
{4ex plus 0.1ex minus -.2ex} %
{1ex plus 0.1ex minus -.2ex}% Two Lines
{\fontsize{11}{\f@baselineskip}\bf}%
}



% Margin Setup
\newlength{\marginl}
%\setlength{\marginl}{1in} % Uniform Margins
%\setlength{\marginl}{1.5in} % Margins for bound document (single-sided)
\setlength{\marginl}{1.25in} % Extra space for comments

\newlength{\marginr}
%\setlength{\marginr}{1in}
\setlength{\marginr}{1.25in} % Extra space for comments

\newlength{\marginb}
\setlength{\marginb}{1.25in} % Extra space for the footer

\newlength{\margint}
\setlength{\margint}{1.25in} % Extra space for the header



% Page and Paragraph Setup
\setlength{\parskip}{4pt}
\setlength{\parsep}{12pt}
\setlength{\headsep}{0pt}
\setlength{\topskip}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\topsep}{0pt}
\setlength{\partopsep}{12pt}
\setlength{\footskip}{20pt}
\RequirePackage[right=\marginb, top=\margint, bottom=\marginb, left=\marginl ]{geometry}
\setlength{\headheight}{15pt}



% Chapter and Section Title Setup
\setlength\cftparskip{-2pt}
\setlength\cftbeforechapskip{-4pt}
\setlength\cftbeforesecskip{-4pt}
\setlength\cftbeforesubsecskip{-4pt}



% Page Header and Footer Setup
\fancyhead{}
\fancyfoot{}

\fancypagestyle{kiibohd}{%
	\fancyhf{} % clear all header and footer fields
	\fancyhead[L]{
		\begin{tikzpicture}[remember picture,overlay]
		\node[yshift=-2.36cm] at (current page.north west)
		{\begin{tikzpicture}[remember picture, overlay]
			\draw[fill=grey] (0,0) rectangle
			(\paperwidth+0.9cm,2.5cm); % Not sure why I need the 0.9cm
			\node[anchor=west,xshift=-0.10cm,yshift=1.15cm]{\includegraphics[width=2.5in]{logo.pdf}};
			\node[anchor=north,xshift=\paperwidth/2,yshift=1.45cm]{\color{white}\@titlename};
			\node[anchor=east,xshift=\paperwidth-1.15cm,yshift=1.15cm]{\color{white}{\small\leftmark}};
			\end{tikzpicture}
		};
		\end{tikzpicture}
	}

	\fancyfoot[L]{
		\begin{tikzpicture}[remember picture,overlay]
		\node[yshift=-27.94cm] at (current page.north west)
		{\begin{tikzpicture}[remember picture, overlay]
			\draw[fill=grey] (0,0) rectangle
			(\paperwidth+0.9cm,2.3cm); % Not sure why I need the 0.9cm
			\node[anchor=west,xshift=1.15cm,yshift=1.15cm]{\color{white}\href{http://\@urlname}{\@urlname}};
			\node[anchor=north,xshift=\paperwidth/2,yshift=1.45cm]{\color{white}\thepage};
			\node[anchor=east,xshift=\paperwidth-1.15cm,yshift=1.15cm]{\color{white}\@docrev~\@date};
			\end{tikzpicture}
		};
		\end{tikzpicture}
	}
	\renewcommand{\headrulewidth}{0pt} %Remove hline
	\renewcommand{\footrulewidth}{0pt} %Remove hline
}
\pagestyle{kiibohd}

% Needed to influence \rightmark to only display the chapter name
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}



% Tables of Contents/Listings/Tables/Figures Setup
\renewcommand{\cftdot}{.}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\lstlistlistingname}{List of Listings}



% Table of Tables Setup
\newcommand{\tableoftables}{%
	\addcontentsline{toc}{chapter}{\listtablename}
	\listoftables
	\pagestyle{kiibohd}
}



% Table of Figures Setup
\newcommand{\tableoffigures}{%
	\addcontentsline{toc}{chapter}{\listfigurename}
	\listoffigures
	\pagestyle{kiibohd}
}



% [All] Table Setup
\setlength\cftbeforechapskip{0pt}
\setlength\cftbeforesecskip{0pt}
\setlength\cftbeforesubsecskip{0pt}
\setlength\cftaftertoctitleskip{0pt}
\setlength\cftbeforetoctitleskip{0pt}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\newcommand{\printtables}{%
	\pagenumbering{roman}
	\renewcommand{\contentsname}{Contents}
	\tableofcontents
	\clearpage
	%\tableoftables
	%\clearpage
	%\tableoffigures
	%\clearpage
	\pagenumbering{arabic}
}



%% MACROS %%
% Inserting Image as Figure Macro {image}{label}{caption}
\newlength{\templen}
\newcommand{\insertimageOLD}[3]{%
	\begin{figure}[h]
	\begin{center}
	\ifnum \thenoimages = 0
	\setlength{\templen}{-0.5in}
	\addtolength{\templen}{\textwidth}
	\includegraphics[width=\templen]{#1}
	\else
	\fi
	\end{center}
	\caption{#3}
	\label{#2}
	\end{figure}
}



% Inserting Image as Figure Macro
% \insertimage{label}{image settings}{image}{caption}
\newcommand{\insertimage}[4]{%
	\begin{figure}[H]
		\begin{center}
			\includegraphics[#2]{#3}
			\caption{#4}
			\label{#1}
		\end{center}
	\end{figure}
}



% Highlighting macro
%\newcommand{\hlc}[2][green]{\sethlcolor{#1}\hl{#2}}
%\newcommand{\hlc}[2][green]{\pdfmarkupcomment[markup=Highlight,color=#1]{#2}{}}
\newcommand{\hlc}[2][green]{#2}



% Insert pgfplot Macro
% \begin{dataplot}{axis settings}{label}{caption}
\NewDocumentEnvironment{dataplot}{ m m m }%
{% Header
\begin{figure}[H]
	\begin{center}
		\begin{tikzpicture}
			\begin{axis}[#1]
}
{% Footer
			\end{axis}
		\end{tikzpicture}
		\caption{#3}
		\label{#2}
	\end{center}
\end{figure}
}



% Table Figure Macro
% \begin{ftable}{label}{tabular setup}{caption}
%  - table entries -
% \end{ftable}
\newenvironment{ftable}[3]%
{% Header
	% Normal Table
	\begin{table}[H] \small
	\begin{center}\caption{#3}
		\label{#1}
		\begin{tabular}{#2}
}{% Footer
		\end{tabular}
	\end{center}
	\end{table}
}



% Long Table Figure Macro
% \begin{ltable}{label}{tabular setup}{caption}
%  - table entries -
% \end{ltable}
\newenvironment{ltable}[3]%
{% Header
	% Normal Table
	\begin{center}
	\begin{longtable}{#2}
	\caption{#3} \\
	\label{#1}
}{% Footer
	\end{longtable}
	\end{center}
}



% Macros for mult-line table entries
% Centered \spcell{Text}
\newcommand{\spcell}[2][c]{%
  \begin{tabular}[#1]{@{}c@{}}#2\end{tabular}}
% Left-Aligned \slcell{Text}
\newcommand{\slcell}[2][c]{%
  \begin{tabular}[#1]{@{}l@{}}#2\end{tabular}}

% Macro for glossary entryh
\newcommand{\glossent}[2]{\item[#1] #2}

% Macro for deviation listing
\newcommand{\deviation}[2]{%
	\begin{tabular}{l p{13cm}}
		\textbf{Deviation}:&#1\\
		\textbf{Rationale}:&#2\\
	\end{tabular}
	\null\vspace{0.50cm}%
}



% Title Section Setup
\renewcommand{\maketitle}{%
	\null\vspace{ 2.0cm}%
	\pagecolor{grey}\afterpage{\nopagecolor}
	\begin{center}%
		{\includegraphics[width=6.5in]{logo.pdf}}
	\end{center}\par
	\null\vspace{-0.2cm}%
	\begin{center}%
		{\huge\color{white} \@titlename }%
	\end{center}\par
	\null\vspace{-0.5cm}%
	\begin{center}%
		{\huge\color{white} \@docrev}%
	\end{center}\par
	\null\vspace{6.5cm}%
	\begin{flushright}%
		{\color{white} \@author\\\@email\\\@date}%
	\end{flushright}
	\thispagestyle{empty}
	\addtocounter{page}{-1}
	\clearpage
}



% Summary Section Setup
\newenvironment{fsummary}[0]
{% Header
	\pagenumbering{roman}
	\chapter*{Summary}
	\addcontentsline{toc}{chapter}{Summary}
}{% Footer
}



% Glossary Section Setup
\newenvironment{fglossary}[0]
{% Header
	\chapter{Glossary}
	%\addcontentsline{toc}{chapter}{Glossary}
}{% Footer
}



% Appendices Section Setup
\newenvironment{fappendix}[2]
{% Header
	\chapter*{Appendix #1 - #2}
	\label{app:#2}
	\addcontentsline{toc}{chapter}{Appendix #1 - #2}
	\renewcommand\thepage{#1\arabic{page}}
	\renewcommand\thefigure{#1\arabic{figure}}
	\renewcommand\thetable{#1\arabic{table}}
	\addtocounter{chapter}{1}
	\setcounter{page}{1}
	\setcounter{figure}{0}
	\setcounter{table}{0}
}{% Footer
	\clearpage % XXX - The bibliography macro does screwy thing...this helps clean them up
}



\endinput
