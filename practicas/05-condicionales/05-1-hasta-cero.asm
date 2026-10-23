; Materia: Lenguajes de Interfaz
; Alumno: Christian Adan Arellano Peña
; Horario: 9 a 10 a. m.
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 5.1. Repetir hasta cero
; Descripción: Muestra enteros hasta recibir cero; admite positivos y negativos.

INCLUDE Irvine32.inc
.data
mensaje BYTE "Introduce un entero (0 termina): ",0
.code
main PROC
ciclo:
    mov edx, OFFSET mensaje
    call WriteString
    call ReadInt
    jo ciclo                 ; Volver a pedir un numero.
    cmp eax, 0
    je fin                   ; Salir si escribe cero.
    call WriteInt
    call Crlf
    jmp ciclo
fin:
    exit
main ENDP
END main
