package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.UUID;

public final class TypeAdapters
{
  public static final TypeAdapter<BigDecimal> BIG_DECIMAL;
  public static final TypeAdapter<BigInteger> BIG_INTEGER;
  public static final TypeAdapter<BitSet> BIT_SET;
  public static final TypeAdapterFactory BIT_SET_FACTORY;
  public static final TypeAdapter<Boolean> BOOLEAN;
  public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING;
  public static final TypeAdapterFactory BOOLEAN_FACTORY;
  public static final TypeAdapter<Number> BYTE;
  public static final TypeAdapterFactory BYTE_FACTORY;
  public static final TypeAdapter<Calendar> CALENDAR;
  public static final TypeAdapterFactory CALENDAR_FACTORY;
  public static final TypeAdapter<Character> CHARACTER;
  public static final TypeAdapterFactory CHARACTER_FACTORY;
  public static final TypeAdapter<Class> CLASS = new TypeAdapter()
  {
    public final Class read(JsonReader paramAnonymousJsonReader)
    {
      if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
      {
        paramAnonymousJsonReader.nextNull();
        return null;
      }
      throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
    }
    
    public final void write(JsonWriter paramAnonymousJsonWriter, Class paramAnonymousClass)
    {
      if (paramAnonymousClass == null)
      {
        paramAnonymousJsonWriter.nullValue();
        return;
      }
      throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + paramAnonymousClass.getName() + ". Forgot to register a type adapter?");
    }
  };
  public static final TypeAdapterFactory CLASS_FACTORY = newFactory(Class.class, CLASS);
  public static final TypeAdapter<Number> DOUBLE;
  public static final TypeAdapterFactory ENUM_FACTORY = new TypeAdapterFactory()
  {
    public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
    {
      paramAnonymousTypeToken = paramAnonymousTypeToken.getRawType();
      if ((!Enum.class.isAssignableFrom(paramAnonymousTypeToken)) || (paramAnonymousTypeToken == Enum.class)) {
        return null;
      }
      paramAnonymousGson = paramAnonymousTypeToken;
      if (!paramAnonymousTypeToken.isEnum()) {
        paramAnonymousGson = paramAnonymousTypeToken.getSuperclass();
      }
      return new TypeAdapters.EnumTypeAdapter(paramAnonymousGson);
    }
  };
  public static final TypeAdapter<Number> FLOAT;
  public static final TypeAdapter<InetAddress> INET_ADDRESS;
  public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
  public static final TypeAdapter<Number> INTEGER;
  public static final TypeAdapterFactory INTEGER_FACTORY;
  public static final TypeAdapter<JsonElement> JSON_ELEMENT;
  public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
  public static final TypeAdapter<Locale> LOCALE;
  public static final TypeAdapterFactory LOCALE_FACTORY;
  public static final TypeAdapter<Number> LONG;
  public static final TypeAdapter<Number> NUMBER;
  public static final TypeAdapterFactory NUMBER_FACTORY;
  public static final TypeAdapter<Number> SHORT;
  public static final TypeAdapterFactory SHORT_FACTORY;
  public static final TypeAdapter<String> STRING;
  public static final TypeAdapter<StringBuffer> STRING_BUFFER;
  public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
  public static final TypeAdapter<StringBuilder> STRING_BUILDER;
  public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
  public static final TypeAdapterFactory STRING_FACTORY;
  public static final TypeAdapterFactory TIMESTAMP_FACTORY;
  public static final TypeAdapter<URI> URI;
  public static final TypeAdapterFactory URI_FACTORY;
  public static final TypeAdapter<URL> URL;
  public static final TypeAdapterFactory URL_FACTORY;
  public static final TypeAdapter<UUID> UUID;
  public static final TypeAdapterFactory UUID_FACTORY;
  
  static
  {
    BIT_SET = new TypeAdapter()
    {
      public final BitSet read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        BitSet localBitSet = new BitSet();
        paramAnonymousJsonReader.beginArray();
        Object localObject = paramAnonymousJsonReader.peek();
        int i = 0;
        if (localObject != JsonToken.END_ARRAY)
        {
          boolean bool;
          switch (TypeAdapters.32.$SwitchMap$com$google$gson$stream$JsonToken[localObject.ordinal()])
          {
          default: 
            throw new JsonSyntaxException("Invalid bitset value type: " + localObject);
          case 1: 
            if (paramAnonymousJsonReader.nextInt() != 0) {
              bool = true;
            }
            break;
          }
          for (;;)
          {
            if (bool) {
              localBitSet.set(i);
            }
            i += 1;
            localObject = paramAnonymousJsonReader.peek();
            break;
            bool = false;
            continue;
            bool = paramAnonymousJsonReader.nextBoolean();
            continue;
            localObject = paramAnonymousJsonReader.nextString();
            try
            {
              int j = Integer.parseInt((String)localObject);
              if (j != 0) {
                bool = true;
              } else {
                bool = false;
              }
            }
            catch (NumberFormatException paramAnonymousJsonReader)
            {
              throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
            }
          }
        }
        paramAnonymousJsonReader.endArray();
        return localBitSet;
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, BitSet paramAnonymousBitSet)
      {
        if (paramAnonymousBitSet == null)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        paramAnonymousJsonWriter.beginArray();
        int i = 0;
        if (i < paramAnonymousBitSet.length())
        {
          if (paramAnonymousBitSet.get(i)) {}
          for (int j = 1;; j = 0)
          {
            paramAnonymousJsonWriter.value(j);
            i += 1;
            break;
          }
        }
        paramAnonymousJsonWriter.endArray();
      }
    };
    BIT_SET_FACTORY = newFactory(BitSet.class, BIT_SET);
    BOOLEAN = new TypeAdapter()
    {
      public final Boolean read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        if (paramAnonymousJsonReader.peek() == JsonToken.STRING) {
          return Boolean.valueOf(Boolean.parseBoolean(paramAnonymousJsonReader.nextString()));
        }
        return Boolean.valueOf(paramAnonymousJsonReader.nextBoolean());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean == null)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        paramAnonymousJsonWriter.value(paramAnonymousBoolean.booleanValue());
      }
    };
    BOOLEAN_AS_STRING = new TypeAdapter()
    {
      public final Boolean read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return Boolean.valueOf(paramAnonymousJsonReader.nextString());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean == null) {}
        for (paramAnonymousBoolean = "null";; paramAnonymousBoolean = paramAnonymousBoolean.toString())
        {
          paramAnonymousJsonWriter.value(paramAnonymousBoolean);
          return;
        }
      }
    };
    BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, BOOLEAN);
    BYTE = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          byte b = (byte)paramAnonymousJsonReader.nextInt();
          return Byte.valueOf(b);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, BYTE);
    SHORT = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          short s = (short)paramAnonymousJsonReader.nextInt();
          return Short.valueOf(s);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    SHORT_FACTORY = newFactory(Short.TYPE, Short.class, SHORT);
    INTEGER = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          int i = paramAnonymousJsonReader.nextInt();
          return Integer.valueOf(i);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, INTEGER);
    LONG = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          long l = paramAnonymousJsonReader.nextLong();
          return Long.valueOf(l);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    FLOAT = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return Float.valueOf((float)paramAnonymousJsonReader.nextDouble());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    DOUBLE = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return Double.valueOf(paramAnonymousJsonReader.nextDouble());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    NUMBER = new TypeAdapter()
    {
      public final Number read(JsonReader paramAnonymousJsonReader)
      {
        JsonToken localJsonToken = paramAnonymousJsonReader.peek();
        switch (TypeAdapters.32.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
        {
        case 2: 
        case 3: 
        default: 
          throw new JsonSyntaxException("Expecting number, got: " + localJsonToken);
        case 4: 
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return new LazilyParsedNumber(paramAnonymousJsonReader.nextString());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
      {
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
    NUMBER_FACTORY = newFactory(Number.class, NUMBER);
    CHARACTER = new TypeAdapter()
    {
      public final Character read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
        if (paramAnonymousJsonReader.length() != 1) {
          throw new JsonSyntaxException("Expecting character, got: " + paramAnonymousJsonReader);
        }
        return Character.valueOf(paramAnonymousJsonReader.charAt(0));
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Character paramAnonymousCharacter)
      {
        if (paramAnonymousCharacter == null) {}
        for (paramAnonymousCharacter = null;; paramAnonymousCharacter = String.valueOf(paramAnonymousCharacter))
        {
          paramAnonymousJsonWriter.value(paramAnonymousCharacter);
          return;
        }
      }
    };
    CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, CHARACTER);
    STRING = new TypeAdapter()
    {
      public final String read(JsonReader paramAnonymousJsonReader)
      {
        JsonToken localJsonToken = paramAnonymousJsonReader.peek();
        if (localJsonToken == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        if (localJsonToken == JsonToken.BOOLEAN) {
          return Boolean.toString(paramAnonymousJsonReader.nextBoolean());
        }
        return paramAnonymousJsonReader.nextString();
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, String paramAnonymousString)
      {
        paramAnonymousJsonWriter.value(paramAnonymousString);
      }
    };
    BIG_DECIMAL = new TypeAdapter()
    {
      public final BigDecimal read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          paramAnonymousJsonReader = new BigDecimal(paramAnonymousJsonReader.nextString());
          return paramAnonymousJsonReader;
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, BigDecimal paramAnonymousBigDecimal)
      {
        paramAnonymousJsonWriter.value(paramAnonymousBigDecimal);
      }
    };
    BIG_INTEGER = new TypeAdapter()
    {
      public final BigInteger read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          paramAnonymousJsonReader = new BigInteger(paramAnonymousJsonReader.nextString());
          return paramAnonymousJsonReader;
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, BigInteger paramAnonymousBigInteger)
      {
        paramAnonymousJsonWriter.value(paramAnonymousBigInteger);
      }
    };
    STRING_FACTORY = newFactory(String.class, STRING);
    STRING_BUILDER = new TypeAdapter()
    {
      public final StringBuilder read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return new StringBuilder(paramAnonymousJsonReader.nextString());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, StringBuilder paramAnonymousStringBuilder)
      {
        if (paramAnonymousStringBuilder == null) {}
        for (paramAnonymousStringBuilder = null;; paramAnonymousStringBuilder = paramAnonymousStringBuilder.toString())
        {
          paramAnonymousJsonWriter.value(paramAnonymousStringBuilder);
          return;
        }
      }
    };
    STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, STRING_BUILDER);
    STRING_BUFFER = new TypeAdapter()
    {
      public final StringBuffer read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return new StringBuffer(paramAnonymousJsonReader.nextString());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, StringBuffer paramAnonymousStringBuffer)
      {
        if (paramAnonymousStringBuffer == null) {}
        for (paramAnonymousStringBuffer = null;; paramAnonymousStringBuffer = paramAnonymousStringBuffer.toString())
        {
          paramAnonymousJsonWriter.value(paramAnonymousStringBuffer);
          return;
        }
      }
    };
    STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, STRING_BUFFER);
    URL = new TypeAdapter()
    {
      public final URL read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL) {
          paramAnonymousJsonReader.nextNull();
        }
        do
        {
          return null;
          paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
        } while ("null".equals(paramAnonymousJsonReader));
        return new URL(paramAnonymousJsonReader);
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, URL paramAnonymousURL)
      {
        if (paramAnonymousURL == null) {}
        for (paramAnonymousURL = null;; paramAnonymousURL = paramAnonymousURL.toExternalForm())
        {
          paramAnonymousJsonWriter.value(paramAnonymousURL);
          return;
        }
      }
    };
    URL_FACTORY = newFactory(URL.class, URL);
    URI = new TypeAdapter()
    {
      public final URI read(JsonReader paramAnonymousJsonReader)
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
            if ("null".equals(paramAnonymousJsonReader)) {
              continue;
            }
            paramAnonymousJsonReader = new URI(paramAnonymousJsonReader);
            return paramAnonymousJsonReader;
          }
          catch (URISyntaxException paramAnonymousJsonReader)
          {
            throw new JsonIOException(paramAnonymousJsonReader);
          }
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, URI paramAnonymousURI)
      {
        if (paramAnonymousURI == null) {}
        for (paramAnonymousURI = null;; paramAnonymousURI = paramAnonymousURI.toASCIIString())
        {
          paramAnonymousJsonWriter.value(paramAnonymousURI);
          return;
        }
      }
    };
    URI_FACTORY = newFactory(URI.class, URI);
    INET_ADDRESS = new TypeAdapter()
    {
      public final InetAddress read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return InetAddress.getByName(paramAnonymousJsonReader.nextString());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, InetAddress paramAnonymousInetAddress)
      {
        if (paramAnonymousInetAddress == null) {}
        for (paramAnonymousInetAddress = null;; paramAnonymousInetAddress = paramAnonymousInetAddress.getHostAddress())
        {
          paramAnonymousJsonWriter.value(paramAnonymousInetAddress);
          return;
        }
      }
    };
    INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);
    UUID = new TypeAdapter()
    {
      public final UUID read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return UUID.fromString(paramAnonymousJsonReader.nextString());
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, UUID paramAnonymousUUID)
      {
        if (paramAnonymousUUID == null) {}
        for (paramAnonymousUUID = null;; paramAnonymousUUID = paramAnonymousUUID.toString())
        {
          paramAnonymousJsonWriter.value(paramAnonymousUUID);
          return;
        }
      }
    };
    UUID_FACTORY = newFactory(UUID.class, UUID);
    TIMESTAMP_FACTORY = new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (paramAnonymousTypeToken.getRawType() != Timestamp.class) {
          return null;
        }
        new TypeAdapter()
        {
          public Timestamp read(JsonReader paramAnonymous2JsonReader)
          {
            paramAnonymous2JsonReader = (Date)this.val$dateTypeAdapter.read(paramAnonymous2JsonReader);
            if (paramAnonymous2JsonReader != null) {
              return new Timestamp(paramAnonymous2JsonReader.getTime());
            }
            return null;
          }
          
          public void write(JsonWriter paramAnonymous2JsonWriter, Timestamp paramAnonymous2Timestamp)
          {
            this.val$dateTypeAdapter.write(paramAnonymous2JsonWriter, paramAnonymous2Timestamp);
          }
        };
      }
    };
    CALENDAR = new TypeAdapter()
    {
      private static final String DAY_OF_MONTH = "dayOfMonth";
      private static final String HOUR_OF_DAY = "hourOfDay";
      private static final String MINUTE = "minute";
      private static final String MONTH = "month";
      private static final String SECOND = "second";
      private static final String YEAR = "year";
      
      public final Calendar read(JsonReader paramAnonymousJsonReader)
      {
        int j = 0;
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        paramAnonymousJsonReader.beginObject();
        int k = 0;
        int m = 0;
        int n = 0;
        int i1 = 0;
        int i2 = 0;
        while (paramAnonymousJsonReader.peek() != JsonToken.END_OBJECT)
        {
          String str = paramAnonymousJsonReader.nextName();
          int i = paramAnonymousJsonReader.nextInt();
          if ("year".equals(str)) {
            i2 = i;
          } else if ("month".equals(str)) {
            i1 = i;
          } else if ("dayOfMonth".equals(str)) {
            n = i;
          } else if ("hourOfDay".equals(str)) {
            m = i;
          } else if ("minute".equals(str)) {
            k = i;
          } else if ("second".equals(str)) {
            j = i;
          }
        }
        paramAnonymousJsonReader.endObject();
        return new GregorianCalendar(i2, i1, n, m, k, j);
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Calendar paramAnonymousCalendar)
      {
        if (paramAnonymousCalendar == null)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        paramAnonymousJsonWriter.beginObject();
        paramAnonymousJsonWriter.name("year");
        paramAnonymousJsonWriter.value(paramAnonymousCalendar.get(1));
        paramAnonymousJsonWriter.name("month");
        paramAnonymousJsonWriter.value(paramAnonymousCalendar.get(2));
        paramAnonymousJsonWriter.name("dayOfMonth");
        paramAnonymousJsonWriter.value(paramAnonymousCalendar.get(5));
        paramAnonymousJsonWriter.name("hourOfDay");
        paramAnonymousJsonWriter.value(paramAnonymousCalendar.get(11));
        paramAnonymousJsonWriter.name("minute");
        paramAnonymousJsonWriter.value(paramAnonymousCalendar.get(12));
        paramAnonymousJsonWriter.name("second");
        paramAnonymousJsonWriter.value(paramAnonymousCalendar.get(13));
        paramAnonymousJsonWriter.endObject();
      }
    };
    CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);
    LOCALE = new TypeAdapter()
    {
      public final Locale read(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        Object localObject = new StringTokenizer(paramAnonymousJsonReader.nextString(), "_");
        if (((StringTokenizer)localObject).hasMoreElements()) {}
        for (paramAnonymousJsonReader = ((StringTokenizer)localObject).nextToken();; paramAnonymousJsonReader = null)
        {
          if (((StringTokenizer)localObject).hasMoreElements()) {}
          for (String str = ((StringTokenizer)localObject).nextToken();; str = null)
          {
            if (((StringTokenizer)localObject).hasMoreElements()) {}
            for (localObject = ((StringTokenizer)localObject).nextToken();; localObject = null)
            {
              if ((str == null) && (localObject == null)) {
                return new Locale(paramAnonymousJsonReader);
              }
              if (localObject == null) {
                return new Locale(paramAnonymousJsonReader, str);
              }
              return new Locale(paramAnonymousJsonReader, str, (String)localObject);
            }
          }
        }
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, Locale paramAnonymousLocale)
      {
        if (paramAnonymousLocale == null) {}
        for (paramAnonymousLocale = null;; paramAnonymousLocale = paramAnonymousLocale.toString())
        {
          paramAnonymousJsonWriter.value(paramAnonymousLocale);
          return;
        }
      }
    };
    LOCALE_FACTORY = newFactory(Locale.class, LOCALE);
    JSON_ELEMENT = new TypeAdapter()
    {
      public final JsonElement read(JsonReader paramAnonymousJsonReader)
      {
        switch (TypeAdapters.32.$SwitchMap$com$google$gson$stream$JsonToken[paramAnonymousJsonReader.peek().ordinal()])
        {
        default: 
          throw new IllegalArgumentException();
        case 3: 
          return new JsonPrimitive(paramAnonymousJsonReader.nextString());
        case 1: 
          return new JsonPrimitive(new LazilyParsedNumber(paramAnonymousJsonReader.nextString()));
        case 2: 
          return new JsonPrimitive(Boolean.valueOf(paramAnonymousJsonReader.nextBoolean()));
        case 4: 
          paramAnonymousJsonReader.nextNull();
          return JsonNull.INSTANCE;
        case 5: 
          localObject = new JsonArray();
          paramAnonymousJsonReader.beginArray();
          while (paramAnonymousJsonReader.hasNext()) {
            ((JsonArray)localObject).add(read(paramAnonymousJsonReader));
          }
          paramAnonymousJsonReader.endArray();
          return (JsonElement)localObject;
        }
        Object localObject = new JsonObject();
        paramAnonymousJsonReader.beginObject();
        while (paramAnonymousJsonReader.hasNext()) {
          ((JsonObject)localObject).add(paramAnonymousJsonReader.nextName(), read(paramAnonymousJsonReader));
        }
        paramAnonymousJsonReader.endObject();
        return (JsonElement)localObject;
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, JsonElement paramAnonymousJsonElement)
      {
        if ((paramAnonymousJsonElement == null) || (paramAnonymousJsonElement.isJsonNull()))
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        if (paramAnonymousJsonElement.isJsonPrimitive())
        {
          paramAnonymousJsonElement = paramAnonymousJsonElement.getAsJsonPrimitive();
          if (paramAnonymousJsonElement.isNumber())
          {
            paramAnonymousJsonWriter.value(paramAnonymousJsonElement.getAsNumber());
            return;
          }
          if (paramAnonymousJsonElement.isBoolean())
          {
            paramAnonymousJsonWriter.value(paramAnonymousJsonElement.getAsBoolean());
            return;
          }
          paramAnonymousJsonWriter.value(paramAnonymousJsonElement.getAsString());
          return;
        }
        if (paramAnonymousJsonElement.isJsonArray())
        {
          paramAnonymousJsonWriter.beginArray();
          paramAnonymousJsonElement = paramAnonymousJsonElement.getAsJsonArray().iterator();
          while (paramAnonymousJsonElement.hasNext()) {
            write(paramAnonymousJsonWriter, (JsonElement)paramAnonymousJsonElement.next());
          }
          paramAnonymousJsonWriter.endArray();
          return;
        }
        if (paramAnonymousJsonElement.isJsonObject())
        {
          paramAnonymousJsonWriter.beginObject();
          paramAnonymousJsonElement = paramAnonymousJsonElement.getAsJsonObject().entrySet().iterator();
          while (paramAnonymousJsonElement.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)paramAnonymousJsonElement.next();
            paramAnonymousJsonWriter.name((String)localEntry.getKey());
            write(paramAnonymousJsonWriter, (JsonElement)localEntry.getValue());
          }
          paramAnonymousJsonWriter.endObject();
          return;
        }
        throw new IllegalArgumentException("Couldn't write " + paramAnonymousJsonElement.getClass());
      }
    };
    JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, JSON_ELEMENT);
  }
  
  private TypeAdapters()
  {
    throw new UnsupportedOperationException();
  }
  
  public static <TT> TypeAdapterFactory newFactory(TypeToken<TT> paramTypeToken, final TypeAdapter<TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (paramAnonymousTypeToken.equals(TypeAdapters.this)) {
          return paramTypeAdapter;
        }
        return null;
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactory(Class<TT> paramClass, final TypeAdapter<TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (paramAnonymousTypeToken.getRawType() == TypeAdapters.this) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + TypeAdapters.this.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactory(Class<TT> paramClass1, final Class<TT> paramClass2, final TypeAdapter<? super TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        paramAnonymousGson = paramAnonymousTypeToken.getRawType();
        if ((paramAnonymousGson == TypeAdapters.this) || (paramAnonymousGson == paramClass2)) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + paramClass2.getName() + "+" + TypeAdapters.this.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(Class<TT> paramClass, final Class<? extends TT> paramClass1, final TypeAdapter<? super TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        paramAnonymousGson = paramAnonymousTypeToken.getRawType();
        if ((paramAnonymousGson == TypeAdapters.this) || (paramAnonymousGson == paramClass1)) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + TypeAdapters.this.getName() + "+" + paramClass1.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newTypeHierarchyFactory(Class<TT> paramClass, final TypeAdapter<TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (TypeAdapters.this.isAssignableFrom(paramAnonymousTypeToken.getRawType())) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[typeHierarchy=" + TypeAdapters.this.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\bind\TypeAdapters.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */