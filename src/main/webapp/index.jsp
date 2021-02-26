<body class="common_background subscription_background customBodyClass">
    <div class="container">
        <div class="space_5"></div>
        <div class="common_textcenter">

            <div id="divBanner" class="banner_main_div subscription_banner_main_div">
                <div class="banner_secondary_div subscription_banner_secondary_div">
                    <img src="http://blr-dev.fonestarz.com/Content/Images/NBABanner.jpg" alt="emocion" class="img-fluid"
                        data-imagetype="banner">
                    <div class="subscription_banneroverlay_containerdiv">
                        <div class="subscription_banneroverlay_div">$BANNEROVERLAYTEXT$</div>
                    </div>
                </div>
            </div>
            <!-- Age Warning -->
            <div class="space_5"></div>
            <div class="content_div subscription_content_div">
                <input type="checkbox" style="opacity:0;position: absolute;left: -9999px" name="AcceptTerms"
                    id="AcceptTerms">
                <input type="text" style="opacity:0;position: absolute;left: -9999px" name="MSD">

                <div class="common_text_config subscription_servicetext1_div">$SERVICETEXT$</div>

                <div id="div-subscribe-tandc" class="subscription_tandclist">
                    <ul>
                        $SUBSCRIBETERMSLIST$
                    </ul>
                </div>

                <div id="div-confirmsubscription-tandc" class="subscription_tandclist hidden">
                    <ul>
                        $CONFIRMSUBSCRIPTIONTERMSLIST$
                    </ul>
                </div>

                <showallpacks data-packsall="true">
                    <pack data-packtype="default">
                        
                        <div id="divSubscribe_$PACKID$" class="subscription_buttons_main_div">
                          <div class="common_text_config subscriptiontext_div">
                            	$DEFAULTSUBSCRIBETEXT$
                        	</div>
                            <div class="subscription_div_subscribe_button">
                                <button id="btnSubscribe" onclick="showConfirmButton($PACKID$)" class="common_button_config subscription_subscribe_button"
                                    data-submit="true" data-modifytodiv="true" ga="preSubscribeClick">
                                    $DEFAULTSUBSCRIBEBUTTONTEXT$
                                </button>
                            </div>
                        </div>

                        <div id="divConfirm_$PACKID$" class="confirmsubscription_buttons_main_div hidden">
                           <div class="common_text_config confirmsubscriptiontext_div">
                            	$DEFAULTCONFIRMSUBSCRIPTIONTEXT$
                        	</div>
                            <div class="confirmsubscription_div_confirm_button">
                                <submitbutton
                                    class="common_button_config confirmsubscription_confirm_button" data-submit="true"
                                    data-modifytodiv="true" ga="subscribeClick">
                                    $DEFAULTCONFIRMSUBSCRIBEBUTTONTEXT$
                                </submitbutton>
                            </div>
                        </div>
                    </pack>
                </showallpacks>

                <div class="space_10"></div>
                <div class="space_20"></div>
                <button type="submit" style="opacity:0;position: absolute;left: -9999px"
                    id="btnsubmit">subscribeText</button>
            </div>
            <script>
                var hiddenClassName = 'hidden';

                function showConfirmButton(packid) {
                    var subscribeDiv = document.getElementById('divSubscribe_' + packid);
                    var confirmDiv = document.getElementById('divConfirm_' + packid);
                    confirmDiv.classList.remove(hiddenClassName);
                    subscribeDiv.classList.add(hiddenClassName);
                    swapTandC();
                }

                function swapTandC() {
                    document.getElementById('div-confirmsubscription-tandc').classList.remove(hiddenClassName);
                    document.getElementById('div-subscribe-tandc').classList.add(hiddenClassName);
                }
            </script>
</body>
$FRAUDDETECTIONJAVASCRIPT$
