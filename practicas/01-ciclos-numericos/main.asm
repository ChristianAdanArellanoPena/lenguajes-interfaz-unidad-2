; Materia: Lenguajes de Interfaz
; Unidad: 2
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 1. Ciclos numéricos
; Descripción: Cuenta de cinco a uno con LOOP.

INCLUDE Irvine32.inc

; Inicio del programa.
.code
main PROC
	mov ecx, 5 ; Repetir cinco veces.

	ciclo:
	mov eax, ecx
	call WriteDec
	call crlf
	loop ciclo ; Restar uno y repetir.
	exit

main ENDP
END main
