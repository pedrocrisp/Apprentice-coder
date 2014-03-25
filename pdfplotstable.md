\pgfplotstabletypeset[
    col sep=tab,
    string type,
   %columns/Gene/.style={column name=Gene, column type={|l}},
   %columns/Control-counts-rpm/.style={column name=Control-counts-rpm, column type={|cl}},
   %columns/EL30-counts-rpm/.style={column name=EL30-counts-rpm, column type={|cl}},
   %columns/Fold-change/.style={column name=Fold-change, column type={|c|}},
   column type/.add={|}{},
    every head row/.style={before row=\hline,after row=\hline},
    every last row/.style={after row=\hline},
    every even row/.style={ before row={\rowcolor[gray]{0.9}}},
every head row/.style={ before row=\toprule,after row=\midrule},
every last row/.style={ after row=\bottomrule},
    ]{figs/sRNAfigs/el30siRNAFC.csv}
