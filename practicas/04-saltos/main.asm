; Materia: Lenguajes de Interfaz
; Unidad: 2
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 4. Saltos
; Descripción: Selecciona una rama mediante JE y JMP.

INCLUDE Irvine32.inc

; Mensajes y variables.
.data
	msgIguales BYTE "Los valores son iguales", 0
	msgDiferentes BYTE "los valores son diferentes", 0

; Inicio del programa.
.code
main PROC
	mov eax, 10
	mov ebx, 10
	CMP eax, ebx ; Revisar si son iguales.

	JE iguales
	mov edx, OFFSET msgDiferentes
	call writeString
	jmp fin

	iguales:
		mov edx, OFFSET msgIguales
		call writeString
		jmp fin

	fin:
		call crlf
		exit

main ENDP
END main
