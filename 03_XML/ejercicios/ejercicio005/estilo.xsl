<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title>AEMET Salamanca</title>
				<link rel="stylesheet" href="css/style.css" type="text/css" />
			</head>
			<body>
				<div class="container">
					<header>
						<img src="img/logo_AEMET_web.gif" alt="Imagen del logo de AEMET" />
						<div class="header-imagenes">
							<img src="img/11.gif" alt="ico1" />
							<img src="img/12.gif" alt="ico2" />
							<img src="img/14.gif" alt="ico3" />
							<img src="img/15.gif" alt="ico4" />
							<img src="img/16.gif" alt="ico5" />
							<img src="img/17.gif" alt="ico6" />
							<img src="img/23.gif" alt="ico7" />
							<img src="img/27.gif" alt="ico8" />
							<img src="img/25.gif" alt="ico9" />
							<img src="img/26.gif" alt="ico10" />
							<img src="img/33.gif" alt="ico11" />
							<img src="img/36.gif" alt="ico12" />
						</div>
					</header>
					<main>
						<section class="datos">
							<p><span class="titulo">Origen: </span> </p>
							<p><span class="titulo">Web: </span> </p>
							<p><span class="titulo">Nota legal: </span>  </p>
						</section>
						<section class="ubicacion">
							<div class="ubicacion__info">
								<ul>
									<li>Fecha:| </li>
									<li>Minicipio:</li>
									<li>Provincia: </li>
								</ul>
							</div>
							<img src="img/huevofrito.png" alt="Imagen de huevo frito" />
						</section>
						<section class="prevision">
							<div class="prevision__franja-header"></div>
							<table>
								<tr>
									<th>Fecha</th>
									<th>Cielo</th>
									<th>Viento</th>
									<th>Temperatura</th>
								</tr>

									
								
							</table>
						</section>
					</main>
					<footer>
						<img src="img/footer.jpg" alt="Imagen del pie de pagina" />
					</footer>
				</div>
			</body>
		</html>
		
		
	</xsl:template>
</xsl:stylesheet>
