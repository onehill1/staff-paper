\version "2.22.2"
#(set-global-staff-size 22)

\book {
  \header {
    tagline = ##f
  }
  \score {
    {
      \repeat unfold 24 { s1 \break }
    }
    \layout {
      indent = 0
      \context {
        \Staff
        \remove "Time_signature_engraver"
        \remove "Clef_engraver"
        \remove "Bar_engraver"
      }
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }

  \paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##f
    line-width = 7.5\in
    left-margin = 0.5\in
    bottom-margin = 0.5\in
    top-margin = 0.75\in
    print-page-number = ##f
  }
}
