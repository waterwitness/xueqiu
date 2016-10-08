package b.a.a;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

final class l
{
  private static final Map<String, List<k>> a = new HashMap();
  private static final Map<Class<?>, Class<?>> b = new ConcurrentHashMap();
  
  static List<k> a(Class<?> arg0, String paramString)
  {
    String str1 = ???.getName() + '.' + paramString;
    synchronized (a)
    {
      localObject2 = (List)a.get(str1);
      if (localObject2 != null) {
        return (List<k>)localObject2;
      }
    }
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    StringBuilder localStringBuilder = new StringBuilder();
    Method[] arrayOfMethod;
    int i;
    for (Object localObject2 = ???;; localObject2 = ((Class)localObject2).getSuperclass())
    {
      if (localObject2 == null) {}
      do
      {
        if (!localArrayList.isEmpty()) {
          break;
        }
        throw new e("Subscriber " + ??? + " has no public methods called " + paramString);
        ??? = ((Class)localObject2).getName();
      } while ((((String)???).startsWith("java.")) || (((String)???).startsWith("javax.")) || (((String)???).startsWith("android.")));
      arrayOfMethod = ((Class)localObject2).getMethods();
      int j = arrayOfMethod.length;
      i = 0;
      if (i < j) {
        break;
      }
    }
    Method localMethod = arrayOfMethod[i];
    String str2 = localMethod.getName();
    if (str2.startsWith(paramString))
    {
      int k = localMethod.getModifiers();
      if (((k & 0x1) == 0) || ((k & 0x408) != 0)) {
        break label442;
      }
      Object localObject3 = localMethod.getParameterTypes();
      if (localObject3.length == 1)
      {
        ??? = str2.substring(paramString.length());
        if (((String)???).length() != 0) {
          break label357;
        }
        ??? = n.a;
        label279:
        localObject3 = localObject3[0];
        localStringBuilder.setLength(0);
        localStringBuilder.append(str2);
        localStringBuilder.append('>').append(((Class)localObject3).getName());
        if (localHashSet.add(localStringBuilder.toString())) {
          localArrayList.add(new k(localMethod, (n)???, (Class)localObject3));
        }
      }
    }
    for (;;)
    {
      i += 1;
      break;
      label357:
      if (((String)???).equals("MainThread"))
      {
        ??? = n.b;
        break label279;
      }
      if (((String)???).equals("BackgroundThread"))
      {
        ??? = n.c;
        break label279;
      }
      if (((String)???).equals("Async"))
      {
        ??? = n.d;
        break label279;
      }
      if (!b.containsKey(localObject2))
      {
        throw new e("Illegal onEvent method, check for typos: " + localMethod);
        label442:
        if (!b.containsKey(localObject2)) {
          Log.d(c.b, "Skipping method (not public, static or abstract): " + localObject2 + "." + str2);
        }
      }
    }
    synchronized (a)
    {
      a.put(str1, localArrayList);
      return localArrayList;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */