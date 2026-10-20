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

package moe.matsuri.nb4a.ui;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class NodeRegionFlag {
    private static final String[][] REGIONS = {
        {"CN", "中国|中國|台湾|台灣|大陆|大陸|北京|上海|广州|深圳|(?<![A-Za-z])(?:CN|TW|China|Taiwan)(?![A-Za-z])|🇨🇳|🇹🇼"},
        {"HK", "香港|(?<![A-Za-z])(?:HK|Hong\\s*Kong)(?![A-Za-z])|🇭🇰"},
        {"MO", "澳门|澳門|(?<![A-Za-z])(?:MO|Macau|Macao)(?![A-Za-z])|🇲🇴"},
        {"JP", "日本|东京|東京|大阪|(?<![A-Za-z])(?:JP|Japan|Tokyo)(?![A-Za-z])|🇯🇵"},
        {"US", "美国|美國|洛杉矶|洛杉磯|(?<![A-Za-z])(?:US|USA|United\\s*States)(?![A-Za-z])|🇺🇸"},
        {"SG", "新加坡|狮城|獅城|(?<![A-Za-z])(?:SG|Singapore)(?![A-Za-z])|🇸🇬"},
        {"KR", "韩国|韓國|首尔|首爾|(?<![A-Za-z])(?:KR|Korea|Seoul)(?![A-Za-z])|🇰🇷"},
        {"GB", "英国|英國|伦敦|倫敦|(?<![A-Za-z])(?:UK|GB|Britain|London)(?![A-Za-z])|🇬🇧"},
        {"DE", "德国|德國|(?<![A-Za-z])(?:DE|Germany)(?![A-Za-z])|🇩🇪"},
        {"FR", "法国|法國|巴黎|(?<![A-Za-z])(?:FR|France|Paris)(?![A-Za-z])|🇫🇷"},
        {"CA", "加拿大|(?<![A-Za-z])(?:CA|Canada)(?![A-Za-z])|🇨🇦"},
        {"AU", "澳大利亚|澳大利亞|澳洲|(?<![A-Za-z])(?:AU|Australia)(?![A-Za-z])|🇦🇺"},
        {"RU", "俄罗斯|俄羅斯|(?<![A-Za-z])(?:RU|Russia)(?![A-Za-z])|🇷🇺"},
        {"IN", "印度(?!尼)|(?<![A-Za-z])(?:IN|India)(?![A-Za-z])|🇮🇳"},
        {"NL", "荷兰|荷蘭|阿姆斯特丹|(?<![A-Za-z])(?:NL|Netherlands|Amsterdam)(?![A-Za-z])|🇳🇱"},
        {"TR", "土耳其|(?<![A-Za-z])(?:TR|Turkey|Türkiye)(?![A-Za-z])|🇹🇷"},
        {"TH", "泰国|泰國|曼谷|(?<![A-Za-z])(?:TH|Thailand|Bangkok)(?![A-Za-z])|🇹🇭"},
        {"VN", "越南|(?<![A-Za-z])(?:VN|Vietnam)(?![A-Za-z])|🇻🇳"},
        {"MY", "马来西亚|馬來西亞|(?<![A-Za-z])(?:MY|Malaysia)(?![A-Za-z])|🇲🇾"},
        {"ID", "印度尼西亚|印度尼西亞|印尼|(?<![A-Za-z])(?:ID|Indonesia)(?![A-Za-z])|🇮🇩"},
        {"PH", "菲律宾|菲律賓|(?<![A-Za-z])(?:PH|Philippines)(?![A-Za-z])|🇵🇭"},
        {"NZ", "新西兰|新西蘭|紐西蘭|(?<![A-Za-z])(?:NZ|New\\s*Zealand)(?![A-Za-z])|🇳🇿"},
        {"BR", "巴西|(?<![A-Za-z])(?:BR|Brazil)(?![A-Za-z])|🇧🇷"},
        {"AR", "阿根廷|(?<![A-Za-z])(?:AR|Argentina)(?![A-Za-z])|🇦🇷"},
        {"MX", "墨西哥|(?<![A-Za-z])(?:MX|Mexico)(?![A-Za-z])|🇲🇽"},
        {"ZA", "南非|(?<![A-Za-z])(?:ZA|South\\s*Africa)(?![A-Za-z])|🇿🇦"},
        {"AE", "阿联酋|阿聯酋|迪拜|(?<![A-Za-z])(?:AE|UAE|Dubai)(?![A-Za-z])|🇦🇪"},
        {"IT", "意大利|義大利|(?<![A-Za-z])(?:IT|Italy)(?![A-Za-z])|🇮🇹"},
        {"ES", "西班牙|(?<![A-Za-z])(?:ES|Spain)(?![A-Za-z])|🇪🇸"},
        {"PT", "葡萄牙|(?<![A-Za-z])(?:PT|Portugal)(?![A-Za-z])|🇵🇹"},
        {"CH", "瑞士|(?<![A-Za-z])(?:CH|Switzerland)(?![A-Za-z])|🇨🇭"},
        {"SE", "瑞典|(?<![A-Za-z])(?:SE|Sweden)(?![A-Za-z])|🇸🇪"},
        {"NO", "挪威|(?<![A-Za-z])(?:NO|Norway)(?![A-Za-z])|🇳🇴"},
        {"FI", "芬兰|芬蘭|(?<![A-Za-z])(?:FI|Finland)(?![A-Za-z])|🇫🇮"},
        {"DK", "丹麦|丹麥|(?<![A-Za-z])(?:DK|Denmark)(?![A-Za-z])|🇩🇰"},
        {"PL", "波兰|波蘭|(?<![A-Za-z])(?:PL|Poland)(?![A-Za-z])|🇵🇱"},
        {"UA", "乌克兰|烏克蘭|(?<![A-Za-z])(?:UA|Ukraine)(?![A-Za-z])|🇺🇦"},
        {"IE", "爱尔兰|愛爾蘭|(?<![A-Za-z])(?:IE|Ireland)(?![A-Za-z])|🇮🇪"},
        {"BE", "比利时|比利時|(?<![A-Za-z])(?:BE|Belgium)(?![A-Za-z])|🇧🇪"},
        {"AT", "奥地利|奧地利|(?<![A-Za-z])(?:AT|Austria)(?![A-Za-z])|🇦🇹"},
        {"IL", "以色列|(?<![A-Za-z])(?:IL|Israel)(?![A-Za-z])|🇮🇱"},
        {"SA", "沙特|沙烏地|(?<![A-Za-z])(?:SA|Saudi\\s*Arabia)(?![A-Za-z])|🇸🇦"}
    };

    private static final java.util.Map<String, String> CACHE = new java.util.LinkedHashMap<String, String>(256, 0.75f, true) {
        @Override protected boolean removeEldestEntry(java.util.Map.Entry<String, String> entry) {
            return size() > 2048;
        }
    };
    private static final class Rule {
        final String region;
        final Pattern pattern;
        Rule(String region, String expression) {
            this.region = region;
            this.pattern = Pattern.compile(expression, Pattern.CASE_INSENSITIVE);
        }
    }
    private static final class Rules {
        static final Rule[] ALL = buildRules();
        static final Pattern FLAG = Pattern.compile("[\\x{1F1E6}-\\x{1F1FF}]{2}");
    }
    private static Rule[] buildRules() {
        java.util.ArrayList<Rule> rules = new java.util.ArrayList<>();
        for (String[] entry : REGIONS) rules.add(new Rule(entry[0], entry[1]));
        for (String country : java.util.Locale.getISOCountries()) {
            java.util.Locale locale = new java.util.Locale("", country);
            String expression = Pattern.quote(locale.getDisplayCountry(java.util.Locale.SIMPLIFIED_CHINESE)) + "|" + Pattern.quote(locale.getDisplayCountry(java.util.Locale.TRADITIONAL_CHINESE)) + "|(?<![A-Za-z])(?:" + country + "|" + Pattern.quote(locale.getDisplayCountry(java.util.Locale.ENGLISH)) + ")(?![A-Za-z])";
            rules.add(new Rule("TW".equals(country) ? "CN" : country, expression));
        }
        return rules.toArray(new Rule[0]);
    }
    public static void warmUp() {
        Thread thread = new Thread(() -> { int count = Rules.ALL.length; }, "jj-region-rules");
        thread.setPriority(Thread.MIN_PRIORITY);
        thread.start();
    }
    public static String emblem(String name) {
        String text = name == null ? "" : name.trim();
        synchronized (CACHE) {
            String cached = CACHE.get(text);
            if (cached != null) return cached;
        }
        String value = identify(text);
        synchronized (CACHE) { CACHE.put(text, value); }
        return value;
    }
    private static String identify(String text) {
        int earliest = Integer.MAX_VALUE;
        String region = null;
        for (Rule rule : Rules.ALL) {
            Matcher match = rule.pattern.matcher(text);
            if (match.find() && match.start() < earliest) {
                earliest = match.start();
                region = rule.region;
                if (earliest == 0) break;
            }
        }
        Matcher existingFlag = Rules.FLAG.matcher(text);
        if (existingFlag.find() && existingFlag.start() < earliest) {
            String flag = existingFlag.group();
            return "🇹🇼".equals(flag) ? "🇨🇳" : flag;
        }
        if (region != null) return new String(Character.toChars(0x1F1E6 + region.charAt(0) - 'A')) + new String(Character.toChars(0x1F1E6 + region.charAt(1) - 'A'));
        return text.isEmpty() ? "?" : new String(Character.toChars(text.codePointAt(0)));
    }
}

