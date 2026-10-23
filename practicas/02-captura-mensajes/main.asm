; Materia: Lenguajes de Interfaz
; Unidad: 2
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 2. Captura y desplegado de mensajes
; Descripción: Captura y muestra un nombre; reserva espacio para el terminador.

INCLUDE Irvine32.inc

; Mensajes y variables.
.data
	mensaje BYTE "Escribe tu nombre: ",0
	nombre BYTE 30 DUP(0)

; Inicio del programa.
.code
main PROC
	mov edx, OFFSET mensaje
	call WriteString

	mov edx, OFFSET nombre
	mov ecx, SIZEOF nombre - 1 ; Dejar espacio para el cero final.

	call ReadString ; Guardar el nombre.

	mov edx, OFFSET nombre
	call WriteString
	exit
main ENDP
END main
