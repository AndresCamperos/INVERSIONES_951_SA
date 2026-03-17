<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fo="http://www.w3.org/1999/XSL/Format" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:dgii="http://dgi-fep.mef.gob.pa" 
	xmlns:dgi="http://dgi-fep.mef.gob.pa"
	xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

	<xsl:output method="xml" indent="yes"/>
	<!-- Parámetros del constructor al XSL -->
	<xsl:param name="LogoBase64Image"/>
	<xsl:param name="MarcaAgua"/>
	<xsl:param name="EmisorRif"/>
	<xsl:param name="EmisorNombre"/>
	<xsl:param name="EmisorDomicilio"/>
	<xsl:param name="EmisorTelefono"/>
    <xsl:param name="EmisorCorreo"/>
	<xsl:param name="MarcaAguaPersonalizada"/>
	<xsl:param name="EncabezadoImagen"/>
	<xsl:param name="CodigoOperacion"/>
	<xsl:param name="PiePagImagen"/>
	<xsl:param name="QrBase64Image"/>
	<xsl:param name="MonedaBase"/>
	<xsl:attribute-set name="Titulo01">
		<xsl:attribute name="font-size">14pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Titulo02">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="BordeAll">
		<xsl:attribute name="border-top-style">solid</xsl:attribute>
		<xsl:attribute name="border-top-width">0.30mm</xsl:attribute>
		<xsl:attribute name="border-top-color">#1c1c1b</xsl:attribute>
		<xsl:attribute name="border-left-style">solid</xsl:attribute>
		<xsl:attribute name="border-left-width">0.30mm</xsl:attribute>
		<xsl:attribute name="border-left-color">#1c1c1b</xsl:attribute>
		<xsl:attribute name="border-right-style">solid</xsl:attribute>
		<xsl:attribute name="border-right-width">0.30mm</xsl:attribute>
		<xsl:attribute name="border-right-color">#1c1c1b</xsl:attribute>
		<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
		<xsl:attribute name="border-bottom-width">0.30mm</xsl:attribute>
		<xsl:attribute name="border-bottom-color">#1c1c1b</xsl:attribute>
	</xsl:attribute-set>
    <xsl:attribute-set name="BordeAllBlue">
		<xsl:attribute name="border-top-style">solid</xsl:attribute>
		<xsl:attribute name="border-top-width">1</xsl:attribute>
		<xsl:attribute name="border-top-color">#241B36</xsl:attribute>
		<xsl:attribute name="border-left-style">solid</xsl:attribute>
		<xsl:attribute name="border-left-width">1</xsl:attribute>
		<xsl:attribute name="border-left-color">#241B36</xsl:attribute>
		<xsl:attribute name="border-right-style">solid</xsl:attribute>
		<xsl:attribute name="border-right-width">1</xsl:attribute>
		<xsl:attribute name="border-right-color">#241B36</xsl:attribute>
		<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
		<xsl:attribute name="border-bottom-width">1</xsl:attribute>
		<xsl:attribute name="border-bottom-color">#241B36</xsl:attribute>
	</xsl:attribute-set>
    <!-- Estilo de borde: Right -->
	<xsl:attribute-set name="BordeR">
		<xsl:attribute name="border-right-style">solid</xsl:attribute>
		<xsl:attribute name="border-right-width">2</xsl:attribute>
		<xsl:attribute name="border-right-color">#793200</xsl:attribute>
	</xsl:attribute-set>
    <!-- Estilo de borde: Right WHITE-->
	<xsl:attribute-set name="BordeRW">
		<xsl:attribute name="border-right-style">solid</xsl:attribute>
		<xsl:attribute name="border-right-width">1.5</xsl:attribute>
		<xsl:attribute name="border-right-color">white</xsl:attribute>
	</xsl:attribute-set>
    <!-- Estilo de borde: LEFT -->
	<xsl:attribute-set name="BordeL">
		<xsl:attribute name="border-left-style">solid</xsl:attribute>
		<xsl:attribute name="border-left-width">2</xsl:attribute>
		<xsl:attribute name="border-left-color">#793200</xsl:attribute>
	</xsl:attribute-set>
    <!-- Estilo de borde: TOP -->
	<xsl:attribute-set name="BordeT">
		<xsl:attribute name="border-top-style">solid</xsl:attribute>
		<xsl:attribute name="border-top-width">1.5</xsl:attribute>
		<xsl:attribute name="border-top-color">#793200</xsl:attribute>
	</xsl:attribute-set>
     <!-- Estilo de borde: BOTTOM -->
	<xsl:attribute-set name="BordeB">
		<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
		<xsl:attribute name="border-bottom-width">1.5</xsl:attribute>
		<xsl:attribute name="border-bottom-color">#793200</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Texto01">
		<xsl:attribute name="font-size">9pt</xsl:attribute>
		<xsl:attribute name="font-family">Segoe UI Normal</xsl:attribute>
		<xsl:attribute name="color">#130f0f</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Texto02">
		<xsl:attribute name="font-size">8.5pt</xsl:attribute>
		<xsl:attribute name="font-family">Segoe UI Normal</xsl:attribute>
		<xsl:attribute name="color">#130f0f</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Texto03">
		<xsl:attribute name="font-size">6.5pt</xsl:attribute>
		<xsl:attribute name="color">#2E2E2D</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Texto075">
		<xsl:attribute name="font-size">7.5pt</xsl:attribute>
		<xsl:attribute name="font-family">Segoe UI Normal</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Texto083">
		<xsl:attribute name="font-size">8.5pt</xsl:attribute>
		<xsl:attribute name="font-family">Segoe UI Normal</xsl:attribute>
		<xsl:attribute name="color">#130f0f</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="Texto08">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Segoe UI Normal</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="TextoPieImprenta">
		<xsl:attribute name="font-size">7.2pt</xsl:attribute>
		<xsl:attribute name="color">#2E2E2D</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="TextoN01">
		<xsl:attribute name="font-size">9pt</xsl:attribute>
        <xsl:attribute name="font-family">Segoe UI Negrita</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="TextoN02">
		<xsl:attribute name="font-size">8.5pt</xsl:attribute>
        <xsl:attribute name="font-family">Segoe UI Negrita</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="TextoN08">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="TextoN075">
		<xsl:attribute name="font-size">7.5pt</xsl:attribute>
        <xsl:attribute name="font-family">Segoe UI Negrita</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>
    <xsl:attribute-set name="TextoN10">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>
    <xsl:attribute-set name="TextoN065">
		<xsl:attribute name="font-size">6.5pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:decimal-format name="customFormat" decimal-separator="," grouping-separator="."/>

	<!-- Funciones -->
   	<xsl:template name="IsZero">
        <xsl:param name="valor"/>
        <xsl:param name="decimales"/>
		<xsl:choose>
			<xsl:when test="$valor!=''">
				<xsl:choose>
					<xsl:when test="$decimales = '0'">
						<xsl:value-of select="$valor"/>
					</xsl:when>
					<xsl:when test="$decimales = '4'">
						<xsl:choose>
							<xsl:when test="$valor > 1.00">
								<xsl:value-of select="format-number($valor, '###.###,0000','customFormat')"/>

							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number($valor,'0,0000','customFormat')"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						<xsl:choose>
							<xsl:when test="$valor > 1.00">
								<xsl:value-of select="format-number($valor, '###.###,00','customFormat')"/>

							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number($valor,'0,00','customFormat')"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="format-number('0.00','0,00','customFormat')"/>
			</xsl:otherwise>
		</xsl:choose>
    </xsl:template>
	<xsl:template name="IsZero4Decimales">
		<xsl:param name="valor"/>
		<xsl:param name="decimales"/>
		<xsl:if test="$valor!=''">
			<xsl:choose>
				<xsl:when test="$decimales = '0'">
					<xsl:value-of select="$valor"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="$valor > 1.00">
							<xsl:value-of select="format-number($valor, '###,###.0000')"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="format-number($valor,'0.0000')"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:template>
	<!-- _______________________ -->
	<xsl:template match="/">
		<fo:root>
			<xsl:variable name="TipoDocumento" select="//IdentificacionDocumento/TipoDocumento"/>
			<xsl:variable name="MonedaBase">
				<xsl:choose>
					<xsl:when test="//IdentificacionDocumento/Moneda='USD'">
						<xsl:value-of select="//IdentificacionDocumento/Moneda"/>	
					</xsl:when>	
					<xsl:otherwise>
						<xsl:value-of select="'Bs.'"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
            <!--URL BASE DE LOS TOTALES-->
            <xsl:variable name="TotalesIzquierda">
                <xsl:choose>
                    <xsl:when test="//IdentificacionDocumento/Moneda='USD'">
                        <xsl:value-of select="'Totales'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="'TotalesOtraMoneda'"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="TotalesDerecha">
                <xsl:choose>
                    <xsl:when test="//IdentificacionDocumento/Moneda='USD'">
                        <xsl:value-of select="'TotalesOtraMoneda'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="'Totales'"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>		
			<!-- Config Formato principal tipo carta -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta-vertical" 
										page-height="28cm" 
										page-width="21.6cm" 
										margin-top="0cm" 
										margin-bottom="0cm" 
										margin-left="2mm" 
										margin-right="2mm" >
					<fo:region-body margin-top="8.8cm" 
									margin-bottom="2.6cm" 
									background-image="url('data:image/png;base64,{$MarcaAguaPersonalizada}')"
              						background-repeat="no-repeat"
              						background-position-horizontal="8.5cm"
              						background-position-vertical="1cm"
              						fox:background-image-width="4.5cm"/>
					<fo:region-before extent="0.0cm" 	
										margin="0.01cm" />
					<fo:region-after extent="2.6cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="carta-vertical">
				<!-- Encabezado --> <!-- font-family="Times New Roman"-->
				<fo:static-content flow-name="xsl-region-before" >
					<!-- <fo:block-container absolute-position="absolute" 
										top="0cm" 
										left="0cm" 
										width="21.6cm" 
										height="28cm" 
										background-image="url('data:image/png;base64,{$EncabezadoImagen}')" 
										background-repeat="no-repeat" 
										background-position-horizontal="top" 
										background-position-vertical="left" 
										fox:background-image-height="28cm">
						<fo:block/>
					</fo:block-container> -->
					<fo:block>
						<fo:table background-image="url('data:image/png;base64,{$MarcaAgua}')"
                                                                        background-repeat="repeat"
                                                                        background-position-horizontal="center"
                                                                        background-position-vertical="center">
							<fo:table-column column-width="23%"/>
							<fo:table-column column-width="52%"/>
                            <fo:table-column column-width="25%"/>
                            <!-- <fo:table-column column-width="8%"/> -->
							<fo:table-body>
								<fo:table-row > 
									<fo:table-cell height="4.5cm" padding-left="" xsl:use-attribute-sets="" padding-top="0.5cm" display-align="center">
										<fo:block text-align="center"> 
											<fo:external-graphic content-width="18%" 
											height="3.5cm" 
											scaling="uniform" 
											src="url('data:image/png;base64,{$LogoBase64Image}')"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-left="0mm" padding-bottom="" xsl:use-attribute-sets="" display-align="center">
										<fo:block  text-align="left">
											<fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
												<fo:table-column column-width="100%"/>
												<fo:table-body>
                                                    <fo:table-row>
                                                    	<fo:table-cell xsl:use-attribute-sets="Titulo01" padding-top="2mm">
                                                    		<fo:block text-align="left" color="">
                                                    			GARAGE TORRE EUROPA S.R.L.
                                                    		</fo:block>
                                                    	</fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                    	<fo:table-cell xsl:use-attribute-sets="TextoN01" padding-top="0mm">
                                                    		<fo:block text-align="left" color="" font-size="10pt">
                                                    			R.I.F.: <xsl:value-of select="substring($EmisorRif, 1, string-length($EmisorRif) - 1)" />-<xsl:value-of select="substring($EmisorRif, string-length($EmisorRif), 1)" />
                                                    		</fo:block>
                                                    	</fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                    	<fo:table-cell xsl:use-attribute-sets="TextoN01" padding-top="0mm">
                                                    		<fo:block text-align="left" color="">
                                                    			Dirección Fiscal:&#160;<fo:inline xsl:use-attribute-sets="Texto01">AV FRANCISCO DE MIRANDA EDIF TORRE EUROPA  </fo:inline>
                                                    		</fo:block>
                                                    	</fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                    	<fo:table-cell xsl:use-attribute-sets="Texto01">
                                                    		<fo:block text-align="left" color="">
                                                    			 PISO SOTANO 1 LOCAL ESTACIONAMIENTO URB EL ROSAL
                                                    		</fo:block>
                                                    	</fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                    	<fo:table-cell xsl:use-attribute-sets="Texto01" padding-top="0mm">
                                                    		<fo:block text-align="left" color="">
                                                    			CARACAS (CHACAO) MIRANDA ZONA POSTAL 1060
                                                    		</fo:block>
                                                    	</fo:table-cell>
                                                    </fo:table-row>                                                    <!-- <fo:table-row>
														<fo:table-cell xsl:use-attribute-sets="TextoN01" padding-top="0mm">
															<fo:block text-align="left" color="">
																N° de Teléfono:&#160;<fo:inline xsl:use-attribute-sets="Texto01">(0212) 256 1536/1811 - (0414) 186 0437</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row> -->
                                                    <!-- <fo:table-row>
														<fo:table-cell xsl:use-attribute-sets="TextoN01" padding-top="0mm">
															<fo:block text-align="left" color="">
																E-mail:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="$EmisorCorreo"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row> -->
                                                    <fo:table-row>   
                                                        <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-top="1mm" padding-bottom="">
                                                            <fo:block text-align="left" color="">
                                                                Código de Operación:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="$CodigoOperacion"/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row>
												</fo:table-body>
											</fo:table>				
										</fo:block>
									</fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="" padding-left="0mm" padding-bottom="" display-align="center" padding-top="">
                                        <fo:block>
                                            <fo:table table-layout="fixed"
                                                        width="100%" >
                                                <fo:table-column column-width="100%"/>
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <!-- Título principal -->
                                                        <fo:table-cell xsl:use-attribute-sets="TextoN01" >
                                                            <fo:block color="" font-size="12pt">
                                                                <xsl:choose>
                                                                    <xsl:when test="$TipoDocumento = 1">FACTURA</xsl:when>
                                                                    <xsl:when test="$TipoDocumento = 2">NOTA DE CRÉDITO</xsl:when>
                                                                    <xsl:when test="$TipoDocumento = 3">NOTA DE DÉBITO</xsl:when>
                                                                    <xsl:when test="$TipoDocumento = 4">
                                                                        <xsl:choose>
                                                                            <xsl:when test="//GuiaDespacho/EsGuiaDespacho=1">GUIA DE DESPACHO </xsl:when>
                                                                            <xsl:otherwise>ORDEN DE ENTREGA </xsl:otherwise>
                                                                        </xsl:choose>
                                                                    </xsl:when>
                                                                </xsl:choose>
                                                                <xsl:if test="//Anulacion != ''">
                                                                    <fo:inline xsl:use-attribute-sets="TextoN10" color="#FF0000"> - ANULADA</fo:inline>
                                                                </xsl:if>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>   
                                                        <fo:table-cell padding-top="" padding-left="0mm" display-align="left" xsl:use-attribute-sets="TextoN01">
                                                            <fo:block background-color="">
                                                                <xsl:choose>
                                                                    <xsl:when test="//Encabezado/IdentificacionDocumento/Serie !=''">
                                                                        Serie: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Encabezado/IdentificacionDocumento/Serie"/></fo:inline>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        &#160;
                                                                    </xsl:otherwise>
                                                                </xsl:choose>                                                                
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row> 
                                                    <fo:table-row>   
                                                        <fo:table-cell background-color="" padding-top="0.75mm" padding-left="0mm" display-align="left" xsl:use-attribute-sets="Texto01">
                                                            <fo:block>
                                                                N° de Documento: <fo:inline xsl:use-attribute-sets="TextoN01"><xsl:value-of select="format-number(//IdentificacionDocumento/NumeroDocumento,'00000000')"/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row> 
                                                    <fo:table-row>   
                                                        <fo:table-cell background-color="" padding-top="0.75mm" padding-left="0mm" display-align="left" xsl:use-attribute-sets="TextoN01">
                                                            <fo:block>
                                                                Fecha de Emisión: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="translate(//Encabezado/IdentificacionDocumento/FechaEmision, '/', '-') "/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row> 
                                                    <fo:table-row>   
                                                        <fo:table-cell background-color="" padding-top="0.75mm" padding-left="0mm" display-align="left" xsl:use-attribute-sets="TextoN01">
                                                            <fo:block>
                                                                Hora de Emisión: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Encabezado/IdentificacionDocumento/HoraEmision"/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row>
                                                    <fo:table-row>   
                                                        <fo:table-cell background-color="" padding-top="0.75mm" padding-left="0mm" display-align="left" xsl:use-attribute-sets="TextoN01">
                                                            <fo:block>Fecha de Vencimiento: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="translate(//Encabezado/IdentificacionDocumento/FechaVencimiento, '/', '-') "/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row> 
                                                    <fo:table-row>   
                                                        <fo:table-cell background-color="" padding-top="0.75mm" padding-left="0mm" display-align="left" xsl:use-attribute-sets="Texto01">
                                                            <fo:block>N° de Control: <fo:inline xsl:use-attribute-sets="TextoN01" color="red"><xsl:value-of select="//Imprenta/NumeroControl"/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row>
                                                    <fo:table-row>   
                                                        <fo:table-cell background-color="" padding-top="0.75mm" padding-left="0mm" display-align="left" xsl:use-attribute-sets="TextoN01">
                                                            <fo:block>Fecha de Asignación: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="translate(//Imprenta/FechaAsignacionNumeroControl, '/', '-')"/></fo:inline>
                                                            </fo:block>      
                                                        </fo:table-cell>    
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
                                <!-- <fo:table-row>
                                    <fo:table-cell number-columns-spanned="3" background-color="#018695" height="1mm">
                                        <fo:block>

                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row> -->
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2" padding-top="4mm">
                                            <fo:block-container overflow="hidden" height="2.5cm">
                                                <fo:block>
                                                    <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                        <fo:table-column column-width="100%"/>
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                                <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="">
                                                                    <fo:block text-align="justify">
                                                                        Nombre o Razón Social:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Comprador/RazonSocial"/></fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell>
                                                                    <fo:block>
                                                                         <fo:table table-layout="fixed" width="100%">
                                                                            <fo:table-column column-width="50%"/>
                                                                            <fo:table-column column-width="50%"/>
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="" padding-right="">
                                                                                        <fo:block text-align="left">
                                                                                            Cédula / RIF:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Comprador/TipoIdentificacion"/>-<xsl:value-of select="//Comprador/NumeroIdentificacion"/></fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="">
                                                                                        <fo:block text-align="justify">
                                                                                            Teléfono:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Comprador/Telefono/TelefonoComprador1"/></fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell height="" xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="" padding-right="">
                                                                    <fo:block text-align="justify">
                                                                        Dirección:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Comprador/Direccion"/></fo:inline>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell>
                                                                    <fo:block>
                                                                         <fo:table table-layout="fixed" width="100%">
                                                                            <fo:table-column column-width="50%"/>
                                                                            <fo:table-column column-width="50%"/>
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="" padding-right="">
                                                                                        <fo:block text-align="left">
                                                                                            Vendedor:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//Vendedor/Nombre"/></fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="">
                                                                                        <fo:block text-align="justify">
                                                                                            Días de Créditos:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//InfoAdicional/Info[Campo='DiasCredito']/Valor"/></fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                            <fo:table-row>
                                                                <fo:table-cell>
                                                                    <fo:block>
                                                                         <fo:table table-layout="fixed" width="100%">
                                                                            <fo:table-column column-width="50%"/>
                                                                            <fo:table-column column-width="50%"/>
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="" padding-right="">
                                                                                        <fo:block text-align="left">
                                                                                            Condiciones de Pago:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//IdentificacionDocumento/TipoDePago"/></fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell  xsl:use-attribute-sets="TextoN01" padding-left="4mm" padding-top="">
                                                                                        <fo:block text-align="justify">
                                                                                            Orden de Compra:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//InfoAdicional/Info[Campo='OrdenCompra']/Valor"/></fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                        </fo:table-body>
                                                    </fo:table>	
                                                </fo:block>
                                            </fo:block-container>
                                        </fo:table-cell>
                                        <fo:table-cell xsl:use-attribute-sets="">
                                            <fo:block margin-left="0.5cm">
                                                <xsl:choose>
                                                    <xsl:when test="$TipoDocumento = '02' or $TipoDocumento = '03'">
                                                        <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01" padding-top="" padding-left="0mm" display-align="center" padding-bottom="0mm">
                                                                        <fo:block text-align="left">
                                                                            <xsl:choose>
                                                                                <xsl:when test="//IdentificacionDocumento/SerieFacturaAfectada !=''">
                                                                                    Serie: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//IdentificacionDocumento/SerieFacturaAfectada"/></fo:inline>
                                                                                </xsl:when>
                                                                                <xsl:otherwise>
                                                                                    &#160;
                                                                                </xsl:otherwise>
                                                                            </xsl:choose>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01 BordeL" padding-top="0.2mm" padding-left="0mm" display-align="center" padding-bottom="0mm">
                                                                        <fo:block text-align="left">
                                                                            Aplica a factura:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="format-number(//IdentificacionDocumento/NumeroFacturaAfectada,'00000000')"/></fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01 BordeL" padding-top="0mm" padding-left="0mm" display-align="center" padding-bottom="0mm">
                                                                        <fo:block text-align="left">
                                                                            Fecha:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="translate(//IdentificacionDocumento/FechaFacturaAfectada,'/','-')"/></fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01 BordeL" padding-top="0mm" padding-left="0mm" display-align="center" padding-bottom="0mm">
                                                                        <fo:block text-align="left">
                                                                            Monto Bs.:<fo:inline xsl:use-attribute-sets="Texto01">
                                                                            <xsl:call-template name="IsZero">
                                                                                <xsl:with-param name="valor" select="//IdentificacionDocumento/MontoFacturaAfectada"/>
                                                                                <xsl:with-param name="decimales" select="2"/>
                                                                            </xsl:call-template></fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <fo:table-row>
                                                                    <fo:table-cell height="0.7cm" xsl:use-attribute-sets="TextoN01 BordeL" padding-top="0mm" padding-left="0mm" display-align="before" padding-bottom="0.5mm" padding-right="5mm">
                                                                        <fo:block text-align="justify">
                                                                            Motivo:&#160;<fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//IdentificacionDocumento/ComentarioFacturaAfectada"/></fo:inline>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="3" padding-top="0.5mm">
                                            <fo:block>
                                                <xsl:choose>
                                                    <xsl:when test="$TipoDocumento !='04'">
                                                        <fo:table table-layout="fixed" width="100%">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block background-color="" border="" border-color="" margin-left="0mm" margin-right="0mm">
                                                                            <fo:table table-layout="fixed" width="100%">
                                                                                <fo:table-column column-width="9%"/> 
                                                                                <fo:table-column column-width="33%"/>  
                                                                                <fo:table-column column-width="6%"/> 
                                                                                <fo:table-column column-width="11%"/>
                                                                                <fo:table-column column-width="11%"/>
                                                                                <fo:table-column column-width="11%"/>
                                                                                <fo:table-column column-width="8%"/>
                                                                                <fo:table-column column-width="11%"/>
                                                                                <fo:table-body>
                                                                                    <fo:table-row text-align="center" xsl:use-attribute-sets="TextoN02" background-color="#FABB26">
                                                                                        <fo:table-cell display-align="center" height="8mm" xsl:use-attribute-sets="BordeRW" padding-left="0mm" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Código
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Descripción
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Cant.
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" padding-right="1mm" padding-left="2mm" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                <fo:table table-layout="fixed" width="100%">
                                                                                                    <fo:table-column column-width="100%"/>
                                                                                                    <fo:table-body>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    Precio 
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    Unitario <xsl:value-of select="$MonedaBase"/>
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                    </fo:table-body>
                                                                                                </fo:table>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" padding-right="1mm" padding-left="2mm" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                <fo:table table-layout="fixed" width="100%">
                                                                                                    <fo:table-column column-width="100%"/>
                                                                                                    <fo:table-body>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    SubTotal
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    Items <xsl:value-of select="$MonedaBase"/>
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                    </fo:table-body>
                                                                                                </fo:table>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW">
                                                                                            <fo:block color="#FFFFFF">
                                                                                                <fo:table table-layout="fixed" width="100%">
                                                                                                    <fo:table-column column-width="100%"/>
                                                                                                    <fo:table-body>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    Descuento
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                        <!-- <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    <xsl:value-of select="$MonedaBase"/>
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row> -->
                                                                                                    </fo:table-body>
                                                                                                </fo:table>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Alícuota I.V.A.
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Total Items <xsl:value-of select="$MonedaBase"/>
                                                                                                <!-- <fo:table table-layout="fixed" width="100%">
                                                                                                    <fo:table-column column-width="100%"/>
                                                                                                    <fo:table-body>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                        <fo:table-row>
                                                                                                            <fo:table-cell display-align="center" >
                                                                                                                <fo:block text-align="center">
                                                                                                                    
                                                                                                                </fo:block>
                                                                                                            </fo:table-cell>
                                                                                                        </fo:table-row>
                                                                                                    </fo:table-body>
                                                                                                </fo:table> -->
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <fo:table table-layout="fixed" width="100%">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block background-color="" border="" border-color="" margin-left="0mm" margin-right="0mm">
                                                                            <fo:table table-layout="fixed" width="100%">
                                                                                <fo:table-column column-width="9%"/> 
                                                                                <fo:table-column column-width="85%"/>  
                                                                                <fo:table-column column-width="6%"/> 
                                                                                
                                                                                <fo:table-body>
                                                                                    <fo:table-row text-align="center" xsl:use-attribute-sets="TextoN02" background-color="#FABB26">
                                                                                        <fo:table-cell display-align="center" height="8mm" xsl:use-attribute-sets="BordeRW" padding-left="0mm" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Código
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Descripción
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeRW" >
                                                                                            <fo:block color="#FFFFFF">
                                                                                                Cant.
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
							</fo:table-body>
						</fo:table>	
					</fo:block>
				</fo:static-content>
				<!-- Pie de página -->
				<fo:static-content flow-name="xsl-region-after">
					<fo:block background-color="">
					</fo:block>
					<fo:table width="100%">
						<fo:table-column column-width="11%"/>
						<fo:table-column column-width="89%"/>
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell  number-columns-spanned="2">
									<fo:block margin-left="0mm" margin-right="0mm">
                                        <fo:table width="100%">
						                    <fo:table-column column-width="100%"/>
                                            <fo:table-body>
                                                <fo:table-row>
                                                    <fo:table-cell background-color="#793200" height="1">
                                                        <fo:block>

                                                        </fo:block>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </fo:table-body>
                                        </fo:table>    
                                    </fo:block>
								</fo:table-cell>
							</fo:table-row>
                            
                            <fo:table-row >
								<fo:table-cell number-columns-spanned="2" background-color="" height="1.5mm">
									<fo:block></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell display-align="before" xsl:use-attribute-sets="" padding-top="-0.5mm" padding-left="5mm">
									<fo:block>
										<fo:external-graphic content-width="scale-to-fit" 
											height="2.1cm" 
											width="2.1cm" 
											scaling="uniform" 
											src="url('data:image/png;base64,{$QrBase64Image}')" />
									</fo:block>
								</fo:table-cell>
								<fo:table-cell  number-columns-spanned="" display-align="center" padding-top="-0.5mm" >
									<fo:block >
										<fo:table table-layout="fixed" width="100%">
											<fo:table-body>
												<!-- No modificar **************************************************** -->
												<fo:table-row xsl:use-attribute-sets="TextoPieImprenta" font-weight="bold">
													<fo:table-cell padding-top="1mm">
														<fo:block text-align="center">
															<xsl:value-of select="//Imprenta/Snat"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												<fo:table-row xsl:use-attribute-sets="TextoPieImprenta">
													<fo:table-cell padding-top="1.5mm"
																	xsl:use-attribute-sets="" >
														<fo:block text-align="center">
															<xsl:value-of select="//Imprenta/Nombre"/>&#160;<xsl:value-of select="//Imprenta/RIF"/>,&#160;<xsl:value-of select="//Imprenta/Direccion"/>&#160;<xsl:value-of select="//Imprenta/Telefonos"/>.&#160; <xsl:value-of select="//Imprenta/Autorizacion"/>
															Nros de Control desde el N° <xsl:value-of select="//Imprenta/RangoInicial"/> hasta el N° <xsl:value-of select="//Imprenta/RangoFinal"/> generados digitalmente en 
															fecha <xsl:value-of select="//Imprenta/FechaAsignacion"/>.
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<!-- ***************************************************************** -->
											</fo:table-body>
										</fo:table>
									</fo:block >
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
				</fo:static-content>
				<!-- Cuerpo -->
				<fo:flow flow-name="xsl-region-body">
					<fo:block xsl:use-attribute-sets="" margin-top="0mm">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="100%"/>
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell>
										<fo:block margin-left="0mm" margin-right="0mm">
                                            <xsl:choose>
                                                <xsl:when test="$TipoDocumento !='04'">
                                                    <fo:table>
                                                        <fo:table-column column-width="9%"/> 
                                                        <fo:table-column column-width="33%"/>  
                                                        <fo:table-column column-width="6%"/> 
                                                        <fo:table-column column-width="11%"/>
                                                        <fo:table-column column-width="11%"/>
                                                        <fo:table-column column-width="11%"/>
                                                        <fo:table-column column-width="8%"/>
                                                        <fo:table-column column-width="11%"/>
                                                        <fo:table-body>
                                                            <xsl:for-each select="//DetallesItems/Item">
                                                                <fo:table-row text-align="center">
                                                                    <fo:table-cell padding-top="0.75mm" xsl:use-attribute-sets="Texto083 " display-align="before" padding-left="0mm" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="center">
                                                                            <xsl:value-of select="CodigoPLU"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-left="1mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="left">
                                                                            <xsl:value-of select="Descripcion"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" xsl:use-attribute-sets="Texto083 " display-align="before" padding-left="0mm" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="center">
                                                                            <xsl:value-of select="Cantidad"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-right="1mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="right">
                                                                            
                                                                            <xsl:call-template name="IsZero">
                                                                                <xsl:with-param name="valor" select="PrecioUnitario"/>
                                                                                <xsl:with-param name="decimales" select="2"/>
                                                                            </xsl:call-template>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-right="1mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="right">
                                                                            <xsl:choose>
                                                                                <xsl:when test="DescuentoMonto !='' and DescuentoMonto &gt; 0">
                                                                                    <xsl:call-template name="IsZero">
                                                                                        <xsl:with-param name="valor"
                                                                                                        select="PrecioAntesDescuento"/>
                                                                                        <xsl:with-param name="decimales"
                                                                                                        select="2"/>
                                                                                    </xsl:call-template>
                                                                                </xsl:when>
                                                                                <xsl:otherwise>
                                                                                    <xsl:call-template name="IsZero">
                                                                                        <xsl:with-param name="valor"
                                                                                                        select="PrecioItem"/>
                                                                                        <xsl:with-param name="decimales"
                                                                                                        select="2"/>
                                                                                    </xsl:call-template>
                                                                                </xsl:otherwise>
                                                                            </xsl:choose>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-right="1mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="right">
                                                                            <xsl:value-of select="DescripcionBonificacion"/>
                                                                            <!-- <xsl:call-template name="IsZero">
                                                                                <xsl:with-param name="valor" select="DescripcionBonificacion"/>
                                                                                <xsl:with-param name="decimales" select="2"/>
                                                                            </xsl:call-template> -->
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-left="0mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="center">
                                                                            <xsl:choose>
                                                                                <xsl:when test="CodigoImpuesto ='E'">
                                                                                    (<xsl:value-of select="CodigoImpuesto"/>)
                                                                                </xsl:when>
                                                                                <xsl:otherwise>
                                                                                    (<xsl:value-of select="CodigoImpuesto"/>)
                                                                                </xsl:otherwise>
                                                                            </xsl:choose>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-right="1mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="right">
                                                                            <xsl:call-template name="IsZero">
                                                                                <xsl:with-param name="valor" select="PrecioItem"/>
                                                                                <xsl:with-param name="decimales" select="2"/>
                                                                            </xsl:call-template>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </xsl:for-each>
                                                        </fo:table-body> 
                                                    </fo:table>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <fo:table>
                                                        <fo:table-column column-width="9%"/> 
                                                        <fo:table-column column-width="85%"/>  
                                                        <fo:table-column column-width="6%"/> 
                                                        <fo:table-body>
                                                            <xsl:for-each select="//DetallesItems/Item">
                                                                <fo:table-row text-align="center">
                                                                    <fo:table-cell padding-top="0.75mm" xsl:use-attribute-sets="Texto083 " display-align="before" padding-left="0mm" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="center">
                                                                            <xsl:value-of select="CodigoPLU"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" padding-left="1mm" xsl:use-attribute-sets="Texto083 " display-align="before" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="left">
                                                                            <xsl:value-of select="Descripcion"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                    <fo:table-cell padding-top="0.75mm" xsl:use-attribute-sets="Texto083 " display-align="before" padding-left="0mm" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="center">
                                                                            <xsl:value-of select="Cantidad"/>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </xsl:for-each>
                                                        </fo:table-body> 
                                                    </fo:table>
                                                </xsl:otherwise>
                                            </xsl:choose>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<!-- Table totales-->
						<fo:block keep-with-previous.within-page="always" 
							keep-together.within-page="always" 
							space-before.minimum="0.1cm" 
							space-before.optimum="40cm" 
							space-before.maximum="40cm" 
							margin-bottom="2mm">
                             <xsl:choose>
                                <xsl:when test="$TipoDocumento !='04'">
                                    <fo:table table-layout="fixed"
                                        width="100%"
                                        xsl:use-attribute-sets="" >
                                        <fo:table-column column-width="30%"/>
                                        <fo:table-column column-width="35%"/>
                                        <fo:table-column column-width="35%"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <fo:table-cell display-align="after" padding-top="0mm"> <!-- PRIMERA COLUMNA-->
                                                    <fo:block margin-top="0.5mm">
                                                        <!-- Anulación-->
                                                        <xsl:if test="//Anulacion != ''">
                                                            <fo:table table-layout="fixed" width="96%" xsl:use-attribute-sets="">
                                                                <fo:table-column column-width="100%"/>
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell display-align="after" number-columns-spanned="1"  xsl:use-attribute-sets="TextoN02" margin-left="">
                                                                            <fo:block>
                                                                                <!-- Tabla anulaciones-->
                                                                                <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                                                    <fo:table-column column-width="100%"/>
                                                                                    <fo:table-body>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell padding-left="0mm" padding-bottom="0mm" xsl:use-attribute-sets="TextoN01" background-color="" padding-top="0mm" margin-left="0mm"  number-columns-spanned = "">
                                                                                                <fo:block text-align="center">Anulación</fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell height="0.4mm" number-columns-spanned=""
                                                                                                            background-color="#FB6419">
                                                                                                <fo:block/>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row> 
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell padding-top="1mm" padding-bottom="0mm" xsl:use-attribute-sets="  TextoN02" padding-left="0mm" margin-left="0mm"  number-columns-spanned = "">
                                                                                                <fo:block text-align="left">Fecha: <fo:inline xsl:use-attribute-sets=" Texto02"><xsl:value-of select="//Anulacion/FechaAnulacion"/></fo:inline></fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell padding-bottom="0mm" xsl:use-attribute-sets=" TextoN02" padding-left="0mm" margin-left="0mm" margin-right="0mm" number-columns-spanned = "">
                                                                                                <fo:block text-align="left">
                                                                                                    Motivo: <fo:inline xsl:use-attribute-sets=" Texto02"><xsl:value-of select="//Anulacion/MotivoAnulacion"/></fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell height="0.4mm" number-columns-spanned=""
                                                                                                            background-color="#FB6419">
                                                                                                <fo:block/>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row> 
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell height="1mm">
                                                                                                <fo:block></fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </fo:table-body>
                                                            </fo:table>	
                                                        </xsl:if>
                                                        <xsl:if test="//InfoAdicional/Info[Campo='SaldoAPagar']/Valor != ''">
                                                        <fo:table table-layout="fixed" width="100%">
                                                            <fo:table-column column-width="100%"/>                                                            
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell height="6mm" xsl:use-attribute-sets="TextoN075" display-align="center" padding-left="2mm">
                                                                        <fo:block text-align="left">
                                                                            Saldo a pagar: 
                                                                            <fo:inline xsl:use-attribute-sets="Texto075" color="">
                                                                                <xsl:call-template name="IsZero">
                                                                                    <xsl:with-param name="valor" select="//InfoAdicional/Info[Campo='SaldoAPagar']/Valor"/>
                                                                                    <xsl:with-param name="decimales" select="2"/>
                                                                                </xsl:call-template>
                                                                            </fo:inline>
                                                                            <!-- <xsl:value-of select="//InfoAdicional/Info[Campo='SaldoAPagar']/Valor"/> -->
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                        </xsl:if>
                                                        <xsl:if test="//FormasPago !='' and $TipoDocumento ='01'">
                                                            <fo:table table-layout="fixed" width="100%" >
                                                                <fo:table-column column-width="80%"/>
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell xsl:use-attribute-sets="TextoN02" padding-top="1.5mm" padding-left="5mm" display-align="center" padding-bottom="1mm" background-color="#FABB26" number-columns-spanned="">
                                                                            <fo:block text-align="left" color="#FFFFFF">
                                                                                Formas de Pago:
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <xsl:for-each select="//FormasPago/FormaPago">
                                                                        <fo:table-row>
                                                                            <fo:table-cell xsl:use-attribute-sets="TextoN075" padding-top="0.5mm" padding-left="" display-align="center" padding-bottom="1mm" number-columns-spanned="">
                                                                                <fo:block>
                                                                                    <fo:table table-layout="fixed" width="100%">
                                                                                        <fo:table-column column-width="100%"/>
                                                                                    
                                                                                        <fo:table-body>
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell display-align="center" number-columns-spanned="" padding-left="1mm">
                                                                                                    <fo:block text-align="left">
                                                                                                        Descripción: <fo:inline xsl:use-attribute-sets="Texto075"><xsl:value-of select="Descripcion"/></fo:inline>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                            <fo:table-row>
                                                                                                <!-- <fo:table-cell>
                                                                                                    <fo:block>
                                                                                                        Fecha: 
                                                                                                        <fo:inline xsl:use-attribute-sets="Texto075"><xsl:value-of select="Fecha"/></fo:inline>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell> -->
                                                                                                <fo:table-cell padding-left="1mm">
                                                                                                    <fo:block>
                                                                                                        Monto: 
                                                                                                        <fo:inline xsl:use-attribute-sets="Texto075">
                                                                                                            <xsl:choose>
                                                                                                                    <xsl:when test="Monto != ''">
                                                                                                                        <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor" select="Monto"/>
                                                                                                                        <xsl:with-param name="decimales" select="2"/>
                                                                                                                        </xsl:call-template>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        0,00
                                                                                                                    </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:inline>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                            <!-- <xsl:choose>
                                                                                                <xsl:when test="TipoCambio != ''">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell number-columns-spanned="" xsl:use-attribute-sets="" display-align="before">
                                                                                                            <fo:block>
                                                                                                                <fo:inline xsl:use-attribute-sets="Texto075">
                                                                                                                    <fo:inline xsl:use-attribute-sets="TextoN075">Tipo de Cambio: </fo:inline>
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                    <xsl:with-param name="valor" select="TipoCambio"/>
                                                                                                                    <xsl:with-param name="decimales" select="4"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </fo:inline>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                    </xsl:otherwise>   
                                                                                            </xsl:choose> -->
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell number-columns-spanned="" xsl:use-attribute-sets="BordeB" display-align="before" padding-left="1mm">
                                                                                                    <fo:block>
                                                                                                        Moneda: <fo:inline xsl:use-attribute-sets="Texto075"><xsl:value-of select="Moneda"/></fo:inline>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                        </fo:table-body>
                                                                                    </fo:table>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </xsl:for-each>
                                                                </fo:table-body>
                                                            </fo:table>
                                                        </xsl:if>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell display-align="after" xsl:use-attribute-sets=""> <!-- SEGUNDA COLUMNA-->
                                                    <fo:block>
                                                        <xsl:if test="//TotalesOtraMoneda !=''">
                                                            <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                                <fo:table-column column-width="100%"/>
                                                                <fo:table-body>
                                                                    <fo:table-row>
                                                                        <fo:table-cell>
                                                                            <fo:block background-color=""
                                                                                        margin-left="4mm" margin-right="2mm">
                                                                                <!-- <xsl:choose>
                                                                                    <xsl:when test="$MonedaBase !='USD'"> -->
                                                                                    
                                                                                    <!-- </xsl:when> -->
                                                                                    <!-- <xsl:otherwise> -->
                                                                                        
                                                                                    <!-- </xsl:otherwise> -->
                                                                                <!-- </xsl:choose> -->
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                    <fo:table-row>
                                                                        <fo:table-cell>
                                                                            <fo:block margin-top="0mm" padding-top="1mm" margin-left="1mm">
                                                                                <!-- <xsl:choose>
                                                                                    <xsl:when test="$MonedaBase !='USD'">
                                                                                        
                                                                                    </xsl:when>
                                                                                    <xsl:otherwise> -->
                                                                                        <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                                                            <fo:table-column column-width="50%"/>
                                                                                            <fo:table-column column-width="10%"/>
                                                                                            <fo:table-column column-width="40%"/>
                                                                                            <fo:table-body>
                                                                                                <fo:table-row xsl:use-attribute-sets=" BordeT">
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="left">
                                                                                                                SubTotal
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="center">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                        Bs.
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        USD
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="right">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/Subtotal != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/Subtotal"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                                
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="left">
                                                                                                                Descuento:
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="center">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                    Bs.
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    USD
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="right">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/TotalDescuento != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/TotalDescuento"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="left">
                                                                                                                Exento
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="center">
                                                                                                        <xsl:choose>
                                                                                                                <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                    Bs.
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    USD
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="right">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/MontoExentoTotal != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/MontoExentoTotal"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="left">
                                                                                                                Base Imponible (G)
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="center">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                    Bs.
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    USD
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="right">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G'] != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G']/BaseImponibleImp"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                                <xsl:if test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R'] != ''">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="left">
                                                                                                                Base Imponible (R):
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="center">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                        Bs.
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        USD
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="right">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/BaseImponibleImp] != ''">
                                                                                                                        <xsl:call-template name="IsZero">
                                                                                                                            <xsl:with-param name="valor"
                                                                                                                                            select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/BaseImponibleImp"/>
                                                                                                                            <xsl:with-param name="decimales"
                                                                                                                                            select="2"/>
                                                                                                                        </xsl:call-template>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        0.00
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>		
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                </xsl:if>
                                                                                                <xsl:if test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A'] != ''">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="left">
                                                                                                                Base Imponible (A):
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="center">
                                                                                                                 <xsl:choose>
                                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                        Bs.
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        USD
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="right">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/BaseImponibleImp] != ''">
                                                                                                                        <xsl:call-template name="IsZero">
                                                                                                                            <xsl:with-param name="valor"
                                                                                                                                            select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/BaseImponibleImp"/>
                                                                                                                            <xsl:with-param name="decimales"
                                                                                                                                            select="2"/>
                                                                                                                        </xsl:call-template>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        0.00
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>		
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                    </xsl:if>
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="left">
                                                                                                                    Alícuota I.V.A. (16.00%)
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="center">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                        Bs.
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        USD
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="right">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G'] != ''">
                                                                                                                        <xsl:call-template name="IsZero">
                                                                                                                            <xsl:with-param name="valor"
                                                                                                                                            select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G']/ValorTotalImp"/>
                                                                                                                            <xsl:with-param name="decimales"
                                                                                                                                            select="2"/>
                                                                                                                        </xsl:call-template>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        0,00
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>		
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                <xsl:if test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R'] != ''">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="left">
                                                                                                                Alícuota I.V.A. (8.00%):
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="center">
                                                                                                                 <xsl:choose>
                                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                        Bs.
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        USD
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="right">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/ValorTotalImp != ''">
                                                                                                                        <xsl:call-template name="IsZero">
                                                                                                                            <xsl:with-param name="valor"
                                                                                                                                            select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/ValorTotalImp"/>
                                                                                                                            <xsl:with-param name="decimales"
                                                                                                                                            select="2"/>
                                                                                                                        </xsl:call-template>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        0.00
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>		
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                </xsl:if>
                                                                                                <xsl:if test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A'] != ''">
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="left">
                                                                                                                Alícuota I.V.A. (31.00%):
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="center">
                                                                                                                 <xsl:choose>
                                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                        Bs.
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        USD
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                            <fo:block text-align="right">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/ValorTotalImp != ''">
                                                                                                                        <xsl:call-template name="IsZero">
                                                                                                                            <xsl:with-param name="valor"
                                                                                                                                            select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/ValorTotalImp"/>
                                                                                                                            <xsl:with-param name="decimales"
                                                                                                                                            select="2"/>
                                                                                                                        </xsl:call-template>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        0.00
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>		
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                </xsl:if>
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="left">
                                                                                                                Base Imponible (IGTF)
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="center">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                    Bs.
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    USD
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="right">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF'] != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF']/BaseImponibleImp"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                                <fo:table-row>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="left">
                                                                                                                Alícuota IGTF (3.00%)
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="center">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                    Bs.
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    USD
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="2mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                        <fo:block text-align="right">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF'] != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF']/ValorTotalImp"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                                <fo:table-row xsl:use-attribute-sets="" background-color="#FABB26">
                                                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01 " padding-top="1mm" padding-left="2.5mm" display-align="center" padding-bottom="1mm">
                                                                                                        <fo:block text-align="left" color="#FFFFFF">
                                                                                                                Total a Pagar
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01 " padding-top="" padding-left="0mm" display-align="center" padding-bottom="0mm">
                                                                                                        <fo:block text-align="center" color="#FFFFFF">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                    Bs.
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    USD
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    <fo:table-cell xsl:use-attribute-sets="TextoN01" padding-right="2mm" padding-top="" display-align="center" padding-bottom="0mm">
                                                                                                        <fo:block text-align="right" color="#FFFFFF">
                                                                                                            <xsl:choose>
                                                                                                                <xsl:when test="//*[local-name() = $TotalesIzquierda]/TotalAPagar != ''">
                                                                                                                    <xsl:call-template name="IsZero">
                                                                                                                        <xsl:with-param name="valor"
                                                                                                                                        select="//*[local-name() = $TotalesIzquierda]/TotalAPagar"/>
                                                                                                                        <xsl:with-param name="decimales"
                                                                                                                                        select="2"/>
                                                                                                                    </xsl:call-template>
                                                                                                                </xsl:when>
                                                                                                                <xsl:otherwise>
                                                                                                                    0,00
                                                                                                                </xsl:otherwise>
                                                                                                            </xsl:choose>		
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                            </fo:table-body>
                                                                                        </fo:table>
                                                                                    <!-- </xsl:otherwise>
                                                                                </xsl:choose> -->
                                                                            </fo:block>
                                                                        </fo:table-cell>
                                                                    </fo:table-row>
                                                                </fo:table-body>
                                                            </fo:table>
                                                        </xsl:if>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell display-align="after" xsl:use-attribute-sets=""> <!-- TERCERA COLUMNA-->
                                                    <fo:block>
                                                        <!-- <xsl:if test="//TotalesOtraMoneda !=''"> -->
                                                        <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="TextoN02">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell padding-top="2mm" padding-bottom="1.5mm" margin-left="0mm" margin-right="0mm">
                                                                        <fo:block text-align="center" color="Black">
                                                                            Tasa 
                                                                            <fo:inline xsl:use-attribute-sets="TextoN02" color="Black">B.C.V</fo:inline> a la fecha de emisión: BS.&#160;
                                                                                <xsl:call-template name="IsZero4Decimales">
                                                                                    <xsl:with-param name="valor"
                                                                                        select="//TotalesOtraMoneda/TipoCambio"/>
                                                                                    <xsl:with-param name="decimales"
                                                                                                    select="4"/>
                                                                                </xsl:call-template>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>	
                                                                <!-- </xsl:if> -->
                                                        <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                
                                                                <!-- <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block background-color="#F2F2F2"
                                                                                    margin-left="4mm" margin-right="4mm">
                                                                            <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="TextoN075">
                                                                                <fo:table-column column-width="100%"/>
                                                                                <fo:table-body>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell padding-top="2mm" padding-bottom="1mm" margin-left="0mm" margin-right="0mm">
                                                                                            <fo:block text-align="center">
                                                                                                TASA B.C.V. A LA FECHA DE EMISIÓN: Bs.&#160;<fo:inline xsl:use-attribute-sets="TextoN075">
                                                                                                        <xsl:call-template name="IsZero4Decimales">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                select="//TotalesOtraMoneda/TipoCambio"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="4"/>
                                                                                                        </xsl:call-template>
                                                                                                    </fo:inline>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>	
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row> -->
                                                                <fo:table-row>
                                                                    <fo:table-cell>
                                                                        <fo:block margin-top="0mm" padding-top="0mm" margin-left="1mm">
                                                                            <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                                                <fo:table-column column-width="50%"/>
                                                                                <fo:table-column column-width="10%"/>
                                                                                <fo:table-column column-width="40%"/>
                                                                                <fo:table-body>
                                                                                    <fo:table-row xsl:use-attribute-sets=" BordeT">
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    SubTotal
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/Subtotal != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/Subtotal"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    Descuento:
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/TotalDescuento != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/TotalDescuento"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    Exento
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/MontoExentoTotal != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/MontoExentoTotal"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    Base Imponible (G)
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G'] != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G']/BaseImponibleImp"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <xsl:if test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R'] != ''">
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                <fo:block text-align="left">
                                                                                                    Base Imponible (R):
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                <fo:block text-align="center">
                                                                                                    <xsl:choose>
                                                                                                        <xsl:when test="$MonedaBase = 'USD'">
                                                                                                            USD
                                                                                                        </xsl:when>
                                                                                                        <xsl:otherwise>
                                                                                                            Bs.
                                                                                                        </xsl:otherwise>
                                                                                                    </xsl:choose>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                <fo:block text-align="right">
                                                                                                    <xsl:choose>
                                                                                                        <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/BaseImponibleImp] != ''">
                                                                                                            <xsl:call-template name="IsZero">
                                                                                                                <xsl:with-param name="valor"
                                                                                                                                select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/BaseImponibleImp"/>
                                                                                                                <xsl:with-param name="decimales"
                                                                                                                                select="2"/>
                                                                                                            </xsl:call-template>
                                                                                                        </xsl:when>
                                                                                                        <xsl:otherwise>
                                                                                                            0.00
                                                                                                        </xsl:otherwise>
                                                                                                    </xsl:choose>		
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A'] != ''">
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                <fo:block text-align="left">
                                                                                                    Base Imponible (A):
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                <fo:block text-align="center">
                                                                                                    <xsl:choose>
                                                                                                        <xsl:when test="$MonedaBase = 'USD'">
                                                                                                            USD
                                                                                                        </xsl:when>
                                                                                                        <xsl:otherwise>
                                                                                                            Bs.
                                                                                                        </xsl:otherwise>
                                                                                                    </xsl:choose>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                <fo:block text-align="right">
                                                                                                    <xsl:choose>
                                                                                                        <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/BaseImponibleImp] != ''">
                                                                                                            <xsl:call-template name="IsZero">
                                                                                                                <xsl:with-param name="valor"
                                                                                                                                select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/BaseImponibleImp"/>
                                                                                                                <xsl:with-param name="decimales"
                                                                                                                                select="2"/>
                                                                                                            </xsl:call-template>
                                                                                                        </xsl:when>
                                                                                                        <xsl:otherwise>
                                                                                                            0.00
                                                                                                        </xsl:otherwise>
                                                                                                    </xsl:choose>		
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </xsl:if>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    Alícuota I.V.A. (16.00%)
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G'] != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='G']/ValorTotalImp"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <xsl:if test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R'] != ''">
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                    <fo:block text-align="left">
                                                                                                        Alícuota I.V.A. (8.00%):
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                    <fo:block text-align="center">
                                                                                                            <xsl:choose>
                                                                                                            <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                USD
                                                                                                            </xsl:when>
                                                                                                            <xsl:otherwise>
                                                                                                                Bs.
                                                                                                            </xsl:otherwise>
                                                                                                        </xsl:choose>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                    <fo:block text-align="right">
                                                                                                        <xsl:choose>
                                                                                                            <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/ValorTotalImp != ''">
                                                                                                                <xsl:call-template name="IsZero">
                                                                                                                    <xsl:with-param name="valor"
                                                                                                                                    select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='R']/ValorTotalImp"/>
                                                                                                                    <xsl:with-param name="decimales"
                                                                                                                                    select="2"/>
                                                                                                                </xsl:call-template>
                                                                                                            </xsl:when>
                                                                                                            <xsl:otherwise>
                                                                                                                0.00
                                                                                                            </xsl:otherwise>
                                                                                                        </xsl:choose>		
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                        </xsl:if>
                                                                                        <xsl:if test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A'] != ''">
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                    <fo:block text-align="left">
                                                                                                        Alícuota I.V.A. (31.00%):
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                                    <fo:block text-align="center">
                                                                                                            <xsl:choose>
                                                                                                            <xsl:when test="$MonedaBase = 'USD'">
                                                                                                                USD
                                                                                                            </xsl:when>
                                                                                                            <xsl:otherwise>
                                                                                                                Bs.
                                                                                                            </xsl:otherwise>
                                                                                                        </xsl:choose>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                                    <fo:block text-align="right">
                                                                                                        <xsl:choose>
                                                                                                            <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/ValorTotalImp != ''">
                                                                                                                <xsl:call-template name="IsZero">
                                                                                                                    <xsl:with-param name="valor"
                                                                                                                                    select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='A']/ValorTotalImp"/>
                                                                                                                    <xsl:with-param name="decimales"
                                                                                                                                    select="2"/>
                                                                                                                </xsl:call-template>
                                                                                                            </xsl:when>
                                                                                                            <xsl:otherwise>
                                                                                                                0.00
                                                                                                            </xsl:otherwise>
                                                                                                        </xsl:choose>		
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                        </xsl:if>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    Base Imponible (IGTF)
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF'] != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF']/BaseImponibleImp"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="2.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="left">
                                                                                                    Alícuota IGTF (3.00%)
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01 " padding-top="0.5mm" padding-left="0mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="center">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="Texto01" padding-right="4mm" padding-top="0.5mm" display-align="center" padding-bottom="0.1mm">
                                                                                            <fo:block text-align="right">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF'] != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/ImpuestosSubtotal/ImpuestoSubtotal[CodigoTotalImp='IGTF']/ValorTotalImp"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                    <fo:table-row xsl:use-attribute-sets="" background-color="#FABB26">
                                                                                        <fo:table-cell xsl:use-attribute-sets="TextoN01 " padding-top="1mm" padding-left="2.5mm" display-align="center" padding-bottom="1mm">
                                                                                            <fo:block text-align="left" color="#FFFFFF">
                                                                                                    Total a Pagar
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="TextoN01 " padding-top="" padding-left="0mm" display-align="center" padding-bottom="0mm">
                                                                                            <fo:block text-align="center" color="#FFFFFF">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="$MonedaBase = 'USD'">
                                                                                                        USD
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        Bs.
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell xsl:use-attribute-sets="TextoN01" padding-right="4mm" padding-top="" display-align="center" padding-bottom="0mm">
                                                                                            <fo:block text-align="right" color="#FFFFFF">
                                                                                                <xsl:choose>
                                                                                                    <xsl:when test="//*[local-name() = $TotalesDerecha]/TotalAPagar != ''">
                                                                                                        <xsl:call-template name="IsZero">
                                                                                                            <xsl:with-param name="valor"
                                                                                                                            select="//*[local-name() = $TotalesDerecha]/TotalAPagar"/>
                                                                                                            <xsl:with-param name="decimales"
                                                                                                                            select="2"/>
                                                                                                        </xsl:call-template>
                                                                                                    </xsl:when>
                                                                                                    <xsl:otherwise>
                                                                                                        0,00
                                                                                                    </xsl:otherwise>
                                                                                                </xsl:choose>		
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>	
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>	
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="TextoN01" padding-left="2mm" padding-top="1mm">
                                                    <fo:block>
                                                        Observaciones: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//InfoAdicional/Info[Campo='Observaciones']/Valor"/></fo:inline>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <fo:table-cell number-columns-spanned="3" margin-right="0mm" padding-top="3.5mm">
                                                    <fo:block>
                                                        <fo:table table-layout="fixed" width="100%" xsl:use-attribute-sets="">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell display-align="center" padding-left="4mm" xsl:use-attribute-sets="Texto03" padding-right="4mm">
                                                                        <fo:block text-align="justify">
                                                                            Este pago estará sujeto al cobro adicional del 3.00% del Impuesto a las Grandes Transacciones Financieras (IGTF), de conformidad con la Providencia Administrativa SNAT/2022/000013 publicada en la G.O.N 42.339 del 17-03-2022, en caso de ser cancelado en divisas. No aplica en pago en Bs.
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                                <!-- <xsl:choose>
                                                                    <xsl:when test="$MonedaBase !='USD'">
                                                                    
                                                                    </xsl:when>
                                                                    <xsl:otherwise> -->
                                                                        <fo:table-row>
                                                                            <fo:table-cell xsl:use-attribute-sets="Texto03" padding-top="2mm" padding-left="4mm" padding-right="4mm">
                                                                                <fo:block text-align="justify">
                                                                                    Este documento se expresa en 
                                                                                    <xsl:choose>
                                                                                        <xsl:when test="$MonedaBase = 'USD'">
                                                                                            Dólares Americanos
                                                                                        </xsl:when>
                                                                                        <xsl:otherwise>
                                                                                            Bolívares
                                                                                        </xsl:otherwise>
                                                                                    </xsl:choose>
                                                                                    con su equivalente en 
                                                                                    <xsl:choose>
                                                                                        <xsl:when test="$MonedaBase = 'USD'">
                                                                                            Bolívares
                                                                                        </xsl:when>
                                                                                        <xsl:otherwise>
                                                                                            Dólares Americanos
                                                                                        </xsl:otherwise>
                                                                                    </xsl:choose>
                                                                                    al tipo de cambio corriente del mercado a la fecha de su emisión, según lo establecido en el articulo 13 numeral 14 de la Providencia Administrativa SNAT /2011/0071 (..) en concordancia con el artículo 128  de la Ley del Banco Central de Venezuela (BCV); artículo 25 de la Ley que establece el Impuesto al Valor Agregado (IVA) y 38 del Reglamento General de la Ley que establece el Impuesto al Valor Agregado (RLIVA).
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    <!-- </xsl:otherwise>
                                                                </xsl:choose> -->
                                                                
                                                            </fo:table-body>	
                                                        </fo:table>	
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>                                    
                                </xsl:when>
                                <xsl:otherwise>
                                    <fo:table table-layout="fixed" width="100%">
                                        <fo:table-column column-width="100%"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <fo:table-cell display-align="center" xsl:use-attribute-sets="">
                                                    <fo:block margin-left="5mm" margin-right="5mm">
                                                        <fo:table table-layout="fixed" width="100%">
                                                            <fo:table-column column-width="100%"/>
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell display-align="center" xsl:use-attribute-sets="BordeAllBlue">
                                                                        <fo:block>
                                                                            <fo:table table-layout="fixed" width="100%">
                                                                            <fo:table-column column-width="100%"/>
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell display-align="center" xsl:use-attribute-sets="" margin="0" >
                                                                                        <fo:block text-align="left">
                                                                                            <fo:table table-layout="fixed" width="100%">
                                                                                                <fo:table-column column-width="100%"/>
                                                                                                <fo:table-body>
                                                                                                    <fo:table-row>
                                                                                                        <fo:table-cell height="6cm" display-align="before" xsl:use-attribute-sets="TextoN01" padding-top="2mm" padding-bottom="" margin="0">
                                                                                                            <fo:block text-align="justify" >
                                                                                                               Comentarios / Observaciones: <fo:inline xsl:use-attribute-sets="Texto01"><xsl:value-of select="//InfoAdicional/Info[Campo='Observaciones']/Valor"/></fo:inline>
                                                                                                            </fo:block>
                                                                                                        </fo:table-cell>
                                                                                                    </fo:table-row>
                                                                                                </fo:table-body>
                                                                                            </fo:table>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
                                                                        </fo:block>
                                                                    </fo:table-cell>
                                                                </fo:table-row>
                                                            </fo:table-body>
                                                        </fo:table>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <fo:table-cell height="8mm" number-columns-spanned="" display-align="center" xsl:use-attribute-sets="TextoN01" padding-top="3mm" >
                                                    <fo:block text-align="center" font-size="14pt">
                                                        SIN DERECHO A CREDITO FISCAL
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                </xsl:otherwise>
                            </xsl:choose>
						</fo:block>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>