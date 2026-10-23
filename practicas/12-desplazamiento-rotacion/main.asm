; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 12. Desplazamiento y rotación
; Descripción: Muestra cómo cambian los bits al desplazarlos y rotarlos.

INCLUDE Irvine32.inc
.code

main PROC
	; Usar el mismo numero para ver cada cambio.
	mov eax, 80000001h
	shl eax, 1	;  00000002: se pierde el bit superior.
	call WriteHex
	call Crlf
	mov eax, 80000001h
	shr eax, 1	;  40000000: rellena con cero.
	call WriteHex
	call Crlf
	mov eax, 80000001h
	sar eax, 1	;  C0000000: conserva el signo.
	call WriteHex
	call Crlf
	mov eax, 80000001h
	rol eax, 1	;  00000003: el bit superior vuelve al inferior.
	call WriteHex
	call Crlf
	mov eax, 80000001h
	ror eax, 1	;  C0000000: el bit inferior vuelve al superior.
	call WriteHex
	call Crlf
	exit

main ENDP

END main
