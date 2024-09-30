axlCmdRegister("test" 'test111)

procedure( dataH(cid data)
    printf("getdata from py: cid: %L Msg: %s\n" cid data)
    printf("skill->py sending ack1 to py\n")
    ipcWriteProcess( cid "ack1 \n" )
)

procedure( simErr(cid err)
    printf("Error %L Msg: %s\n" cid err)
    ipcKillProcess(cid)
)

procedure( simTerm(cid exit)
    printf("Simulator expired with exit status = %L %d\n" cid exit)
    (drain (inSkill stdout))
)

procedure( test111()
cid = ipcBeginProcess("python z:/downloads/skill/test.py" "" 'dataH 'simErr 'simTerm)
)