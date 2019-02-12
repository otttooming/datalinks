%%% originally written by Kert Tamm in 2011
%%% modified by Tanel Peets in 2011
%%% further modified by Martin Lints in 2017
%%% Revised for TTU PhD thesis template in 2018
%%% martin.lints@ttu.ee

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EUASThesis}[2018/05/02 TTU PhD template class]

\DeclareOption{draft}{\PassOptionsToClass{draft}{article}}
\DeclareOption{dblsp}{\@dblsptrue}
\DeclareOption{twocol}{\@twocoltrue}
\ProcessOptions

\LoadClass[10pt,twoside,b5paper]{article}

% imported packages
\RequirePackage{graphicx} % figures
\RequirePackage{amsmath}  % mathematical formulas
\RequirePackage{amsfonts} % math fonts
\RequirePackage{amssymb}  % math symbols
\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[estonian,english]{babel}
\selectlanguage{english}
\RequirePackage{bibentry} %for creating list of publications using separate entries from bibliography
\RequirePackage{pdfpages} % to include pdf documents
\RequirePackage{placeins} %\FloatBarrier - Dumps all remaining floats from a buffer, stopping for ex. a figure being shown in another section
\RequirePackage[outdir=./img/]{epstopdf}
\RequirePackage{subcaption}
\RequirePackage{color} % colored text
\RequirePackage[inner=25mm,outer=25mm,top=20mm,bottom=20mm]{geometry}
\RequirePackage{caption} % to use \captionsetup
\RequirePackage{setspace} % to use \captionsetup
% \RequirePackage[sfdefault,lf]{carlito}
\RequirePackage[T1]{fontenc}

% to imitate Calibri:
% \renewcommand*\familydefault{\sfdefault} %% Base font of the document is to be sans serif


\setlength\parindent{3ex} % three letter space for indent
\setlength{\footskip}{9mm} % adjust page number height

% font sizes
\newcommand\headersize{\@setfontsize\headersize\@xipt{14}}
\newcommand\runningheadsize{\@setfontsize\runningheadsize{9}{12}}
\newcommand\summarysize{\@setfontsize\summarysize\@xpt{12}}
\renewcommand\Large{\@setfontsize\large{14}{16.8}}
\renewcommand\footnotesize{\@setfontsize\footnotesize{9}{10.8}} % redefine footnote size

% captions of tables and figures
\captionsetup{labelfont=it,textfont=it,font=footnotesize,belowskip=5pt,aboveskip=5pt}

% first number is the font size and the second is the used baselineskip

% section font sizes
 %\@startsection{<name>}{<level>}{<indent>}{<beforeskip>}{<afterskip>}{<style>}*[<altheading>]{<heading>} 
% name: e.g., subsection
% level: a number, denoting depth of section - e.g., chapter = 0, section = 1, etc.
% indent: Indentation of heading from left margin
% beforeskip: Absolute value = skip to leave above the heading. If negative, then paragraph indent of text following heading is suppressed. (special char.)
% afterskip: If positive, then skip to leave below heading, else negative of skip to leave to right of run-in heading. 
% style: Commands to set style. Since June 1996 release the last command in this argument may be a command such as \MakeUppercase or \fbox that takes an argument. The section heading will be supplied as the argument to this command. So setting #6 to, say, \bfseries\MakeUppercase would produce bold, uppercase headings.
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-1pt}
                                   %{-3.5ex \@plus -1ex \@minus -.2ex}%
                                   %{2.3ex \@plus.2ex}% % old afterskip
                                   {5pt}
                                   %{14pt}%
                                   % {\Large\bf}}
                                   {\reset@font\Large\bf}}
                           %{\reset@font\normalsize\bf}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                        %{-3.5ex \@plus -1ex \@minus -.2ex}%
                                        {-12pt} % beforeskip
                                        %{24pt plus 12pt minus 12pt}%
                                        %{2.3ex \@plus.2ex}%
                                        {5pt}% afterskip
                                        %{12pt}%
                                        {\reset@font\large\bf}}
                                        %{\reset@font{\fontsize{12pt}{14.4pt}\selectfont}{\bf}} 
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                       %{24pt plus 12pt minus 12pt}%
%   				        {-2pt plus -0pt minus -0pt}%
%                                        {1pt}%
                                        {-12pt}%
                                        {1pt}%
                                        {\reset@font\normalsize\bf}}

\setcounter{secnumdepth}{4} %numbers for subsubsections
\setcounter{tocdepth}{4} %Put subsections to table of contents


% decrease the space between the number and the title
\makeatletter
\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname\hspace{1ex}}
\makeatother


% Automatically clear double page before each section command
\let\oldsection\section
\renewcommand\section{\clearpage\oldsection}
\def\oddpagesection{\cleardoublepage\oldsection} % normal section, starts on new odd page


%%%%%%%%%%%%%%% new classes etc.
% publications class for list of author's publications in PhD thesis
\newenvironment{publications}{%
\renewcommand{\theenumi}{Publication \Roman{enumi}}%

\renewcommand{\labelenumi}{Publication \Roman{enumi}}%
\begin{list}{\textbf{Publication \Roman{enumi}}:}%
{\usecounter{enumi}%
\setlength{\topsep}{5mm}%
\setlength{\partopsep}{0mm}%
\setlength{\parskip}{0mm}%
\setlength{\parsep}{0mm}%
\setlength{\itemsep}{0mm}%
\settowidth{\labelwidth}{[W]}%
\setlength{\leftmargin}{2.5mm}%
\addtolength{\leftmargin}{\labelwidth}%
\addtolength{\leftmargin}{-1\labelsep}%
\setlength{\itemindent}{0mm}}}%
{\end{list}}

% environment for the contribution lists, 
\newenvironment{contriblist}{
\begin{list}{\textbf{\Roman{enumi}}}
{\usecounter{enumi}%
\addtolength{\leftmargin}{-1\labelsep}%
}}
{\end{list}}

\newenvironment{widenumi}{
\begin{list}{\arabic{enumi}.}
{\usecounter{enumi}
\addtolength{\leftmargin}{-1\labelsep}%
}}
{\end{list}}

\newenvironment{tightenumi}{
  \begin{enumerate}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
}
{\end{enumerate}}


\endinput
