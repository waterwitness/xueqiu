package com.snowballfinance.messageplatform.data;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.snowballfinance.messageplatform.b.b;
import com.snowballfinance.messageplatform.b.c;

public class View
{
  public static String multiTextImage(String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("type", View.ViewType.MULTI_TEXT_IMAGE.name());
    JsonArray localJsonArray = new JsonArray();
    localJsonObject.add("list", localJsonArray);
    int k = paramArrayOfString1.length;
    int i = 0;
    int j = 0;
    if (i < k)
    {
      String str1 = paramArrayOfString1[i];
      Object localObject2 = paramArrayOfString2[j];
      String str2 = paramArrayOfString3[j];
      Object localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = b.a((String)localObject2, c.b.a());
        if (j != 0) {
          break label168;
        }
      }
      label168:
      for (localObject1 = b.a((String)localObject1, 540, 280);; localObject1 = b.a((String)localObject1, 160, 120))
      {
        localObject2 = new JsonObject();
        localJsonArray.add((JsonElement)localObject2);
        ((JsonObject)localObject2).addProperty("title", str1);
        ((JsonObject)localObject2).addProperty("image", (String)localObject1);
        ((JsonObject)localObject2).addProperty("url", str2);
        j += 1;
        i += 1;
        break;
      }
    }
    return localJsonObject.toString();
  }
  
  public static String post(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("type", View.ViewType.POST.name());
    localJsonObject.addProperty("title", paramString2);
    localJsonObject.addProperty("text", paramString3);
    localJsonObject.addProperty("user", paramString1);
    localJsonObject.addProperty("image", paramString4);
    localJsonObject.addProperty("url", paramString5);
    return localJsonObject.toString();
  }
  
  public static String simpleText(String paramString1, String paramString2, String paramString3)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("type", View.ViewType.SIMPLE_TEXT.name());
    localJsonObject.addProperty("title", paramString1);
    localJsonObject.addProperty("text", paramString2);
    localJsonObject.addProperty("url", paramString3);
    return localJsonObject.toString();
  }
  
  public static String stock(Double paramDouble1, Double paramDouble2, Double paramDouble3, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("type", View.ViewType.STOCK.name());
    localJsonObject.addProperty("symbol", paramString2);
    localJsonObject.addProperty("exchange", paramString3);
    localJsonObject.addProperty("name", paramString1);
    localJsonObject.addProperty("changePercentage", paramDouble3);
    localJsonObject.addProperty("change", paramDouble2);
    localJsonObject.addProperty("price", paramDouble1);
    localJsonObject.addProperty("unit", paramString4);
    localJsonObject.addProperty("icon", paramString5);
    localJsonObject.addProperty("url", paramString6);
    return localJsonObject.toString();
  }
  
  public static String textImage(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    JsonObject localJsonObject = new JsonObject();
    String str = paramString3;
    if (paramString3 != null) {
      str = b.a(b.a(paramString3, c.b.a()), 540, 280);
    }
    localJsonObject.addProperty("type", View.ViewType.TEXT_IMAGE.name());
    localJsonObject.addProperty("title", paramString1);
    localJsonObject.addProperty("text", paramString2);
    localJsonObject.addProperty("image", str);
    localJsonObject.addProperty("url", paramString4);
    return localJsonObject.toString();
  }
  
  public static String userInfo(Long paramLong, String paramString1, Integer paramInteger1, Integer paramInteger2, Integer paramInteger3, String paramString2, VerifiedType paramVerifiedType, String paramString3)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("type", View.ViewType.USER_INFO.name());
    localJsonObject.addProperty("id", paramLong);
    localJsonObject.addProperty("name", paramString1);
    localJsonObject.addProperty("fans", paramInteger1);
    localJsonObject.addProperty("posts", paramInteger2);
    localJsonObject.addProperty("stocks", paramInteger3);
    localJsonObject.addProperty("icon", paramString2);
    localJsonObject.addProperty("url", paramString3);
    if (paramVerifiedType != null) {
      localJsonObject.addProperty("vtype", Integer.valueOf(paramVerifiedType.ordinal()));
    }
    return localJsonObject.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\View.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */