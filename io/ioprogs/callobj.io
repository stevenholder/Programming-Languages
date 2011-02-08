p := Object clone
q := p clone
"Here is object q:" println
q println

q testit := method(
                      "Sender:" print;
                      call sender println;
					  "Message:" print;
					  call message println;
					  "Target:" print;
					  call target println )
"Sending the message....................." println					  
q testit

