package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import com.google.gson.reflect.TypeToken<*>;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  private final Excluder excluder;
  private final FieldNamingStrategy fieldNamingPolicy;
  
  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, FieldNamingStrategy paramFieldNamingStrategy, Excluder paramExcluder)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.fieldNamingPolicy = paramFieldNamingStrategy;
    this.excluder = paramExcluder;
  }
  
  private ReflectiveTypeAdapterFactory.BoundField createBoundField(final Gson paramGson, final Field paramField, String paramString, final TypeToken<?> paramTypeToken, boolean paramBoolean1, boolean paramBoolean2)
  {
    new ReflectiveTypeAdapterFactory.BoundField(paramString, paramBoolean1, paramBoolean2)
    {
      final TypeAdapter<?> typeAdapter = ReflectiveTypeAdapterFactory.this.getFieldAdapter(paramGson, paramField, paramTypeToken);
      
      void read(JsonReader paramAnonymousJsonReader, Object paramAnonymousObject)
      {
        paramAnonymousJsonReader = this.typeAdapter.read(paramAnonymousJsonReader);
        if ((paramAnonymousJsonReader != null) || (!this.val$isPrimitive)) {
          paramField.set(paramAnonymousObject, paramAnonymousJsonReader);
        }
      }
      
      void write(JsonWriter paramAnonymousJsonWriter, Object paramAnonymousObject)
      {
        paramAnonymousObject = paramField.get(paramAnonymousObject);
        new TypeAdapterRuntimeTypeWrapper(paramGson, this.typeAdapter, paramTypeToken.getType()).write(paramAnonymousJsonWriter, paramAnonymousObject);
      }
      
      public boolean writeField(Object paramAnonymousObject)
      {
        if (!this.serialized) {}
        while (paramField.get(paramAnonymousObject) == paramAnonymousObject) {
          return false;
        }
        return true;
      }
    };
  }
  
  static boolean excludeField(Field paramField, boolean paramBoolean, Excluder paramExcluder)
  {
    return (!paramExcluder.excludeClass(paramField.getType(), paramBoolean)) && (!paramExcluder.excludeField(paramField, paramBoolean));
  }
  
  private Map<String, ReflectiveTypeAdapterFactory.BoundField> getBoundFields(Gson paramGson, TypeToken<?> paramTypeToken, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType1 = paramTypeToken.getType();
    Object localObject1 = paramClass;
    paramClass = paramTypeToken;
    int i;
    label52:
    int j;
    if (localObject1 != Object.class)
    {
      Field[] arrayOfField = ((Class)localObject1).getDeclaredFields();
      int k = arrayOfField.length;
      i = 0;
      if (i < k)
      {
        Field localField = arrayOfField[i];
        boolean bool1 = excludeField(localField, true);
        boolean bool2 = excludeField(localField, false);
        if ((bool1) || (bool2))
        {
          localField.setAccessible(true);
          Type localType2 = .Gson.Types.resolve(paramClass.getType(), (Class)localObject1, localField.getGenericType());
          List localList = getFieldNames(localField);
          paramTypeToken = null;
          j = 0;
          label129:
          if (j < localList.size())
          {
            Object localObject2 = (String)localList.get(j);
            if (j != 0) {
              bool1 = false;
            }
            localObject2 = (ReflectiveTypeAdapterFactory.BoundField)localLinkedHashMap.put(localObject2, createBoundField(paramGson, localField, (String)localObject2, TypeToken.get(localType2), bool1, bool2));
            if (paramTypeToken != null) {
              break label289;
            }
            paramTypeToken = (TypeToken<?>)localObject2;
          }
        }
      }
    }
    label289:
    for (;;)
    {
      j += 1;
      break label129;
      if (paramTypeToken != null) {
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + paramTypeToken.name);
      }
      i += 1;
      break label52;
      paramClass = TypeToken.get(.Gson.Types.resolve(paramClass.getType(), (Class)localObject1, ((Class)localObject1).getGenericSuperclass()));
      localObject1 = paramClass.getRawType();
      break;
      return localLinkedHashMap;
    }
  }
  
  private TypeAdapter<?> getFieldAdapter(Gson paramGson, Field paramField, TypeToken<?> paramTypeToken)
  {
    paramField = (JsonAdapter)paramField.getAnnotation(JsonAdapter.class);
    if (paramField != null)
    {
      paramField = JsonAdapterAnnotationTypeAdapterFactory.getTypeAdapter(this.constructorConstructor, paramGson, paramTypeToken, paramField);
      if (paramField != null) {
        return paramField;
      }
    }
    return paramGson.getAdapter(paramTypeToken);
  }
  
  static List<String> getFieldName(FieldNamingStrategy paramFieldNamingStrategy, Field paramField)
  {
    SerializedName localSerializedName = (SerializedName)paramField.getAnnotation(SerializedName.class);
    LinkedList localLinkedList = new LinkedList();
    if (localSerializedName == null) {
      localLinkedList.add(paramFieldNamingStrategy.translateName(paramField));
    }
    for (;;)
    {
      return localLinkedList;
      localLinkedList.add(localSerializedName.value());
      paramFieldNamingStrategy = localSerializedName.alternate();
      int j = paramFieldNamingStrategy.length;
      int i = 0;
      while (i < j)
      {
        localLinkedList.add(paramFieldNamingStrategy[i]);
        i += 1;
      }
    }
  }
  
  private List<String> getFieldNames(Field paramField)
  {
    return getFieldName(this.fieldNamingPolicy, paramField);
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new ReflectiveTypeAdapterFactory.Adapter(this.constructorConstructor.get(paramTypeToken), getBoundFields(paramGson, paramTypeToken, localClass), null);
  }
  
  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    return excludeField(paramField, paramBoolean, this.excluder);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\bind\ReflectiveTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */