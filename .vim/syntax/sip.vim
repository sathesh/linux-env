" Vim syntax file
" Language: Celestia Star Catalogs
" Maintainer: Murli S
" Latest Revision: 16 Dec 2009

if exists("b:current_syntax")
	finish
endif

set foldmethod=marker
set foldlevel=0

"Use 'Setfold' to create foldmarked in current buffer.
command Setfold %! /home/smurli/python/cscf_log/sip_marker.py %

syn case ignore

syn keyword sipMethodName REGISTER INVITE CANCEL BYE UPDATE NOTIFY PRACK ACK OPTIONS BYE REFER NOTIFY MESSAGE SUBSCRIBE INFO
syn match sipResponse 'SIP/2\.0 \d\+.*' 
syn keyword error error

syn match sipHeaders 'From\:'
syn match sipHeaders 'To\:'
syn match sipHeaders 'Call-ID\:'
syn match sipHeaders 'CSeq\:' 
syn match sipHeaders 'Call-ID\:' 
syn match sipHeaders 'Contact\:' 
syn match sipHeaders 'Via\:' 
syn match sipHeaders 'Route\:'
syn match sipHeaders 'Content-Length\:' 
syn match sipHeaders 'Content-Type\:' 
syn match sipHeaders 'Content-Disposition\:' 
syn match sipHeaders 'Max-Forwards\:' 
syn match sipHeaders 'P-Asserted-Identity\:' 
syn match sipHeaders 'Record-Route\:' 
syn match sipHeaders 'P-Charging-Vector\:'

syn match CSCFModule 'PCSCF\:'
syn match CSCFModule 'SCSCF\:'

let b:current_syntax = "sip"
hi def link error Error
hi def link  sipMethodName Underlined
hi def link  sipResponse Underlined
hi def link  sipHeaders Constant
hi def link  CSCFModule Todo



