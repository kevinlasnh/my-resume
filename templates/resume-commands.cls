% resume-commands.cls
% Custom Resume Class - Based on Jake's Resume (MIT License)
% Customized for Three-Tier Data Flow Resume System
% Font: Roboto (Sans-Serif, ATS-friendly)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume-commands}[2026/02/06 Custom Resume Class]

% Base class
\LoadClass[letterpaper,11pt]{article}

%----------PACKAGES----------
\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{verbatim}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[english]{babel}
\RequirePackage{tabularx}
\RequirePackage{fontawesome5}
\input{glyphtounicode}

%----------FONT: Roboto Sans-Serif----------
\RequirePackage[sfdefault]{roboto}

%----------PAGE STYLE----------
\pagestyle{fancy}
\fancyhf{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%----------MARGINS----------
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1in}
\addtolength{\topmargin}{-.5in}
\addtolength{\textheight}{1.0in}

\urlstyle{same}
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

%----------SECTION FORMATTING----------
\titleformat{\section}{
  \vspace{-4pt}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

%----------ATS OPTIMIZATION----------
\pdfgentounicode=1

%==========================================================
% CUSTOM COMMANDS
%==========================================================

%----------LIST HELPERS----------
\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=0.15in, label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}
\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}

%----------BULLET ITEM----------
\newcommand{\resumeItem}[1]{
  \item\small{{#1 \vspace{-2pt}}}
}
\newcommand{\resumeSubItem}[1]{\resumeItem{#1}\vspace{-4pt}}

%----------LAYER 2: EDUCATION----------
% Args: {Institution}{Location}{Degree}{Dates}
\newcommand{\resumeSubheading}[4]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-7pt}
}

%----------LAYER 5: EXPERIENCE (with company description)----------
% Args: {Company}{Dates}{Position}{Location}{CompanyDesc}
\newcommand{\resumeExperienceHeading}[5]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} \textit{\small--- #5} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-7pt}
}
%--- end layer 5

%----------LAYER 4: PROJECTS----------
% Args: {Name $|$ TechStack}{Dates}{URL}{Role -- Type}
\newcommand{\resumeProjectHeading}[4]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \small#1 & #2 \\
      \textit{\small#4} $|$ \href{#3}{\underline{\small#3}} & \\
    \end{tabular*}\vspace{-7pt}
}
%--- end layer 4

%----------LAYER 6A: PUBLICATIONS----------
% Args: {Title}{Authors}{Venue}{Status}{Date}{URL}
\newcommand{\resumePublication}[6]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \small\textbf{#1} & \textit{\small#5} \\
    \end{tabular*}
    \small#2 \\
    \small\textit{#3} $|$ \textbf{#4} $|$ \href{#6}{\underline{\small Link}}
    \vspace{-5pt}
}
%--- end layer 6a

%----------LAYER 6B: AWARDS----------
% Args: {Title}{Issuer}{Date}
\newcommand{\resumeAward}[3]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \small\textbf{#1} --- \small#2 & \textit{\small#3} \\
    \end{tabular*}\vspace{-7pt}
}
%--- end layer 6b
