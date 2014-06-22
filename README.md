# unite-candidate_sorter

Sorting unite candidates.

## Screencapture

![sort](https://cloud.githubusercontent.com/assets/214488/3350459/e2060aea-f9b1-11e3-9064-86cbc56a80bd.gif)

## Setting

```vim

augroup my-unite
  autocmd!
  autocmd FileType unite
\   nmap <silent><buffer> S <Plug>(unite-candidate_sort)
augroup END
```

