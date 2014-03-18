#Open multiple files in browser

On Lunix

    for report in  Sample_*/Sample_*.trimmed.fq_fastqc/fastqc_report.html \
    do \
    chromium "file://$(readlink -f $report)" & \
    done

---

On osX

    for report in  Sample_*/Sample_*_fastqc/fastqc_report.html \
    do \
    open "file://$(greadlink -f $report)" & \
    done
