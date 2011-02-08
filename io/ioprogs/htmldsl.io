Builder := Object clone      

Builder forward :=  method( writeln("<", call message name, ">")
                            call message arguments foreach( arg,
						                                   content := self doMessage(arg)
														   if(content type == "Sequence")if (content != nil)
														                                     writeln(content)
											              )
				            writeln("</>", call message name, ">")
			               )

Builder html(
          head(
		        title("My page")
			  ),
		  body(
		        p("This is the paragraph in my web page"),
				p("This is another paragraph")
			  )
			)
 
