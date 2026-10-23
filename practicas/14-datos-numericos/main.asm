; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 14. Captura y almacenamiento de datos numéricos
; Descripción: Lee cinco números, los guarda y después los muestra.

INCLUDE Irvine32.inc
.data
msgEntrada BYTE "Introduce un entero con signo: ",0
msgError BYTE "Entrada invalida; intenta nuevamente.",0
msgDatos BYTE "Datos almacenados:",0
datos SDWORD 5 DUP(?)

.code

main PROC
	mov esi, OFFSET datos
	mov ebx, 0

ciclo:
	mov edx, OFFSET msgEntrada
	call WriteString
	call ReadInt
	jo error	;  Volver a pedirlo si no es valido.
	mov [esi], eax ; Guardar el numero.
	add esi, 4 ; Cada numero ocupa 4 bytes.
	inc ebx
	cmp ebx, 5
	jl ciclo
	mov edx, OFFSET msgDatos
	call WriteString
	call Crlf
	mov esi, OFFSET datos
	mov ebx, 0

mostrar:
	mov eax, [esi] ; Leer el numero guardado.
	call WriteInt
	call Crlf
	add esi, 4 ; Cada numero ocupa 4 bytes.
	inc ebx
	cmp ebx, 5
	jl mostrar
	exit

error:
	mov edx, OFFSET msgError
	call WriteString
	call Crlf
	jmp ciclo

main ENDP

END main
