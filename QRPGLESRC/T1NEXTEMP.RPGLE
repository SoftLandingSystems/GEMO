     FT1nextempfUF A E           K DISK

     C     *Entry        Plist
     C                   Parm                    NextID

     C     '1'           Chain     Nextemp                            50
     C                   If        *In50 = *Off
     C                   Eval      NextID = NextID + 1
     C                   Update    Nextemp
     C                   Else
     C                   Eval      NextID = 1
     C                   Eval      NextKey = '1'
     C                   Write     Nextemp
     C                   Endif
     C                   Return
