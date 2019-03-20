     FT1empf    O    E             DISK


     D Psds           SDS
     D  PgmName          *PROC

     D Msgdta          S            256
     D Msgid           S              7
     C
     C                   Exsr      AddEmp
     C                   Eval      Msgid = 'MT10002'
     C                   Eval      Msgdta = *Blanks
     C                   Exsr      SndMsg
     C
     C                   Return

     C     AddEmp        Begsr
     C                   Callb     'T1NEXTEMP'
     C                   Parm                    EmpID
     C                   Eval      EmpName = ' '
     C                   Write     Empfmt
     C                   Endsr

     C     SndMsg        Begsr
     C                   Callb     'T1SNDMSG'
     C                   Parm                    Msgid
     C                   Parm                    PgmName
     C                   Parm                    Msgdta
     C                   EndSr
