; Materia: Lenguajes de Interfaz
; Unidad: 2
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 5. Condicionales
; Descripción: Repite mientras el contador sea menor o igual a cien.

INCLUDE Irvine32.inc
; Inicio del programa.
.code
main PROC
	mov ebx, 1
ciclo:
	CMP ebx, 100 ; Terminar cuando pase de cien.
	jg fin

	mov eax, ebx
	call WriteDec
	call crlf

	inc ebx ; Aumentar el contador.

	jmp ciclo

fin:
	exit
main ENDP
END main
