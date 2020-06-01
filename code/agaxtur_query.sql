select
    txn.row_id transaction_id,
    txn.type_cd transaction_type,
    txn.sub_type_cd transaction_subtype,
    prod.name product_name,
    txn.process_dt process_dt,
    member.mem_num,
    partner.name partner_name,
    txn.status_cd transaction_status,
    txn.comments comments,
    contact.fst_name first_name,
    contact.last_name last_name,
    contact.soc_security_num cpf,
    txn_x.x_attrib_52 external_transaction_id,
    ((CASE WHEN txn.TYPE_CD IN ('ACCRUAL') AND txn.SUB_TYPE_CD IN ('Product','Action Based Bonus')AND def_acrl.DISPLAY_NAME IN ('Milhas') THEN acrl.ACCRUALED_VALUE ELSE 0 END) +
    (CASE WHEN txn.TYPE_CD IN ('REDEMPTION') AND txn.SUB_TYPE_CD IN ('Cancellation') AND def_rdm.DISPLAY_NAME in ('Milhas') THEN rdm.VALUE *-1 ELSE 0 END)) as miles_val,
    tier.name tier
from
rwzd_siebel_oci.s_loy_txn txn 
inner join rwzd_siebel_oci.s_prod_int prod on txn.prod_id = prod.row_id
inner join rwzd_siebel_oci.s_loy_member member on member.row_id = txn.member_id
inner join rwzd_siebel_oci.s_org_ext partner on txn.partner_id  = partner.row_id
inner join rwzd_siebel_oci.s_contact contact on contact.row_id = member.pr_con_id
left join rwzd_siebel_oci.s_loy_txn_x txn_x on txn_x.par_row_id = txn.row_id
left join rwzd_siebel_oci.s_loy_acrl_itm acrl on txn.row_id = acrl.txn_id
left join rwzd_siebel_oci.s_loy_rdm_itm rdm on txn.row_id = rdm.txn_id
left join rwzd_siebel_oci.S_LOY_ATTRDEFN def_acrl on def_acrl.row_id = acrl.attrib_defn_id
left join rwzd_siebel_oci.S_LOY_ATTRDEFN def_rdm on def_rdm.row_id = rdm.attrb_defn_id
left join rwzd_siebel_oci.s_loy_tier tier on member.pr_dom_tier = tier.row_id and tier.created in (
            select max(tier.created) from rwzd_siebel_oci.s_loy_tier tier 
            inner join rwzd_siebel_oci.s_loy_member member on member.pr_dom_tier = tier.row_id
            left join rwzd_siebel_oci.s_loy_txn txn on member.row_id = txn.member_id
            inner join rwzd_siebel_oci.s_prod_int prod on txn.prod_id = prod.row_id
            where
                txn.process_dt > '2020-01-01' and
                txn.process_dt < '2020-02-01' and
                prod.name = 'Creditos Agaxtur'and
                txn.type_cd = 'ACCRUAL'
            )
where 
txn.process_dt > '2020-01-01' and
txn.process_dt < '2020-02-01' and
prod.name = 'Creditos Agaxtur'and
txn.type_cd = 'ACCRUAL'




left join rwzd_siebel_oci.S_LOY_ATTRDEFN def on acrl.attrib_defn_id = def.row_id



Calendar&quot;.&quot;Date&quot; &gt;= TIMESTAMPADD(SQL_TSI_MONTH, -1, TIMESTAMPADD( SQL_TSI_DAY , DAYOFMONTH( CURRENT_DATE) * -(1) + 1, CURRENT_DATE)) AND 
&quot;Calendar&quot;.&quot;Date&quot; &lt;TIMESTAMPADD( SQL_TSI_DAY , DAYOFMONTH( CURRENT_DATE) * -(1) + 1, CURRENT_DATE)

                    <sawx:expr xsi:type="sawx:sqlExpression">&quot;Product&quot;.&quot;Product Name&quot;</sawx:expr>
                    <sawx:expr xsi:type="xsd:string">Creditos Agaxtur</sawx:expr>

<sawx:expr xsi:type="sawx:sqlExpression">&quot;Transaction&quot;.&quot;Transaction Type&quot;</sawx:expr>
                    <sawx:expr xsi:type="xsd:string">ACCRUAL</sawx:expr>



Adicionar clube 
adicionar tier