; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 11. Operaciones lógicas
; Descripción: Muestra el resultado de AND, OR, XOR y NOT.

INCLUDE Irvine32.inc
.code

main PROC
	; Usar los mismos numeros para cada operacion.
	mov eax, 0Fh
	and eax, 33h	;  AND: 00000003
	call WriteHex
	call Crlf
	mov eax, 0Fh
	or eax, 33h	;  OR: 0000003F
	call WriteHex
	call Crlf
	mov eax, 0Fh
	xor eax, 33h	;  XOR: 0000003C
	call WriteHex
	call Crlf
	mov eax, 0Fh
	not eax	;  NOT de 32 bits: FFFFFFF0
	call WriteHex
	call Crlf
	exit

main ENDP

END main
