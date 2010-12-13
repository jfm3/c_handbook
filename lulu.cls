\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lulu}

\LoadClass[10pt]{book}

\setlength{\marginparwidth}{0mm}
\setlength{\textwidth}{4.3in}
\setlength{\textheight}{7.0in}
\setlength{\pdfpagewidth}{6in}
\setlength{\pdfpageheight}{9in}
\setlength{\hoffset}{-.25in}
\setlength{\voffset}{-.3in}
\setlength{\topmargin}{0in}
\setlength{\oddsidemargin}{.25in}
\setlength{\evensidemargin}{0mm} 

\makeatletter

\def\@makechapterhead#1{%
  {\parindent \z@ \centering
    \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \large
        \thechapter \ --
      \fi
    \fi
    \interlinepenalty\@M
    \large #1\par\nobreak
    \vskip 10\p@
  }
}

\def\@makeschapterhead#1{%
  {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
    \large #1\par\nobreak
    \vskip 10\p@
  }}

\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}


\def\section{\@ifstar\unnumberedsection\numberedsection}
\def\numberedsection{\@ifnextchar[%]
  \numberedsectionwithtwoarguments\numberedsectionwithoneargument}
\def\unnumberedsection{\@ifnextchar[%]
  \unnumberedsectionwithtwoarguments\unnumberedsectionwithoneargument}
\def\numberedsectionwithoneargument#1{\numberedsectionwithtwoarguments[#1]{#1}}
\def\unnumberedsectionwithoneargument#1{\unnumberedsectionwithtwoarguments[#1]{#1}}
\def\numberedsectionwithtwoarguments[#1]#2{%
  \ifhmode\par\fi
  \removelastskip
  \vskip 3ex\goodbreak
  \refstepcounter{section}%
  \begingroup
  \noindent\leavevmode
  \thesection\ -- #2\par
  \endgroup
  \@afterindentfalse
  \@afterheading
  \nobreak
  \vskip 2ex
  \addcontentsline{toc}{section}{%
    \protect\numberline{\thesection}%
    #1}%
  }
\def\unnumberedsectionwithtwoarguments[#1]#2{%
  \ifhmode\par\fi
  \removelastskip
  \vskip 3ex\goodbreak
  \begingroup
  \noindent\leavevmode
  #2\par
  \endgroup
  \@afterindentfalse
  \@afterheading
  \nobreak
  \vskip 2ex
  \addcontentsline{toc}{section}{%
%    \protect\numberline{\thesection}%
    #1}%
  }

\def\subsection{\@ifstar\unnumberedsubsection\numberedsubsection}
\def\numberedsubsection{\@ifnextchar[%]
  \numberedsubsectionwithtwoarguments\numberedsubsectionwithoneargument}
\def\unnumberedsubsection{\@ifnextchar[%]
  \unnumberedsubsectionwithtwoarguments\unnumberedsubsectionwithoneargument}
\def\numberedsubsectionwithoneargument#1{\numberedsubsectionwithtwoarguments[#1]{#1}}
\def\unnumberedsubsectionwithoneargument#1{\unnumberedsubsectionwithtwoarguments[#1]{#1}}
\def\numberedsubsectionwithtwoarguments[#1]#2{%
  \ifhmode\par\fi
  \removelastskip
  \vskip 3ex\goodbreak
  \refstepcounter{subsection}%
  \begingroup
  \noindent\leavevmode
  \thesubsection\ -- #2\par
  \endgroup
  \@afterindentfalse
  \@afterheading
  \nobreak
  \vskip 2ex
  \addcontentsline{toc}{subsection}{%
    \protect\numberline{\thesubsection}%
    #1}%
  }
\def\unnumberedsubsectionwithtwoarguments[#1]#2{%
  \ifhmode\par\fi
  \removelastskip
  \vskip 3ex\goodbreak
  \begingroup
  \noindent\leavevmode
  #2\par
  \endgroup
  \@afterindentfalse
  \@afterheading
  \nobreak
  \vskip 2ex
  \addcontentsline{toc}{subsection}{%
%    \protect\numberline{\thesubsection}%
    #1}%
  }

\makeatother

