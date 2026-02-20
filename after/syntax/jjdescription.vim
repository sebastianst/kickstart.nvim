syn region jjDiffRegion start=/^JJ: Full diff:/ end=/\%$/ contains=jjDiffContext,jjDiffAdded,jjDiffRemoved,jjDiffFile,jjDiffIndex,jjDiffHunk,jjDiffOldFile,jjDiffNewFile

syn match jjDiffContext /^JJ: .*/    contained contains=jjPrefix
syn match jjDiffAdded   /^JJ: +.*/   contained contains=jjPrefix
syn match jjDiffRemoved /^JJ: -.*/   contained contains=jjPrefix
syn match jjDiffFile    /^JJ: diff --git.*/  contained contains=jjPrefix
syn match jjDiffIndex   /^JJ: index .*/  contained contains=jjPrefix
syn match jjDiffHunk    /^JJ: @@.*@@.*/  contained contains=jjPrefix
syn match jjDiffOldFile /^JJ: --- .*/  contained contains=jjPrefix
syn match jjDiffNewFile /^JJ: +++ .*/  contained contains=jjPrefix
syn match jjPrefix      /^JJ: /      contained conceal

hi def link jjDiffAdded   diffAdded
hi def link jjDiffRemoved diffRemoved
hi def link jjDiffFile    diffFile
hi def link jjDiffIndex   diffIndexLine
hi def link jjDiffHunk    diffLine
hi def link jjDiffOldFile diffFile
hi def link jjDiffNewFile diffFile
hi def link jjDiffContext Comment
