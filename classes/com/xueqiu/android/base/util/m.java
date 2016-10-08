package com.xueqiu.android.base.util;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.xueqiu.android.common.model.parser.UserParser;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.stock.model.StockStatus;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import org.json.JSONException;
import org.json.JSONObject;

public final class m
{
  private static Gson a = null;
  private static TypeAdapter<Date> b = new TypeAdapter()
  {
    private static Date a(JsonReader paramAnonymousJsonReader)
    {
      if (paramAnonymousJsonReader.peek() == JsonToken.NULL) {
        paramAnonymousJsonReader.nextNull();
      }
      for (;;)
      {
        return null;
        try
        {
          paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
          if ((!"".equals(paramAnonymousJsonReader)) && (!"null".equalsIgnoreCase(paramAnonymousJsonReader)))
          {
            if (paramAnonymousJsonReader.matches("^[0-9]+$")) {
              return new Date(Long.parseLong(paramAnonymousJsonReader));
            }
            paramAnonymousJsonReader = h.b(paramAnonymousJsonReader).getTime();
            return paramAnonymousJsonReader;
          }
        }
        catch (Exception paramAnonymousJsonReader)
        {
          v.e("Gsons", "parse date fail" + paramAnonymousJsonReader.getMessage());
        }
      }
      return null;
    }
  };
  private static TypeAdapter<Calendar> c = new TypeAdapter()
  {
    private static Calendar a(JsonReader paramAnonymousJsonReader)
    {
      if (paramAnonymousJsonReader.peek() == JsonToken.NULL) {
        paramAnonymousJsonReader.nextNull();
      }
      for (;;)
      {
        return null;
        try
        {
          paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
          if ((!"".equals(paramAnonymousJsonReader)) && (!"null".equalsIgnoreCase(paramAnonymousJsonReader)) && (!"0".equals(paramAnonymousJsonReader)))
          {
            paramAnonymousJsonReader = h.b(paramAnonymousJsonReader);
            return paramAnonymousJsonReader;
          }
        }
        catch (Exception paramAnonymousJsonReader)
        {
          v.e("Gsons", "parse calendar fail" + paramAnonymousJsonReader.getMessage());
        }
      }
      return null;
    }
  };
  private static TypeAdapter<Number> d = new TypeAdapter()
  {
    private static Number a(JsonReader paramAnonymousJsonReader)
    {
      if (paramAnonymousJsonReader.peek() == JsonToken.NULL) {
        paramAnonymousJsonReader.nextNull();
      }
      for (;;)
      {
        return null;
        try
        {
          paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
          if ((!"".equals(paramAnonymousJsonReader)) && (!"null".equalsIgnoreCase(paramAnonymousJsonReader)))
          {
            double d = Double.parseDouble(paramAnonymousJsonReader);
            return Double.valueOf(d);
          }
        }
        catch (Exception paramAnonymousJsonReader)
        {
          v.e("Gsons", "parse Double fail" + paramAnonymousJsonReader.getMessage());
        }
      }
      return null;
    }
  };
  private static TypeAdapter<Number> e = new TypeAdapter()
  {
    private static Number a(JsonReader paramAnonymousJsonReader)
    {
      if (paramAnonymousJsonReader.peek() == JsonToken.NULL) {
        paramAnonymousJsonReader.nextNull();
      }
      for (;;)
      {
        return null;
        try
        {
          paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
          if ((!"".equals(paramAnonymousJsonReader)) && (!"null".equalsIgnoreCase(paramAnonymousJsonReader)) && (!"0.0".equalsIgnoreCase(paramAnonymousJsonReader)))
          {
            int i = Integer.parseInt(paramAnonymousJsonReader);
            return Integer.valueOf(i);
          }
        }
        catch (Exception paramAnonymousJsonReader)
        {
          v.e("Gsons", "parse Integer fail" + paramAnonymousJsonReader.getMessage());
        }
      }
      return null;
    }
  };
  
  public static Gson a()
  {
    if (a == null)
    {
      GsonBuilder localGsonBuilder = new GsonBuilder();
      localGsonBuilder.setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES);
      localGsonBuilder.registerTypeAdapter(User.class, new JsonDeserializer()
      {
        UserParser a = new UserParser();
        
        private User a(JsonElement paramAnonymousJsonElement)
        {
          try
          {
            paramAnonymousJsonElement = this.a.parse(new JSONObject(paramAnonymousJsonElement.toString()));
            return paramAnonymousJsonElement;
          }
          catch (JSONException paramAnonymousJsonElement)
          {
            v.b("Gsons", "deserialize user failed.", paramAnonymousJsonElement);
          }
          return null;
        }
      });
      localGsonBuilder.registerTypeAdapter(Date.class, b);
      localGsonBuilder.registerTypeAdapter(Calendar.class, c);
      localGsonBuilder.registerTypeAdapter(GregorianCalendar.class, c);
      localGsonBuilder.registerTypeAdapter(StockStatus.class, new JsonDeserializer() {});
      localGsonBuilder.registerTypeAdapter(Double.TYPE, d);
      localGsonBuilder.registerTypeAdapter(Double.class, d);
      localGsonBuilder.registerTypeAdapter(Integer.TYPE, e);
      localGsonBuilder.registerTypeAdapter(Integer.class, e);
      a = localGsonBuilder.excludeFieldsWithoutExposeAnnotation().create();
    }
    return a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */