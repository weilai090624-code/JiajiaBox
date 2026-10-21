/*
 * Copyright (c) 2026 weilai090624-code
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 */
package io.nekohasekai.sagernet.ui;

import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/** Approximate country/region representative points, not IP or city coordinates. */
public final class GlobeCountries {
    private static final Map<String,double[]> CENTERS;
    static {
        Map<String,double[]> points=new HashMap<>();
        String locations="CN,104,35;US,-98,39;JP,138,37;KR,128,36;KP,127,40;HK,114.2,22.3;MO,113.5,22.2;TW,121,24;SG,103.8,1.3;MY,102,4;ID,118,-3;TH,101,15;VN,108,16;PH,123,12;KH,105,13;LA,103,18;MM,96,21;BN,114.7,4.5;TL,126,-9;IN,79,22;PK,69,30;BD,90,24;NP,84,28;BT,90,27;LK,81,7;MV,73,3;AF,66,34;IR,54,32;IQ,44,33;SA,45,24;AE,54,24;QA,51,25;BH,50.6,26;KW,48,29;OM,57,21;YE,48,15;IL,35,31;PS,35.2,31.8;JO,36,31;LB,36,34;SY,38,35;TR,35,39;CY,33,35;GE,44,42;AM,45,40;AZ,48,40;KZ,68,48;UZ,64,41;TM,59,39;TJ,71,39;KG,75,41;MN,103,47;RU,98,60;DE,10,51;GB,-2,54;FR,2,47;NL,5,52;BE,4,51;LU,6,50;CH,8,47;AT,14,48;IT,12,43;ES,-4,40;PT,-8,40;IE,-8,53;IS,-19,65;NO,9,62;SE,15,62;FI,26,64;DK,10,56;PL,19,52;CZ,15,50;SK,20,49;HU,19,47;RO,25,46;BG,25,43;GR,23,39;AL,20,41;MK,22,42;ME,19,43;RS,21,44;BA,18,44;HR,16,45;SI,15,46;UA,32,49;BY,28,54;MD,29,47;LT,24,55;LV,25,57;EE,26,59;AD,1.5,42.5;MC,7.4,43.7;SM,12.5,43.9;VA,12.5,41.9;MT,14.4,35.9;LI,9.5,47.2;XK,21,43;GI,-5.3,36.1;FO,-7,62;GG,-2.6,49.4;JE,-2.1,49.2;IM,-4.5,54.2;AX,20,60;SJ,16,78;CA,-106,57;MX,-102,24;GT,-90,15;BZ,-89,17;HN,-86,15;SV,-89,14;NI,-85,13;CR,-84,10;PA,-80,9;CU,-79,22;JM,-77,18;HT,-73,19;DO,-70,19;BS,-77,25;BB,-59.5,13.2;PR,-66,18;TT,-61,10.5;AG,-61.8,17.1;DM,-61.4,15.4;GD,-61.7,12.1;KN,-62.8,17.3;LC,-61,13.9;VC,-61.2,13.3;GL,-42,72;BM,-64.7,32.3;KY,-81,19.3;TC,-71.8,21.7;AW,-70,12.5;CW,-69,12.2;BQ,-68.3,12.2;SX,-63.1,18;BL,-62.8,17.9;MF,-63.1,18.1;AI,-63,18.2;VG,-64.6,18.4;VI,-64.8,18.3;MS,-62.2,16.7;GP,-61.5,16.2;MQ,-61,14.6;PM,-56.3,46.9;BR,-52,-12;AR,-64,-35;CL,-71,-30;PE,-75,-10;BO,-64,-17;PY,-58,-23;UY,-56,-33;EC,-78,-2;CO,-73,4;VE,-66,8;GY,-59,5;SR,-56,4;GF,-53,4;FK,-59,-52;AU,134,-25;NZ,173,-41;PG,145,-6;FJ,178,-18;SB,160,-9;VU,167,-16;NC,165,-21;WS,-172,-14;TO,-175,-21;TV,179,-8;KI,-157,2;FM,158,7;MH,171,7;PW,134.5,7.5;NR,167,-.5;GU,145,13;MP,146,16;AS,-171,-14;CK,-159,-21;NU,-170,-19;PF,-149,-17;PN,-130,-25;TK,-172,-9;WF,-178,-14;NF,168,-29;CC,97,-12;CX,106,-10;HM,73,-53;UM,-177,28;ZA,25,-29;EG,30,27;MA,-7,32;DZ,3,28;TN,10,34;LY,17,27;SD,30,16;SS,30,7;ET,40,9;ER,39,15;DJ,43,12;SO,46,6;KE,38,1;UG,32,1;TZ,35,-6;RW,30,-2;BI,30,-3;CD,24,-3;CG,15,-1;GA,12,-1;GQ,10,2;CM,12,6;CF,21,7;TD,19,15;NE,9,18;NG,8,9;BJ,2,9;TG,1,8;GH,-2,8;CI,-6,8;LR,-10,6;SL,-12,8;GN,-10,10;GW,-15,12;SN,-14,14;GM,-16,13;ML,-4,17;BF,-2,12;MR,-11,21;EH,-13,25;CV,-24,16;ST,7,0;AO,18,-12;ZM,28,-13;ZW,30,-19;MW,34,-13;MZ,35,-18;BW,24,-22;NA,17,-22;LS,28,-30;SZ,31,-26;MG,47,-19;MU,57.5,-20.2;SC,55.5,-4.6;KM,44,-12;YT,45,-13;RE,55,-21;SH,-6,-16;IO,72,-6;TF,69,-49;AQ,0,-82";
        for(String entry:locations.split(";")){String[] value=entry.split(",");points.put(value[0],new double[]{Double.parseDouble(value[1]),Double.parseDouble(value[2])});}
        CENTERS=Collections.unmodifiableMap(points);
    }
    private GlobeCountries(){}
    public static double[] center(String code){double[] point=CENTERS.get(code);return point==null?null:point.clone();}
    public static String name(String code,Locale locale){
        if(locale==null)locale=Locale.getDefault();
        if("zh".equals(locale.getLanguage())){
            boolean traditional="Hant".equals(locale.getScript())||"TW".equals(locale.getCountry())||"HK".equals(locale.getCountry())||"MO".equals(locale.getCountry());
            if("CN".equals(code))return traditional?"中國大陸":"中国大陆";
            if("HK".equals(code))return "香港";
            if("TW".equals(code))return traditional?"臺灣":"台湾";
            if("MO".equals(code))return traditional?"澳門":"澳门";
        }
        String name=new Locale("",code).getDisplayCountry(locale);return name.isEmpty()?code:name;
    }
}
