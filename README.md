# Resume

Source files for Félix Alejandro Guzmán's resume.

## Files
- `resume.md` — content source (Markdown)
- `resume.html` — styled, print-ready HTML (used for PDF rendering)
- `render_resume.sh` — script that renders `resume.html` → `Felix_Guzman_Resume.pdf`
- `Felix_Guzman_Resume.pdf` — rendered output (committed for convenience)

## Render
```
./render_resume.sh
```
Requires `chromium` or `google-chrome` on PATH. Output goes to `Felix_Guzman_Resume.pdf` in this folder.

## Editing
Update `resume.md` and `resume.html` together (HTML is the source of truth for layout). The PDF must fit on a single page — re-render and verify with `pdfinfo Felix_Guzman_Resume.pdf` (look for `Pages: 1`).
