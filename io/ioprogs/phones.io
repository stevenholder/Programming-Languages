OperatorTale addAssignOperator(":", "atPutNumber")
curlyBrackets := method(
                          r := Map clone
						  call message arguments foreach(arg, r doMessage(arg))
					   )
Map atPutNumber := method(
                          self atPut(
                                       call evalArgAt(0) asMutable removePrefix("\") removeSuffix("\"),
							           call evalArgAt(1)
									)
					     )
s := File with("phones.txt") openForReading contents
phones := doString(s)
phones keys println
phones values println

