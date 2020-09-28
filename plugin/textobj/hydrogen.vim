if exists('g:loaded_textobj_hydrogen')
  finish
endif

call textobj#user#plugin('hydrogen', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'ah',  '*select-a-function*': 's:select_a',
\        'select-i': 'ih',  '*select-i-function*': 's:select_i'
\      }
\    })

function! s:select_a()
  let start_line = search("^# %%", "cbnW")
  let end_line = search("^# %%", "nW")

  " Just in case the notebook is malformed and doesnt
  " have a cell marker at the start.
  if start_line == 0
    let start_line == 1
  endif

  if end_line == 0 " We are the last cell
    let end_line = line('$')
  else
    let end_line = end_line - 1
  endif

  let curr_pos = getpos('.')
  let start_pos = [curr_pos[0], start_line , 1, curr_pos[3]]
  let end_pos = [curr_pos[0], end_line, 0, curr_pos[3]]

  return ['V', start_pos, end_pos]
endfunction

function! s:select_i()
  let start_line = search("^# %%", "cbnW")
  let end_line = search("^# %%", "nW")

  " Just in case the notebook is malformed and doesnt
  " have a cell marker at the start.
  if start_line == 0
    let start_line == 1
  endif
  echoe start_line

  if end_line == 0 " We are the last cell
    let end_line = line('$')
  else
    let end_line = end_line - 1
  endif

  let curr_pos = getpos('.')
  let start_pos = [curr_pos[0], start_line + 1 , 1, curr_pos[3]]
  let end_pos = [curr_pos[0], end_line, 0, curr_pos[3]]

  return ['V', start_pos, end_pos]
endfunction

let g:loaded_textobj_hydrogen = 1
