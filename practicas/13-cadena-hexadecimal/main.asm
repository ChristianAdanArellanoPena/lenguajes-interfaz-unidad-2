; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 13. Obtención de una cadena hexadecimal
; Descripción: Convierte un número a una cadena hexadecimal.

INCLUDE Irvine32.inc
.data
numero DWORD 1234ABCDh
tabla BYTE "0123456789ABCDEF"
cadena BYTE 9 DUP(0)

.code

main PROC
	mov eax, numero
	mov edi, OFFSET cadena + 7
	mov ecx, 8

ciclo:
	; Tomar los ultimos 4 bits y buscar su letra o numero.
	mov ebx, eax
	and ebx, 0Fh ; Obtener un digito hexadecimal.
	mov dl, tabla[ebx]
	mov [edi], dl
	shr eax, 4 ; Pasar al siguiente digito.
	dec edi
	loop ciclo
	mov edx, OFFSET cadena
	call WriteString
	call Crlf
	exit

main ENDP

END main
