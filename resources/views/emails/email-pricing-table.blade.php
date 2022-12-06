<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Nowa wiadomość od buzon.studio</title>
    <style type="text/css">
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap");
    </style>
  </head>
  <body style="margin: 0; margin: 0; padding: 0; min-width: 100%">
    <span
      style="
        display: none !important;
        visibility: hidden;
        mso-hide: all;
        font-size: 1px;
        line-height: 1px;
        max-height: 0px;
        max-width: 0px;
        opacity: 0;
        overflow: hidden;
      "
      >Cze&#x15B;&#x107;! Rozliczenie i pliki znajdziesz tutaj :-)</span
    >
    <center
      class="wrapper"
      style="
        width: 100%;
        table-layout: fixed;
        background-color: #dadada;
        padding-bottom: 60px;
        padding-top: 60px;
        font-family: sans-serif;
      "
    >
      <table
        align="center"
        role="presentation"
        class="main"
        width="100%"
        style="
          border-spacing: 0;
          width: 100%;
          max-width: 600px;
          color: #ffffff;
          background: rgb(41, 41, 41);
          font-family: sans-serif;
          border-spacing: 0;
          margin: 0;
          padding: 0;
          width: 100%;
          max-width: 600px; ;
        "
      >
        <!-- NAV -->
        
        <x-emails.email-navbar/>

        <!-- HERO -->
        <tr align="center">
          <td
            class="hero"
            style="padding: 0; text-align: center; padding-bottom: 25px"
          >
            <table
              align="center"
              role="presentation"
              width="100%"
              style="border-spacing: 0"
            >
              <tr>
                <td style="padding: 0; padding: 15px 30px 0 30px">

                @if (!empty($mailData['h1']))
                    <h1 style="font-family: 'Poppins', sans-serif; color: #ffffff; margin-bottom: 15px;">
                        {{$mailData['h1']}}
                    </h1>
                @endif

                @if (!empty($mailData['h2']))
                    <h2 style="font-family: 'Poppins', sans-serif; color: #cfcfcf; font-weight: 500; margin:15px 0px 10px 0px;">
                        {{$mailData['h2']}}
                    </h2>
                @endif

                @if (!empty($mailData['main']))
                    <p style="font-family: 'Poppins', sans-serif; color: #cfcfcf; font-weight: 300; margin-top:0px;">
                        {{$mailData['main']}}
                    </p>
                @endif

                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- Price -->
        <tr>
          <td style="padding: 0">
            <table role="presentation" width="100%" style="border-spacing: 0">
              <tr>
                <td style="padding: 0; padding: 0 30px 0 30px">
                  <table
                    style="
                      border-spacing: 0;
                      border-collapse: collapse;
                      width: 100%;
                      margin-bottom: 20px;
                      border-collapse: collapse;
                    "
                    class="pricing-table"
                    width="100%"
                  >
                 
                  <tr
                      style="
                        background-color: #222222;
                        background-color: #48a576;
                      "
                    >
                      <th
                        style="text-align: left; padding: 16px 15px 16px 15px; font-family: 'Poppins', sans-serif;"
                      >
                        Nazwa
                      </th>
                      <th
                        style="text-align: left; padding: 16px 15px 16px 15px; font-family: 'Poppins', sans-serif;"
                      >
                        Cena
                      </th>
                      <th
                        style="text-align: left; padding: 16px 15px 16px 15px; font-family: 'Poppins', sans-serif;"
                      >
                        Ilość
                      </th>
                      <th
                        style="text-align: left; padding: 16px 15px 16px 15px; font-family: 'Poppins', sans-serif;"
                      >
                        Łącznie
                      </th>
                    </tr>

                    @php
                        $counter = 1;
                    @endphp

                    @if (!empty($mailData['table']))

                        @foreach ($mailData['table'] as $item)
                            @if($counter % 2 == 0)
                            <tr style="background-color: #222222">
                            @else
                            <tr style="background-color: #363636">
                            @endif
                                <td style="
                                        padding: 0;
                                        text-align: left;
                                        padding: 16px 15px 16px 15px;
                                        font-family: 'Poppins', sans-serif;
                                ">
                                    {{ $item['name'] }}
                                </td>
                                <td style="
                                        padding: 0;
                                        text-align: left;
                                        padding: 16px 15px 16px 15px;
                                        font-family: 'Poppins', sans-serif;
                                ">
                                    {{ $item['price'] }} zł
                                </td>
                                <td style="
                                        padding: 0;
                                        text-align: left;
                                        padding: 16px 15px 16px 15px;
                                        font-family: 'Poppins', sans-serif;
                                ">
                                    {{ $item['amount'] }}
                                </td>
                                <td style="
                                        padding: 0;
                                        text-align: left;
                                        padding: 16px 15px 16px 15px;
                                        font-family: 'Poppins', sans-serif;
                                ">
                                    {{ $item['total'] }} zł
                                </td>
                            </tr>

                            @php 
                                $counter++;
                            @endphp

                        @endforeach
                    @endif


                    @if($counter % 2 == 0)
                        <tr style="background-color: #222222">
                    @else
                        <tr style="background-color: #363636">
                    @endif
                      <td
                        style="
                          padding: 0;
                          text-align: left;
                          padding: 16px 15px 16px 15px;
                        "
                      ></td>
                      <td
                        style="
                          padding: 0;
                          font-weight: bold;
                          text-align: left;
                          padding: 16px 15px 16px 15px;
                          color: #60de9f;
                          font-family: 'Poppins', sans-serif;
                        "
                      >
                        Łącznie
                      </td>
                      <td
                        style="
                          padding: 0;
                          text-align: left;
                          padding: 16px 15px 16px 15px;
                        "
                      ></td>
                      <td
                        style="
                          padding: 0;
                          font-weight: bold;
                          text-align: left;
                          padding: 16px 15px 16px 15px;
                          color: #60de9f;
                          font-family: 'Poppins', sans-serif;
                        "
                      >
                        @if (!empty($mailData['totalPrice']))
                            {{ $mailData['totalPrice'] }} zł
                        @endif
                      </td>
                    </tr>


                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- Bottom -->
        <tr align="center">
          <td class="text-center" style="padding: 0; text-align: center">
            <table
              align="center"
              role="presentation"
              width="100%"
              class="mb-3"
              style="border-spacing: 0; margin-bottom: 30px"
            >
              <tr>
                <td
                  class="font-family-primary"
                  style="padding: 0 15px 0 15px; font-family: 'Poppins', sans-serif"
                >

                @if (!empty($mailData['bottomh3']))
                    <h3 style="font-family: 'Poppins', sans-serif; color: #ffffff; font-weight: 700; margin-bottom: 10px;">
                        {{$mailData['bottomh3']}}
                    </h3>
                @endif
                @if (!empty($mailData['bottomText']))
                    <p style="font-family: 'Poppins', sans-serif; color: #cfcfcf; font-weight: 500;margin-top: 10px; white-space: pre-line;">                        
                      {{$mailData['bottomText']}}
                    </p>
                @endif

                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- FOOTER -->
        
        <x-emails.email-footer/>

      </table>
      <!-- End Main Class -->
    </center>
    <!-- End Wrapper -->
  </body>
</html>


