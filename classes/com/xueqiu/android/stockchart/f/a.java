package com.xueqiu.android.stockchart.f;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class a
{
  public static SimpleDateFormat a = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.US);
  public static SimpleDateFormat b = new SimpleDateFormat("yyyy-MM");
  
  public static float a(Context paramContext, float paramFloat)
  {
    return (int)(paramContext.getResources().getDisplayMetrics().density * paramFloat + 0.5F);
  }
  
  public static b a(String paramString)
  {
    int j = 1;
    if (TextUtils.isEmpty(paramString)) {
      return new b("", "", "");
    }
    int i;
    if (TextUtils.isEmpty(paramString)) {
      i = 0;
    }
    for (;;)
    {
      if (i != 0)
      {
        return new b("￥", "沪深", "可转债");
        i = 0;
        for (;;)
        {
          if (i >= 2) {
            break label658;
          }
          if (paramString.startsWith(new String[] { "SH11", "SH12" }[i]))
          {
            i = 1;
            break;
          }
          i += 1;
        }
      }
      if (TextUtils.isEmpty(paramString)) {
        i = 0;
      }
      for (;;)
      {
        if (i != 0)
        {
          return new b("￥", "沪深", "基金");
          i = 0;
          for (;;)
          {
            if (i >= 8) {
              break label653;
            }
            if (paramString.startsWith(new String[] { "SH500", "SH502", "SH510", "SH511", "SH513", "SZ15", "SZ18", "SZ16" }[i]))
            {
              i = 1;
              break;
            }
            i += 1;
          }
        }
        if ((paramString.matches("SH\\d+")) || (paramString.matches("SZ\\d+")))
        {
          if (paramString.startsWith("SZ200")) {
            return new b("HK$", "沪深", "深B");
          }
          if (paramString.startsWith("SH900")) {
            return new b("$", "沪深", "沪B");
          }
          if ((paramString.startsWith("SH00")) || (paramString.startsWith("SZ399"))) {
            return new b("", "沪深", "指数");
          }
          return new b("￥", "沪深", "A股");
        }
        if (paramString.matches("OC\\d+")) {
          return new b("￥", "沪深", "新三板");
        }
        if (paramString.matches("CSI\\d+")) {
          return new b("", "沪深", "指数");
        }
        if (paramString.matches("MF\\d+")) {
          return new b("", "沪深", "基金");
        }
        if (paramString.matches("F\\d+")) {
          return new b("", "沪深", "基金");
        }
        if (d(paramString))
        {
          if (paramString.startsWith("8")) {}
          for (paramString = "￥";; paramString = "HK$") {
            return new b(paramString, "港股", "港股");
          }
        }
        i = 0;
        if (i < 10) {
          if (!new String[] { "HKHSI", "HKHSF", "HKHSU", "HKHSP", "HKHSC", "HKVHSI", "HKHSCEI", "HKHSCCI", "HKGEM", "HKHKL" }[i].equals(paramString)) {}
        }
        for (i = 1;; i = 0)
        {
          if (i != 0)
          {
            return new b("", "港股", "指数");
            i += 1;
            break;
          }
          i = 0;
          if (i < 8) {
            if (!new String[] { "DJI30", "NASDAQ", "SP500", "ICS30", "SLR10", "TMT20", "HCP10", "EDU10" }[i].equals(paramString)) {}
          }
          for (i = j;; i = 0)
          {
            if (i != 0)
            {
              return new b("", "美股", "指数");
              i += 1;
              break;
            }
            return new b("$", "美股", "美股");
          }
        }
        label653:
        i = 0;
      }
      label658:
      i = 0;
    }
  }
  
  public static String a(double paramDouble)
  {
    if (paramDouble < 10000.0D) {
      return String.valueOf((int)paramDouble);
    }
    return b(paramDouble);
  }
  
  public static String a(double paramDouble1, double paramDouble2)
  {
    int i = 2;
    String str;
    if (paramDouble1 != 0.0D)
    {
      str = String.valueOf(paramDouble1);
      if (!str.contains("E")) {
        break label72;
      }
    }
    label72:
    for (i = (int)Math.abs(Math.log10(paramDouble1));; i = str.replace("0.", "").length()) {
      return String.format("%." + i + "f", new Object[] { Double.valueOf(paramDouble2) });
    }
  }
  
  public static String a(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while ((i > 10000) && (paramInt < 2))
    {
      i /= 10000;
      paramInt += 1;
    }
    return String.valueOf(i) + new String[] { "", "万", "亿" }[paramInt];
  }
  
  public static String a(String paramString1, String paramString2)
  {
    Object localObject = paramString1;
    if (paramString1.matches("^\\d+$"))
    {
      paramString1 = new Date(Long.parseLong(paramString1));
      localObject = a.format(paramString1);
    }
    paramString1 = Arrays.asList(new String[] { "", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" });
    localObject = ((String)localObject).split(" ");
    if (localObject.length < 6) {
      return "";
    }
    int i = paramString1.indexOf(localObject[1]);
    if (i < 10) {}
    String[] arrayOfString;
    String str;
    for (paramString1 = "0" + i;; paramString1 = String.valueOf(i))
    {
      arrayOfString = localObject[3].split(":");
      str = String.format("%s-%s-%s", new Object[] { localObject[5], paramString1, localObject[2] });
      if (!paramString2.equals("YYYY-MM")) {
        break;
      }
      return String.format("%s-%s", new Object[] { localObject[5], paramString1 });
    }
    if (paramString2.equals("hh:mm")) {
      return String.format("%s:%s", new Object[] { arrayOfString[0], arrayOfString[1] });
    }
    if (paramString2.equals("MM-DD hh:mm")) {
      return String.format("%s-%s %s:%s", new Object[] { paramString1, localObject[2], arrayOfString[0], arrayOfString[1] });
    }
    if (paramString2.equals("MM-DD")) {
      return String.format("%s-%s", new Object[] { paramString1, localObject[2] });
    }
    if (paramString2.equals("mm")) {
      return arrayOfString[1];
    }
    return str;
  }
  
  public static ArrayList<Double> a(float paramFloat1, float paramFloat2, int paramInt)
  {
    double d3 = (paramFloat1 - paramFloat2) / paramInt;
    Object localObject = new double[27];
    Object tmp17_15 = localObject;
    tmp17_15[0] = 0.001D;
    Object tmp23_17 = tmp17_15;
    tmp23_17[1] = 0.0025D;
    Object tmp29_23 = tmp23_17;
    tmp29_23[2] = 0.005D;
    Object tmp35_29 = tmp29_23;
    tmp35_29[3] = 0.01D;
    Object tmp41_35 = tmp35_29;
    tmp41_35[4] = 0.025D;
    Object tmp47_41 = tmp41_35;
    tmp47_41[5] = 0.05D;
    Object tmp53_47 = tmp47_41;
    tmp53_47[6] = 0.1D;
    Object tmp60_53 = tmp53_47;
    tmp60_53[7] = 0.25D;
    Object tmp67_60 = tmp60_53;
    tmp67_60[8] = 0.5D;
    Object tmp74_67 = tmp67_60;
    tmp74_67[9] = 1.0D;
    Object tmp79_74 = tmp74_67;
    tmp79_74[10] = 2.5D;
    Object tmp86_79 = tmp79_74;
    tmp86_79[11] = 5.0D;
    Object tmp93_86 = tmp86_79;
    tmp93_86[12] = 10.0D;
    Object tmp100_93 = tmp93_86;
    tmp100_93[13] = 25.0D;
    Object tmp107_100 = tmp100_93;
    tmp107_100[14] = 50.0D;
    Object tmp114_107 = tmp107_100;
    tmp114_107[15] = 100.0D;
    Object tmp121_114 = tmp114_107;
    tmp121_114[16] = 250.0D;
    Object tmp128_121 = tmp121_114;
    tmp128_121[17] = 500.0D;
    Object tmp135_128 = tmp128_121;
    tmp135_128[18] = 1000.0D;
    Object tmp142_135 = tmp135_128;
    tmp142_135[19] = 2500.0D;
    Object tmp149_142 = tmp142_135;
    tmp149_142[20] = 5000.0D;
    Object tmp156_149 = tmp149_142;
    tmp156_149[21] = 10000.0D;
    Object tmp163_156 = tmp156_149;
    tmp163_156[22] = 25000.0D;
    Object tmp170_163 = tmp163_156;
    tmp170_163[23] = 50000.0D;
    Object tmp177_170 = tmp170_163;
    tmp177_170[24] = 100000.0D;
    Object tmp184_177 = tmp177_170;
    tmp184_177[25] = 500000.0D;
    Object tmp191_184 = tmp184_177;
    tmp191_184[26] = 1000000.0D;
    tmp191_184;
    ArrayList localArrayList = new ArrayList();
    paramInt = 0;
    double d2;
    while (paramInt < 27)
    {
      d2 = tmp17_15[paramInt] / d3;
      d1 = d2;
      if (d2 < 1.0D) {
        d1 = 1.0D / d2;
      }
      localArrayList.add(Double.valueOf(d1));
      paramInt += 1;
    }
    double d1 = ((Double)localArrayList.get(0)).doubleValue();
    paramInt = 1;
    while (paramInt < localArrayList.size())
    {
      d2 = d1;
      if (((Double)localArrayList.get(paramInt)).doubleValue() < d1) {
        d2 = ((Double)localArrayList.get(paramInt)).doubleValue();
      }
      paramInt += 1;
      d1 = d2;
    }
    d1 = tmp17_15[localArrayList.indexOf(Double.valueOf(d1))];
    paramInt = (int)Math.ceil(paramFloat2 / d1) - 1;
    int i = (int)Math.ceil(paramFloat1 / d1);
    tmp17_15 = new ArrayList();
    while (paramInt <= i + 1)
    {
      ((ArrayList)tmp17_15).add(Double.valueOf(paramInt * d1));
      paramInt += 1;
    }
    return (ArrayList<Double>)tmp17_15;
  }
  
  public static float[] a(List<com.xueqiu.android.stockchart.e.a> paramList)
  {
    if (paramList.size() == 0) {
      return new float[] { 0.0F, 0.0F };
    }
    float f1 = ((com.xueqiu.android.stockchart.e.a)paramList.get(0)).a()[0];
    paramList = paramList.iterator();
    float f2 = f1;
    while (paramList.hasNext())
    {
      float[] arrayOfFloat = ((com.xueqiu.android.stockchart.e.a)paramList.next()).a();
      int j = arrayOfFloat.length;
      int i = 0;
      while (i < j)
      {
        float f4 = arrayOfFloat[i];
        float f6 = f2;
        float f5 = f1;
        if (f4 != 0.0F)
        {
          float f3 = f1;
          if (f4 > f1) {
            f3 = f4;
          }
          if (f4 >= f2)
          {
            f6 = f2;
            f5 = f3;
            if (f2 != 0.0F) {}
          }
          else
          {
            f5 = f3;
            f6 = f4;
          }
        }
        i += 1;
        f2 = f6;
        f1 = f5;
      }
    }
    return new float[] { f1, f2 };
  }
  
  public static String b(double paramDouble)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    double d = paramDouble;
    if (paramDouble < 0.0D)
    {
      localStringBuilder.append("-");
      d = -paramDouble;
    }
    int i = 0;
    while ((d > 10000.0D) && (i < 3))
    {
      d /= 10000.0D;
      i += 1;
    }
    String str2 = String.valueOf(Math.round(d * 100.0D) / 100.0D);
    int k = str2.indexOf('.');
    int j = k;
    String str1 = str2;
    if (k < 0) {
      j = str2.length();
    }
    for (str1 = str2 + '.'; str1.length() <= j + 2; str1 = str1 + '0') {}
    localStringBuilder.append(str1);
    localStringBuilder.append(new String[] { "", "万", "亿", "万亿" }[i]);
    return localStringBuilder.toString();
  }
  
  public static DecimalFormat b(String paramString)
  {
    b localb = a(paramString);
    paramString = "0.00";
    if ((localb.c.equals("基金")) || (localb.c.equals("沪B"))) {
      paramString = "0.000";
    }
    return new DecimalFormat(paramString);
  }
  
  public static boolean b(int paramInt)
  {
    return (e(paramInt)) && (paramInt != 12) && (paramInt != 60);
  }
  
  public static boolean c(int paramInt)
  {
    return (paramInt != 3) && (paramInt != 12) && (paramInt != 31) && (paramInt != 60) && (paramInt != 26);
  }
  
  public static boolean c(String paramString)
  {
    return (paramString.equals("1minute")) || (paramString.equals("5m")) || (paramString.equals("15m")) || (paramString.equals("30m")) || (paramString.equals("60m"));
  }
  
  public static boolean d(int paramInt)
  {
    return (paramInt == 11) || (paramInt == 13) || (paramInt == 14) || (paramInt == 15) || (paramInt == 16) || (paramInt == 17) || (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 30);
  }
  
  private static boolean d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    try
    {
      Integer.parseInt(paramString);
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static boolean e(int paramInt)
  {
    return (paramInt == 11) || (paramInt == 12) || (paramInt == 60) || (paramInt == 61) || (paramInt == 62) || (paramInt == 13) || (paramInt == 18) || (paramInt == 23) || (paramInt == 24) || (paramInt == 14) || (paramInt == 15) || (paramInt == 16) || (paramInt == 17);
  }
  
  public static boolean f(int paramInt)
  {
    return (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 3);
  }
  
  public static boolean g(int paramInt)
  {
    return (paramInt == 30) || (paramInt == 31) || (paramInt == 32);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */