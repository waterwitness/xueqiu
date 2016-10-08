package com.snowballfinance.messageplatform.b;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class e
{
  public static Pattern a = Pattern.compile("((https?://)?(www\\.)?xueqiu\\.com/)([sS]/)([a-zA-Z0-9.]+)(/)?");
  public static Pattern b = Pattern.compile("((https?://)?(www\\.)?xueqiu\\.com/)(g/)([a-zA-Z0-9]+)");
  public static Pattern c = Pattern.compile("((https?://)?(www\\.)?xueqiu\\.com/)([sS]/)([a-zA-Z0-9]+/)([0-9]+)");
  public static Pattern d = Pattern.compile("((https?://)?(www\\.)?xueqiu\\.com/)([0-9]+/)([0-9]+)");
  public static Pattern e = Pattern.compile("((https?://)?(www\\.)?xueqiu\\.com/)([a-zA-Z0-9]+)(/)?(profile|comments|favs|friends|followers)?");
  public static Pattern f = Pattern.compile("((https?://)?(www\\.)?xueqiu\\.com/)(tips|about|service|setting|event|hq|talks|today|people|performance|portfolios|calendar|favs|comments|atme|status).*");
  public static final Integer g = Integer.valueOf(0);
  public static final Integer h = Integer.valueOf(1);
  public static final Integer i = Integer.valueOf(2);
  public static final Integer j = Integer.valueOf(3);
  public static final Integer k = Integer.valueOf(11);
  public static final Integer l = Integer.valueOf(12);
  public static final Integer m = Integer.valueOf(13);
  public static final Integer n = Integer.valueOf(14);
  public static final Integer o = Integer.valueOf(15);
  public static final Integer p = Integer.valueOf(16);
  public static final Integer q = Integer.valueOf(17);
  public static final Integer r = Integer.valueOf(18);
  public static final Integer s = Integer.valueOf(19);
  public static final Integer t = Integer.valueOf(30);
  public static final Integer u = Integer.valueOf(31);
  public static final Integer v = Integer.valueOf(40);
  private static Set<String> w = new HashSet(Arrays.asList(new String[] { "SH500", "SH510", "SH511", "SH513", "SZ15", "SZ18", "SZ16" }));
  private static Set<String> x = new HashSet(Arrays.asList(new String[] { "BTCNCNY", "MTGOXAUD", "MTGOXCNY", "MTGOXEUR", "MTGOXGBP", "MTGOXJPY", "MTGOXUSD" }));
  private static Set<String> y = new HashSet(Arrays.asList(new String[] { "DJI30", "NASDAQ", "SP500", "ICS30", "SLR10", "TMT20", "HCP10", "EDU10" }));
  private static Set<String> z = new HashSet(Arrays.asList(new String[] { "HKHSI", "HKHSF", "HKHSU", "HKHSP", "HKHSC", "HKVHSI", "HKHSCEI", "HKHSCCI", "HKGEM", "HKHKL" }));
  
  public static String a(Integer paramInteger)
  {
    if (paramInteger.equals(l)) {
      return "指数";
    }
    if (paramInteger.equals(m)) {
      return "封闭式基金";
    }
    if (paramInteger.equals(n)) {
      return "可转债";
    }
    if (paramInteger.equals(o)) {
      return "国债";
    }
    if (paramInteger.equals(p)) {
      return "企债";
    }
    if (paramInteger.equals(q)) {
      return "回购";
    }
    if (paramInteger.equals(r)) {
      return "货币基金";
    }
    if (paramInteger.equals(s)) {
      return "国债期货";
    }
    if (paramInteger.equals(v)) {
      return "比特币";
    }
    return "股票";
  }
  
  public static String a(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i1;
    do
    {
      return str;
      i1 = paramString.indexOf("?");
      str = paramString;
    } while (i1 == -1);
    return paramString.substring(0, i1);
  }
  
  public static String b(String paramString)
  {
    paramString = a(paramString);
    paramString = a.matcher(paramString);
    if (paramString.matches()) {
      return paramString.group(5);
    }
    return null;
  }
  
  public static Integer c(String paramString)
  {
    String str;
    if (paramString.length() >= 4)
    {
      str = paramString.substring(0, 4);
      if (w.contains(str)) {
        return m;
      }
    }
    if (paramString.length() >= 5)
    {
      str = paramString.substring(0, 5);
      if (w.contains(str)) {
        return m;
      }
    }
    if (paramString.matches("^S[HZ][0-9]+$"))
    {
      if (paramString.matches("^SZ200")) {
        return k;
      }
      if (paramString.matches("^(SH(201|202|203|204|131)|SZ(13|395032)).*")) {
        return q;
      }
      if (paramString.matches("^(SH(01|02|13)|SZ(10|09)).*")) {
        return o;
      }
      if (paramString.matches("^(SH12|SZ11).*")) {
        return p;
      }
      if (paramString.matches("^(SH11|SZ12).*")) {
        return n;
      }
      if (paramString.matches("^SH900.*")) {
        return k;
      }
      if (paramString.matches("^(SH00|SZ399).*")) {
        return l;
      }
      return k;
    }
    if (paramString.matches("^MF[\\d\\w]+$")) {
      return r;
    }
    if (paramString.matches("^[\\d\\w]+\\.FM$")) {
      return s;
    }
    if (paramString.matches("^\\d+$")) {
      return t;
    }
    if (y.contains(paramString)) {
      return j;
    }
    if (z.contains(paramString)) {
      return u;
    }
    if (x.contains(paramString)) {
      return v;
    }
    return g;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */