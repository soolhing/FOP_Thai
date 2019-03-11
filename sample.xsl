<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output encoding="UTF-8"/>
	<xsl:template match="root">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- defines page layout -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4" page-height="29.7cm" page-width="21cm" margin-top="0.5cm" margin-bottom="0.75cm" margin-left="0.0cm" margin-right="0.0cm">
					<fo:region-body margin-top="6cm" margin-bottom="0.40cm" margin-left="0cm" margin-right="0cm"/>
					<fo:region-before region-name="Head" extent="6cm"/>
					<fo:region-after region-name="Foot" extent="0.5cm"/>
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="Stories">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="A4"/>
						
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="Stories">
			
				<fo:static-content flow-name="Head">

					<fo:table>
						<fo:table-column column-width="7.5cm"/>
						<fo:table-column column-width="12cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell height="2cm" padding-left="0.7cm">
									<fo:block>
										<fo:external-graphic src="file:///D:\006_Statement Online\000_Req\samplexml\images\tbank_statement_logo.jpg"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="14pt" font-family="THSarabunPSK" space-after.optimum="3pt" line-height="10pt">
										<xsl:value-of select="data/bankname"/>
									</fo:block>
								
									<xsl:for-each select="data/bankaddr/line">
										<fo:block font-size="12pt" font-family="THSarabunPSK" space-after.optimum="3pt" line-height="10pt">
											<xsl:value-of select="."/>
										</fo:block>
									</xsl:for-each>

									<!--/fo:block-->
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table space-after.optimum="13pt">
						<fo:table-column column-width="7.5cm"/>
						<fo:table-body font-size="8pt" font-family="THSarabunPSK">
							<fo:table-row line-height="8pt">
				
								<fo:table-cell padding-left="1.0cm">
									<xsl:for-each select="data/actype/line">
										<fo:block font-size="12pt" font-family="THSarabunPSK" space-after.optimum="3pt" line-height="10pt" start-indent="0.25cm">
											<xsl:value-of select="."/>
										</fo:block>
									</xsl:for-each>
									<xsl:for-each select="data/custaddr/line">
										<fo:block font-size="12pt" font-family="THSarabunPSK" space-after.optimum="3pt" line-height="10pt" start-indent="0.85cm">
											<xsl:value-of select="."/>
										</fo:block>
									</xsl:for-each>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<fo:table space-after.optimum="13pt">
						<fo:table-column column-width="21cm"/>
						<!--<fo:table-column column-width="7.5cm"/>
						<fo:table-column column-width="7.5cm"/>-->
						<fo:table-body font-size="12pt" font-family="THSarabunPSK">
							<xsl:for-each select="data/recordac">
								<fo:table-row line-height="8pt">
									<fo:table-cell>
									
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" start-indent="0.75cm">
											<fo:inline-container width="5cm">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">เลขที่บัญชี : 703-2-00211-9</fo:block>
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">Account No</fo:block>
											</fo:inline-container>
											<fo:inline-container width="7cm">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">สาขา : มาบุญครอง</fo:block>
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">Branch</fo:block>
											</fo:inline-container>
											<fo:inline-container width="7cm">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">วันที่ : 01/06/2018 – 30/06/2018</fo:block>
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">Date</fo:block>
											</fo:inline-container>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:static-content>

				<fo:static-content flow-name="Foot">
					

					<fo:block font-size="12pt" font-family="THSarabunPSK" text-align="center">Page <fo:page-number/> of <fo:page-number-citation ref-id="TheVeryLastPage"/></fo:block>
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:table border-width="thin" border-style="solid" border-color="black">
							<fo:table-column column-width="1.62cm"/>
							<fo:table-column column-width="1.28cm"/>
							<fo:table-column column-width="5.3cm"/>
							<fo:table-column column-width="1.3cm"/>
							<fo:table-column column-width="3.3cm"/>
							<fo:table-column column-width="1.9cm"/>
							<fo:table-column column-width="2.1cm"/>
							<fo:table-column column-width="4.2cm"/>
							<fo:table-header text-align="center">
								<fo:table-row height="24pt">
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">วันที่</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Date</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">เวลา</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Time</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" >
										<fo:block font-size="12pt" font-family="THSarabunPSK">รายละเอียด</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Description</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">สาขา</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Branch</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">ลูกหนี้/เจ้าหนี้</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Debit/Credit</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">ยอดเงินคงเหลือ</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Balance</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">ผู้ทำรายการ</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Teller ID</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK">ช่องทาง</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK">Source</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="5" padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
											<xsl:value-of select="data/recordbalance/balancedesc"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="right">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
											<xsl:value-of select="data/recordbalance/balanceamount"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
							<fo:table-body>
								<xsl:for-each select="data/record">

									<fo:table-row>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="date"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="time"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="left">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="description"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="branch"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
											<fo:inline-container width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt" text-align="right"><xsl:value-of select="debit"/></fo:block>
											</fo:inline-container>
											<fo:inline-container width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt" text-align="right"><xsl:value-of select="credit"/></fo:block>
											</fo:inline-container>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black"  text-align="right">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="balance"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="teller"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="left">
											<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
												<xsl:value-of select="source"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:for-each>
							</fo:table-body>
							<fo:table-body>
								<fo:table-row height="48pt">
									<fo:table-cell number-columns-spanned="4" padding-left="2cm" padding-top="0.25cm" border-width="thin" border-style="solid" border-color="black" text-align="center">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="left">TOTAL AMOUNTS (Debit)</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="left">TOTAL AMOUNTS (Credit)</fo:block>
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="left">TOTAL ITEMS</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" padding-top="0.25cm" border-width="thin" border-style="solid" border-color="black">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">
											<fo:inline-container  width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="right">179,741.00</fo:block>
											</fo:inline-container>
											<fo:inline-container width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="right"></fo:block>
											</fo:inline-container>
										</fo:block>

										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">
											<fo:inline-container  width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="right"></fo:block>
											</fo:inline-container>
											<fo:inline-container width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="right">132464.67</fo:block>
											</fo:inline-container>
										</fo:block>


										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">
											<fo:inline-container  width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="right">32</fo:block>
											</fo:inline-container>
											<fo:inline-container width="50%">
												<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt" text-align="right">14</fo:block>
											</fo:inline-container>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="12pt">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1mm" border-width="thin" border-style="solid" border-color="black" text-align="center">
										<fo:block font-size="12pt" font-family="THSarabunPSK" line-height="9pt">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<xsl:apply-templates/>
					<fo:block id="TheVeryLastPage">
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template match="@path">
	</xsl:template>
</xsl:stylesheet>
