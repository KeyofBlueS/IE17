; Listing generated by Microsoft (R) Optimizing Compiler Version 19.41.34120.0 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	DllMain
EXTRN	__imp_CloseHandle:PROC
EXTRN	__imp_CreateThread:PROC
EXTRN	?DLLAttach@@YAKPEAUHINSTANCE__@@@Z:PROC		; DLLAttach
;	COMDAT pdata
pdata	SEGMENT
$pdata$DllMain DD imagerel $LN11
	DD	imagerel $LN11+59
	DD	imagerel $unwind$DllMain
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$DllMain DD 010401H
	DD	06204H
xdata	ENDS
; Function compile flags: /Ogtpy
; File C:\Users\PC\source\repos\IE17-Client\IE17-Client\dllmain.cpp
;	COMDAT DllMain
_TEXT	SEGMENT
hModule$ = 64
ul_reason_for_call$ = 72
lpReserved$ = 80
DllMain	PROC						; COMDAT

; 9    : {

$LN11:
	sub	rsp, 56					; 00000038H

; 10   :     switch (ul_reason_for_call)

	cmp	edx, 1
	jne	SHORT $LN9@DllMain

; 11   :     {
; 12   :     case DLL_PROCESS_ATTACH:
; 13   :         CloseHandle(CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)DLLAttach, hModule, 0, NULL));

	xor	eax, eax
	lea	r8, OFFSET FLAT:?DLLAttach@@YAKPEAUHINSTANCE__@@@Z ; DLLAttach
	mov	r9, rcx
	mov	QWORD PTR [rsp+40], rax
	xor	edx, edx
	mov	DWORD PTR [rsp+32], eax
	xor	ecx, ecx
	call	QWORD PTR __imp_CreateThread
	mov	rcx, rax
	call	QWORD PTR __imp_CloseHandle
$LN9@DllMain:

; 14   :     case DLL_THREAD_ATTACH:
; 15   :     case DLL_THREAD_DETACH:
; 16   :     case DLL_PROCESS_DETACH:
; 17   :         break;
; 18   :     }
; 19   :     return TRUE;
; 20   : }

	mov	eax, 1
	add	rsp, 56					; 00000038H
	ret	0
DllMain	ENDP
_TEXT	ENDS
END
