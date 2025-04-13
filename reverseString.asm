INCLUDE Irvine32.inc

.data

aName BYTE "Stephen Omitoki", 0
lenght BYTE LENGTHOF aName


.code

MAIN PROC
     xor esi, esi
     mov ecx, LENGTHOF aName -1
     mov esi, OFFSET aName

ProcessLetters:

     movzx eax, BYTE PTR [esi]
     push eax
     inc esi
	 loop ProcessLetters
	 
	 
	 
	 mov ecx, LENGTHOF aName -1
	 mov esi, OFFSET aName

ReverseString:
 
     pop eax
     mov [esi], al
     inc esi
     loop ReverseString

;displayString
     mov edx, OFFSET aName
     call WriteString
     call Crlf
     
	 exit



MAIN ENDP

END MAIN