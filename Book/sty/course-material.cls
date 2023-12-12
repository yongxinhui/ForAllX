\ProvidesClass{course-material}

\def\solspace{0pt}

% HANDOUTS

\DeclareOption{handout}{
\def\solspace{2cm}
\AtEndOfClass{\RequirePackage{fullpage}

% Simple title
\renewcommand{\maketitle}{%
\begin{center}
\textbf{\coursename}\\
\instructor{} -- \term~\year\\[2ex]
\textbf{\@title}
\end{center}}}
}

% ASSIGNMENTS

\DeclareOption{assignment}{
\def\solspace{0pt}
\AtEndOfClass{
\renewcommand{\maketitle}{%
\begin{center}\large
\textbf{\coursename (\coursenumber)}\\
\instructor{} -- \term~\year\\[2ex]
\textbf{\@title}
\end{center}}}
}

% COURSE OUTLINE

\DeclareOption{outline}{
  \AtEndOfClass{\renewcommand{\maketitle}{%
    \begin{raggedright}
    \deptlogo
    \end{raggedright}
  \bigskip

  \begin{center}
  {\Large\sffamily\bfseries\selectfont 
  \coursenumber\\
  \coursename\\[1.2ex]
  \normalsize \term~\year\\[.5ex]
  %\lecslot, \lecroom
  \bigskip

  \textbf{\@title}}
  \end{center}
  }}
}

\ProcessOptions\relax

% COMMON THINGS

% Needs memoir.cls
\LoadClass[12pt,article,oneside]{memoir}

\usepackage[colorlinks,urlcolor=blue]{hyperref}

%\RequirePackage[style={../sty/canadian}]{jslectureplanner}

\RequirePackage{amssymb,amsmath,pifont,rotating}

\usepackage{Baskervaldx} % oldstyle figures
\usepackage[bigdelims,baskervaldx]{newtxmath} 
\usepackage[cal=boondoxo]{mathalfa}
\usepackage{helvet}
\RequirePackage[depth=3]{bookmark}

\RequirePackage{xparse}

\DeclareDocumentCommand \URL { o m }
{\IfNoValueTF{#1}{\href{https://#2}{#2}}
{\href{#1}{#2}}}
\newcommand{\EMAIL}[1]{\href{mailto:#1}{#1}}

\RequirePackage{etoolbox}
\newtoggle{solutions}
\togglefalse{solutions}
\newcommand{\solutions}{\toggletrue{solutions}}

\newcommand{\solution}[2][\solspace]{\iftoggle{solutions}{%
    {\color{blue}#2}}{
    \vspace{#1}}}


\newcommand{\duedate}[1]{\DTMsavedate{duedate}{#1}}
\newcommand{\duetime}[1]{\DTMsavetime{duetime}{#1}}

\newcommand{\titlegraphic}[1]{\def\insertlogo{#1}}

\newenvironment{problem}{\begin{framed}}{\end{framed}}

\usepackage{titlesec}
\titleformat{\section}{\bfseries}{}{0pt}{}{}
\titlespacing*{\section}{0pt}{1ex}{.5ex}
\titleformat{\subsection}[runin]{\itshape}{0pt}{}{}[.]
\titlespacing*{\subsection}{0pt}{1ex}{.5ex}
\renewcommand\@seccntformat[1]{}
\AtBeginDocument{
  \author{\instructor}
  \edef\@date{\term~\year}
  \hypersetup{pdftitle={\coursename: \@title{} (\@date)},pdfdisplaydoctitle,bookmarksopen=false,pdfdisplaydoctitle=false}
}