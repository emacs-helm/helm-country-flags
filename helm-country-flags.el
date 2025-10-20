;;; helm-country-flags --- Flags from various countries -*- lexical-binding: t -*-

;; Author: Thierry Volpiatto <thievol@posteo.net>

;; Version: 1.0
;; URL: https://github.com/emacs-helm/helm-country-flags

;; Copyright (C) 2025 Thierry Volpiatto <thievol@posteo.net>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(eval-when-compile (require 'cl-lib))
(require 'helm)

(defvar helm-country-codes
  '(("afghanistan" . "AF") ("albania" . "AL") ("algeria" . "DZ")
    ("american samoa" . "AS") ("andorra" . "AD") ("angola" . "AO")
    ("anguilla" . "AI") ("antarctica" . "AQ")
    ("antigua and barbuda" . "AG") ("argentina" . "AR")
    ("armenia" . "AM") ("aruba" . "AW") ("australia" . "AU")
    ("austria" . "AT") ("azerbaijan" . "AZ") ("bahamas" . "BS")
    ("bahrain" . "BH") ("bangladesh" . "BD") ("barbados" . "BB")
    ("belarus" . "BY") ("belgium" . "BE") ("belize" . "BZ")
    ("benin" . "BJ") ("bermuda" . "BM") ("bhutan" . "BT")
    ("bolivia, plurinational state of" . "BO")
    ("bonaire, sint eustatius and saba" . "BQ")
    ("bosnia and herzegovina" . "BA") ("botswana" . "BW")
    ("bouvet island" . "BV") ("brazil" . "BR")
    ("british indian ocean territory" . "IO")
    ("brunei darussalam" . "BN") ("bulgaria" . "BG")
    ("burkina faso" . "BF") ("burundi" . "BI") ("cambodia" . "KH")
    ("cameroon" . "CM") ("canada" . "CA") ("cape verde" . "CV")
    ("cayman islands" . "KY") ("central african republic" . "CF")
    ("chad" . "TD") ("chile" . "CL") ("china" . "CN")
    ("christmas island" . "CX") ("cocos (keeling) islands" . "CC")
    ("colombia" . "CO") ("comoros" . "KM") ("congo" . "CG")
    ("congo, the democratic republic of the" . "CD")
    ("cook islands" . "CK") ("costa rica" . "CR") ("croatia" . "HR")
    ("cuba" . "CU") ("curaçao" . "CW") ("cyprus" . "CY")
    ("czech republic" . "CZ") ("côte d'ivoire" . "CI") ("denmark" . "DK")
    ("djibouti" . "DJ") ("dominica" . "DM") ("dominican republic" . "DO")
    ("ecuador" . "EC") ("egypt" . "EG") ("el salvador" . "SV")
    ("equatorial guinea" . "GQ") ("eritrea" . "ER") ("estonia" . "EE")
    ("eswatini" . "SZ") ("ethiopia" . "ET")
    ("falkland islands (malvinas)" . "FK") ("faroe islands" . "FO")
    ("fiji" . "FJ") ("finland" . "FI") ("france" . "FR")
    ("french guiana" . "GF") ("french polynesia" . "PF")
    ("french southern territories" . "TF") ("gabon" . "GA")
    ("gambia" . "GM") ("georgia" . "GE") ("germany" . "DE")
    ("ghana" . "GH") ("gibraltar" . "GI") ("greece" . "GR")
    ("greenland" . "GL") ("grenada" . "GD") ("guadeloupe" . "GP")
    ("guam" . "GU") ("guatemala" . "GT") ("guernsey" . "GG")
    ("guinea" . "GN") ("guinea-bissau" . "GW") ("guyana" . "GY")
    ("haiti" . "HT") ("heard island and mcdonald islands" . "HM")
    ("holy see (vatican city state)" . "VA") ("honduras" . "HN")
    ("hong kong" . "HK") ("hungary" . "HU") ("iceland" . "IS")
    ("india" . "IN") ("indonesia" . "ID")
    ("iran, islamic republic of" . "IR") ("iraq" . "IQ")
    ("ireland" . "IE") ("isle of man" . "IM") ("israel" . "IL")
    ("italy" . "IT") ("jamaica" . "JM") ("japan" . "JP")
    ("jersey" . "JE") ("jordan" . "JO") ("kazakhstan" . "KZ")
    ("kenya" . "KE") ("kiribati" . "KI")
    ("korea, democratic people's republic of" . "KP")
    ("korea, republic of" . "KR") ("kuwait" . "KW") ("kyrgyzstan" . "KG")
    ("lao people's democratic republic" . "LA") ("latvia" . "LV")
    ("lebanon" . "LB") ("lesotho" . "LS") ("liberia" . "LR")
    ("libya" . "LY") ("liechtenstein" . "LI") ("lithuania" . "LT")
    ("luxembourg" . "LU") ("macao" . "MO")
    ("macedonia, the former yugoslav republic of" . "MK")
    ("madagascar" . "MG") ("malawi" . "MW") ("malaysia" . "MY")
    ("maldives" . "MV") ("mali" . "ML") ("malta" . "MT")
    ("marshall islands" . "MH") ("martinique" . "MQ")
    ("mauritania" . "MR") ("mauritius" . "MU") ("mayotte" . "YT")
    ("mexico" . "MX") ("micronesia, federated states of" . "FM")
    ("moldova, republic of" . "MD") ("monaco" . "MC") ("mongolia" . "MN")
    ("montenegro" . "ME") ("montserrat" . "MS") ("morocco" . "MA")
    ("mozambique" . "MZ") ("myanmar" . "MM") ("namibia" . "NA")
    ("nauru" . "NR") ("nepal" . "NP") ("netherlands" . "NL")
    ("new caledonia" . "NC") ("new zealand" . "NZ") ("nicaragua" . "NI")
    ("niger" . "NE") ("nigeria" . "NG") ("niue" . "NU")
    ("norfolk island" . "NF") ("northern mariana islands" . "MP")
    ("norway" . "NO") ("oman" . "OM") ("pakistan" . "PK")
    ("palau" . "PW") ("palestine, state of" . "PS") ("panama" . "PA")
    ("papua new guinea" . "PG") ("paraguay" . "PY") ("peru" . "PE")
    ("philippines" . "PH") ("pitcairn" . "PN") ("poland" . "PL")
    ("portugal" . "PT") ("puerto rico" . "PR") ("qatar" . "QA")
    ("romania" . "RO") ("russian federation" . "RU") ("rwanda" . "RW")
    ("réunion" . "RE") ("saint barthélemy" . "BL")
    ("saint helena, ascension and tristan da cunha" . "SH")
    ("saint kitts and nevis" . "KN") ("saint lucia" . "LC")
    ("saint martin (french part)" . "MF")
    ("saint pierre and miquelon" . "PM")
    ("saint vincent and the grenadines" . "VC") ("samoa" . "WS")
    ("san marino" . "SM") ("sao tome and principe" . "ST")
    ("saudi arabia" . "SA") ("senegal" . "SN") ("serbia" . "RS")
    ("seychelles" . "SC") ("sierra leone" . "SL") ("singapore" . "SG")
    ("sint maarten (dutch part)" . "SX") ("slovakia" . "SK")
    ("slovenia" . "SI") ("solomon islands" . "SB") ("somalia" . "SO")
    ("south africa" . "ZA")
    ("south georgia and the south sandwich islands" . "GS")
    ("south sudan" . "SS") ("spain" . "ES") ("sri lanka" . "LK")
    ("sudan" . "SD") ("suriname" . "SR")
    ("svalbard and jan mayen" . "SJ") ("sweden" . "SE")
    ("switzerland" . "CH") ("syrian arab republic" . "SY")
    ("taiwan, province of china" . "TW") ("tajikistan" . "TJ")
    ("tanzania, united republic of" . "TZ") ("thailand" . "TH")
    ("timor-leste" . "TL") ("togo" . "TG") ("tokelau" . "TK")
    ("tonga" . "TO") ("trinidad and tobago" . "TT") ("tunisia" . "TN")
    ("turkey" . "TR") ("turkmenistan" . "TM")
    ("turks and caicos islands" . "TC") ("tuvalu" . "TV")
    ("uganda" . "UG") ("ukraine" . "UA") ("united arab emirates" . "AE")
    ("united kingdom" . "GB") ("united states" . "US")
    ("united states minor outlying islands" . "UM") ("uruguay" . "UY")
    ("uzbekistan" . "UZ") ("vanuatu" . "VU")
    ("venezuela, bolivarian republic of" . "VE") ("viet nam" . "VN")
    ("virgin islands, british" . "VG") ("virgin islands, u.s." . "VI")
    ("wallis and futuna" . "WF") ("western sahara" . "EH")
    ("yemen" . "YE") ("zambia" . "ZM") ("zimbabwe" . "ZW")
    ("åland islands" . "AX")))

(defun helm-country2flag (code)
  "Convert country code (e.g. US, FR) to emoji flag."
  (let* ((char1 (aref code 0))
         (char2 (aref code 1))
         ;; IIUC:
         ;; 127462 == Unicode A (Eval (string 127462)=> "🇦")
         ;;     65 == Ascii A   (Eval (string 65) => "A")
         ;; Unicode Index == (- 127462 65) => 127397
         ;; So that (string (+ 127397 ?F)) => "🇫"
         ;; And (string (+ 127397 ?R)) => "🇷"
         ;; Concating e.g. (concat "🇫" "🇷") => "🇫🇷"
         (flag1 (+ char1 127397))
         (flag2 (+ char2 127397)))
    (concat (string flag1) (string flag2))))

;;;###autoload
(defun helm-country-flags ()
  (interactive)
  (helm :sources (helm-build-sync-source "helm country flags"
                 :candidates 'helm-country-codes
                 :candidate-transformer
                 (lambda (candidates)
                   (cl-loop for (country . code) in candidates
                            collect (cons (concat (helm-country2flag code)
                                                  " " country)
                                          code)))
                 :action '(("Insert Flag" .
                            (lambda (c)
                              (insert (helm-country2flag c))))
                           ("Copy Flag" .
                            (lambda (c)
                              (kill-new (helm-country2flag c))))
                           ("Insert country" .
                            (lambda (c)
                              (insert (car (rassoc c helm-country-codes)))))
                           ("Copy country" .
                            (lambda (c)
                              (kill-new (car (rassoc c helm-country-codes)))))
                           ("Insert code" . (lambda (c) (insert c)))
                           ("Copy code" . (lambda (c) (kill-new c)))))
      :buffer "*helm country flags*"))

(provide 'helm-country-flags)

;;; helm-country-flags.el ends here
