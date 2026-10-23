; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 10. Obtención de una cadena decimal
; Descripción: Convierte un número a una cadena decimal.

INCLUDE Irvine32.inc
.data
numero DWORD 12345
cadena BYTE 11 DUP(0)	;  Espacio para el numero y el cero final.

.code

main PROC
	mov eax, numero
	mov ebx, 10
	mov edi, OFFSET cadena + 10 ; Empezar por el final de la cadena.
	mov BYTE PTR [edi], 0

ciclo:
	; Dividir entre 10 para sacar un digito.
	mov edx, 0
	div ebx
	add dl, '0' ; Pasar el digito a caracter.
	dec edi
	mov [edi], dl
	cmp eax, 0
	jne ciclo	;  Repetir si quedan digitos.
	mov edx, edi
	call WriteString
	call Crlf
	exit

main ENDP

END main
