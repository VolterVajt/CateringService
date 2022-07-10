<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ketering Služba</title>

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>

        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-md">
            <%@include file="includes/navbar.jsp"%>
            <div class="row">
                <section class="col-6">  
                    <div class="container-fluid">
                        <form class="reg-form rounded" action="Authenticate" method="post">  
                            <strong>REGISTRACIJA</strong><br>
                            <label for="korisnickoIme">Korisničko ime</label> 

                            <input type="text" name="korisnickoIme" id="korisnickoIme" required/></br>

                            <label for="ime">Ime</label> 

                            <input type="text" name="ime" id="ime" required/></br>

                            <label for="prezime">Prezime</label> 

                            <input type="text" name="prezime" id="prezime" required/></br>

                            <label for="password">Password</label> 

                            <input type="password" name="password" id="password" required/></br>

                            <label for="adresa">Adresa</label> 

                            <input type="text" name="adresa" id="adresa" required/></br>
                            <div class="reg-buttons">
                                    <input class="btn btn-primary " type="submit" value="Registruj se"> 
                                    <input class="btn btn-secondary" type="reset" value="Resetuj">
                            </div>
                        </form>
                        <p> ${msg}</p> <!-- Poruka o gresci ili uspehu -->
                    </div>
                </section>
                <aside class="col-6">
                    <div class="container-fluid">
                        <?xml version="1.0" encoding="utf-8"?>
                        <!-- Generator: Adobe Illustrator 24.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                             viewBox="0 0 380 397" style="enable-background:new 0 0 380 397;" xml:space="preserve">
                        <g>
                        <path d="M306.63,202.83c-17.45-3.05-34.06,0.69-50.24,7.14c-15.89,6.34-29.23,16.69-42.7,26.86c-9.03,6.83-17.47,14.63-28.47,18.35
                              c-10.49,3.55-20.07,1.97-27.83-6.31c-3.54-3.78-6.62-8.02-9.63-12.26c-4.79-6.74-8.85-14.08-14.12-20.41
                              c-9.58-11.49-22.39-15.43-37.07-13.58c-4.03,0.51-6.9,2.52-7.62,6.78c-0.65,3.88,1.6,5.98,4.47,8.26
                              c6.45,5.15,12.88,10.45,18.61,16.36c9.36,9.66,13.81,21.57,13.77,35.06c-0.02,5.52-0.21,11.05-0.4,16.57
                              c-0.39,11.72,0.11,23.34,4.21,34.48c1.2,3.25,1.99,6.92,6.01,9.83c0.3-2.36,0.84-3.82,0.58-5.11c-3.17-16.17-1.25-32.41-1.01-48.64
                              c0.11-7.56-0.22-15.37-1.99-22.67c-4.09-16.83-14.34-29.59-28.75-39.07c-2.08-1.37-4.07-2.88-6.1-4.33
                              c0.27-0.7,0.54-1.39,0.81-2.09c3.83,0.37,7.77,0.31,11.47,1.21c8.13,1.98,14.1,7.24,18.76,13.98c4.88,7.07,9.45,14.35,14.31,21.43
                              c5.81,8.47,13.73,13.58,23.92,15.78c13.87,2.99,26.21-0.76,37.68-7.89c8.84-5.5,17.2-11.79,25.6-17.97
                              c11.16-8.21,22.62-15.85,35.49-21.15c9.71-3.99,19.71-6.88,30.32-6.66c3.78,0.08,7.78,0.22,10.24,4.24
                              c-8.35,2.72-16.41,4.69-23.93,7.92c-18.86,8.1-35.27,20.19-49.06,35.12c-14.33,15.52-27.54,32.13-40.52,48.83
                              c-9.39,12.08-17.68,25.03-26.29,37.72c-1.58,2.34-2.33,5.24-3.47,7.88c0.54,0.3,1.07,0.61,1.61,0.91c1.39-1.37,2.96-2.6,4.13-4.14
                              c8.17-10.74,16.1-21.67,24.41-32.3c20.46-26.16,42.28-51.05,68.74-71.44c14.23-10.96,29.39-20.08,47.73-22.36
                              c1.2-0.15,2.42-0.45,3.54-0.92c5.25-2.19,6.65-7.06,2.47-10.88C313.78,205.06,310.05,203.42,306.63,202.83z"/>
                        <path d="M31.24,170.55c1.16-3.01,2.4-6,3.47-9.04c10.81-30.75,28.93-56.21,56.25-74.2c52.12-34.31,107.98-39.33,166.11-18.2
                              c24.26,8.82,44.93,23.57,61.59,43.72c11.91,14.4,20.53,30.44,26.49,48.05c1.11,3.28,2.48,6.48,3.73,9.71
                              c0.7-0.14,1.41-0.29,2.11-0.43c0.11-1.86,0.64-3.8,0.26-5.56c-9.02-41.92-31.65-74.55-69.23-95.13
                              c-58.53-32.04-118.68-32.76-178.11-2.86c-40.34,20.3-65.29,53.8-74.8,98.29c-0.35,1.62-0.04,3.37-0.04,5.06
                              C29.81,170.16,30.52,170.36,31.24,170.55z"/>
                        <path d="M365.44,178.73c-2.58,0-5.18-0.15-7.75,0.02c-19.86,1.35-39.7,2.92-59.57,4.11c-29.04,1.74-58.09,4.03-87.16,4.6
                              c-30.94,0.6-61.91-0.34-92.86-0.98c-16.23-0.34-32.45-1.29-48.66-2.33c-8.85-0.57-17.64-1.92-26.47-2.86
                              c-9.01-0.96-18.02-1.86-28.96-2.98c5.42,6.88,11.53,8.07,17.24,9.59c28.01,7.47,56.83,9.18,85.53,10.68
                              c26.89,1.41,53.9,0.77,80.85,0.94c38.04,0.24,75.98-1.83,113.76-6.19c14.56-1.68,28.99-4.7,43.39-7.56
                              c3.91-0.78,7.49-3.23,11.22-4.91C365.81,180.14,365.63,179.43,365.44,178.73z"/>
                        <path d="M117.93,303.52c-19.5,27.8-37.95,54.09-56.33,80.42c-0.37,0.52,0.06,1.59,0.21,3.97c18.08-19.12,32.56-39.73,50.34-58.59
                              c1.57,3.51,2.48,5.75,3.54,7.91c6.82,13.9,14.85,26.89,28.17,35.61c2.3,1.5,4.62,4.08,8.98,1.81
                              C132.16,355.62,124.02,330.78,117.93,303.52z"/>
                        <path d="M177.34,254.78c2.76-0.97,5.77-1.52,8.23-2.98c6.04-3.6,11.93-7.49,17.7-11.52c12.3-8.6,24.18-17.84,36.84-25.87
                              c7.28-4.62,15.75-7.39,23.86-11.07c-1.04-0.14-1.95-0.43-2.82-0.35c-18.89,1.78-35.36,8.89-49.74,21.45
                              c-11.26,9.83-20.89,21.69-34.77,28.38C176.88,253.47,177.11,254.12,177.34,254.78z"/>
                        <path d="M208.09,215.17c-11.94,10.41-22.82,22.04-34.14,33.17c-0.72,0.71-1.29,1.56-1.92,2.35c2.07,0.33,3.45-0.13,4.51-0.99
                              c7.33-5.97,15.12-11.5,21.77-18.16c12.5-12.53,26.13-22.91,43.51-27.99C229.12,203.22,217.45,207.01,208.09,215.17z"/>
                        <path d="M212.15,44.83c-4.21-11.8-13.51-17.66-23.89-16.5c-11.34,1.27-18.18,6.87-18.92,16.23
                              C183.16,33.84,196.97,33.6,212.15,44.83z"/>
                        <path d="M199.55,25.68c-0.84-4.48-1.32-7.99-2.2-11.4c-0.85-3.29-3.21-5.05-6.68-5.17c-3.42-0.11-6.12,1.46-7.3,4.48
                              c-1.48,3.79-3.62,7.75-1.21,12.09C187.56,25.68,192.67,25.68,199.55,25.68z"/>
                        </g>
                        </svg>

                    </div>
                </aside>
            </div>
            <%@include file="includes/footer.jsp"%>
        </div>
    </body>
</html>
