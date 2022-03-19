% Standard preamble to write bachelor or masterthesis in a UHasselt friendly template
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhthesis}[2022/01/01 A thesis class conforming to the 2022 UHasselt house style.]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Packages         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[11pt, a4paper, twoside]{article}

%% Language package
\RequirePackage[english]{babel}

% Header
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{graphicx}

% Math and physics
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{physics}

% Aesthetics, layout and font
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{multicol}
\RequirePackage{tocbibind}
\RequirePackage[explicit]{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage[normalem]{ulem}
\RequirePackage[justification=centering]{caption}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{changepage}
\RequirePackage[
    backend=biber,
    style=ieee,
    natbib=true,
    sortlocale=en_US,
    url=false, 
    doi=true,
    eprint=false
]{biblatex}

% Improvements
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{chngcntr}

% File management
\RequirePackage{import}
\RequirePackage[title]{appendix}
\RequirePackage{pdfpages}
\RequirePackage{pdflscape}

% Open Sans font is easier to read
\RequirePackage[default,oldstyle,scale=0.95]{opensans}

% Layout
\RequirePackage[margin=1in]{geometry}
\RequirePackage{anyfontsize}

% Bibliography apa style
%\RequirePackage{apacite}

% References and links
\RequirePackage[colorlinks=true, linktoc=all]{hyperref}
\RequirePackage[noabbrev]{cleveref}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Additional Definition  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Shorthand for new paragraph
\newcommand{\npar}{\par\medskip} 

% No indentation
\setlength\parindent{0pt}

% Defince \mentor{} element
\newcommand*{\promotor}[1]{\gdef\thepromotor{#1}}
\newcommand*{\thepromotor}{Insert \textbackslash promotor\{\} below \textbackslash date\{\}}

% Defince \mentor{} element
\newcommand*{\mentor}[1]{\gdef\thementor{#1}}
\newcommand*{\thementor}{Insert \textbackslash mentor\{\} below \textbackslash date\{\}}

% Defince \course{} element
\newcommand*{\degreename}[1]{\gdef\thedegreename{#1}}
\newcommand*{\thedegreename}{Insert \textbackslash degreename\{\} below \textbackslash date\{\}}

% Defince \course{} element
\newcommand*{\degreetype}[1]{\gdef\thedegreetype{#1}}
\newcommand*{\thedegreetype}{Insert \textbackslash degreetype\{\} below \textbackslash date\{\}}

% Defince \course{} element
\newcommand*{\department}[1]{\gdef\thedepartment{#1}}
\newcommand*{\thedepartment}{Insert \textbackslash department\{\} below \textbackslash date\{\}}

% Defince \course{} element
\newcommand*{\acyear}[1]{\gdef\theacyear{#1}}
\newcommand*{\theacyear}{Insert \textbackslash acyear\{\} below \textbackslash date\{\}}

% Add the bibliography file
\addbibresource{references.bib}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      General Layout      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\oddsidemargin}{0.35in} 
\setlength{\evensidemargin}{-0.35in}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Front Page        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\maketitle}{%
    \newgeometry{top=0.65in, bottom=1in, left=0.65in, right=1in}
    \begin{titlepage}
        \thispagestyle{empty}
        \noindent\includegraphics[width=6cm]{UHasselt_logo}
        \vspace{20mm}
        \begin{adjustwidth}{0.65in}{}
                \Large
                \textbf{\thedepartment} \\
                \thedegreename
        \end{adjustwidth}
        \vspace{15mm}
        \begin{adjustwidth}{0.65in}{}
                \textbf{\textit{\thedegreetype}}
        \end{adjustwidth}
        \vspace{5mm}
        \begin{adjustwidth}{0.65in}{}
            \begin{center}
                \LARGE
                \textbf{\thetitle}
            \end{center}
        \end{adjustwidth}
        \vspace{5mm}
        \begin{adjustwidth}{0.65in}{}
            \begin{center}
                \Large
                {\theauthor}
            \end{center}
        \end{adjustwidth}
        \vfill
        \begin{adjustwidth}{0.65in}{}
                \Large
                \textbf{PROMOTOR:}\\
                \thepromotor 
        \end{adjustwidth}
        \vspace{3mm}
        \begin{adjustwidth}{0.65in}{}
                \Large
                \textbf{MENTOR:}\\
                \thementor
        \end{adjustwidth}
        \vspace{30mm}
    \end{titlepage}
    \clearpage
    \restoregeometry
}
