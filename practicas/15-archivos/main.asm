; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 15. Manipulación de archivos
; Descripción: Guarda un mensaje en un archivo y después lo lee.

INCLUDE Irvine32.inc
.data
nombreArchivo BYTE "practica15-datos.txt",0
mensaje BYTE "Lenguajes de Interfaz - Unidad 2",13,10
longitud = SIZEOF mensaje
buffer BYTE longitud + 1 DUP(0)
archivo DWORD ?
msgError BYTE "No se pudo completar la operacion de archivo.",0

.code

main PROC
	; Crear el archivo de texto.
	mov edx, OFFSET nombreArchivo
	call CreateOutputFile
	cmp eax, INVALID_HANDLE_VALUE
	je error
	mov archivo, eax ; Guardar el identificador del archivo.
	mov edx, OFFSET mensaje
	mov ecx, longitud
	call WriteToFile ; Escribir el mensaje.
	jc cerrar
	cmp eax, longitud
	jne cerrar
	mov eax, archivo
	call CloseFile
	cmp eax, 0
	jz error
	; Abrir el archivo y leer lo que se guardo.
	mov edx, OFFSET nombreArchivo
	call OpenInputFile
	cmp eax, INVALID_HANDLE_VALUE
	je error
	mov archivo, eax ; Guardar el identificador del archivo.
	mov edx, OFFSET buffer
	mov ecx, longitud
	call ReadFromFile ; Leer el mensaje.
	jc cerrar
	mov BYTE PTR buffer[eax], 0
	mov eax, archivo
	call CloseFile
	cmp eax, 0
	jz error
	mov edx, OFFSET buffer
	call WriteString
	jmp fin

cerrar:
	mov eax, archivo
	call CloseFile

error:
	mov edx, OFFSET msgError
	call WriteString
	call Crlf

fin:
	exit

main ENDP

END main
