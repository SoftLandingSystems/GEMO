
     D Psds           SDS
     D  PgmName          *PROC

     D Action          S              3
     D Msgdta          S            256
     D Msgid           S              7

     C     *Entry        Plist
     C                   Parm                    Action
     C
     C                   Select
     C                   When      Action = 'Add'
     C                   Callb     'T1ADDEMP'
     C                   When      Action = 'Chg'
     C                   Callb     'T1CHGEMP'
     C                   When      Action = 'Dlt'
     C                   Callb     'T1DLTEMP'
     C                   Other
     C                   Exsr      SendError
      * a comment on 4/15
     C                   Endsl
     C                   Eval      *Inlr = *On

     C     SendError     Begsr
     C                   Eval      Msgid = 'MT20001'
     C                   Eval      Msgdta = *Blanks
     C                   Callb     'T1SNDMSG'
     C                   Parm                    Msgid
     C                   Parm                    PgmName
     C                   Parm                    Msgdta
     C                   Endsr
