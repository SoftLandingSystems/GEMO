     FT1empf    UF   E             DISK

     D Psds           SDS
     D  PgmName          *PROC

     D Msgdta          S            256
     D Msgid           S              7

     C
     C                   Exsr      ClrMsg
     C                   Exsr      DltEmp
     C                   Eval      Msgid = 'MT20004'
     C                   Eval      Msgdta = *Blanks
     C                   Exsr      SndMsg
     C
     C                   Return

     C     DltEmp        Begsr
     C     EmpID         Chain     EmpFmt                             50
     C                   If        *In50 = *Off
     C                   Eval      EmpName = ' '
     C                   Delete    Empfmt
     C                   Endif
     C                   Endsr

     C     ClrMsg        Begsr
     C                   Callb     'T1CLRMSG'
     C                   Parm                    PgmName
     C                   EndSr

     C     SndMsg        Begsr
     C                   Callb     'T1SNDMSG'
     C                   Parm                    Msgid
     C                   Parm                    PgmName
     C                   Parm                    Msgdta
     C                   EndSr
