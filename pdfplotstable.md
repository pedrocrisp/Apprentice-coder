##pdfplotstable

Example nice table from csv in latex

```
\pgfplotstabletypeset[
    col sep=tab,
    string type,
   column type/.add={|}{},
    every head row/.style={before row=\hline,after row=\hline},
    every last row/.style={after row=\hline},
    every even row/.style={ before row={\rowcolor[gray]{0.9}}},
every head row/.style={ before row=\toprule,after row=\midrule},
every last row/.style={ after row=\bottomrule},
    ]{figs/sRNAfigs/el30siRNAFC.csv}
    ```
