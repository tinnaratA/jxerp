SELECT AP_CREDITOR.CREDITOR_ACCT, AP_CREDITOR.NAME, 
AP_CREDITOR.TH_NAME, 
AP_CREDITOR.creditor_type,
AP_CREDITOR.CREDIT_TERM, 
AP_CREDITOR.CURRENCY_CODE, 
AP_LEDGER.DOC_NO, 
AP_LEDGER.DOC_DATE, 
AP_LEDGER.REF_NO,
AP_LEDGER.REF_DATE,
AP_LEDGER.TRX_TYPE, 
AP_LEDGER.DESCS,
AP_LEDGER.CURRENCY_RATE,round( AP_LEDGER.MBASE_AMT,2) as MBASE_AMT, round(AP_LEDGER.MTAX_AMT,2)  AS MTAX_AMT, AP_LEDGER.MDOC_AMT, AP_LEDGER.FBASE_AMT, AP_LEDGER.FTAX_AMT, AP_LEDGER.FDOC_AMT, AP_LEDGER.MBAL_AMT, AP_LEDGER.CLASS, AP_LEDGER.UPDATE_USER, AP_LEDGER.UPDATE_DATE,AP_LEDGER.BANK_CD
FROM AP_CREDITOR
   INNER JOIN AP_LEDGER ON (AP_CREDITOR.CREDITOR_ACCT = AP_LEDGER.CREDITOR_ACCT)
WHERE CLASS in('I','C','D')
AND AP_LEDGER.MBASE_AMT<>0
and doc_date >=:pFromDate
and doc_date <=:pToDate
--and doc_date >='8/1/2013'
--and doc_date <='8/30/2013'
ORDER BY DOC_DATE,DOC_NO

