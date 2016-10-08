package org.apache.http.conn.util;

import java.io.BufferedReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.annotation.Immutable;

@Immutable
public final class PublicSuffixListParser
{
  public final PublicSuffixList parse(Reader paramReader)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    BufferedReader localBufferedReader = new BufferedReader(paramReader);
    for (;;)
    {
      Object localObject = localBufferedReader.readLine();
      if (localObject == null) {
        break;
      }
      if ((!((String)localObject).isEmpty()) && (!((String)localObject).startsWith("//")))
      {
        paramReader = (Reader)localObject;
        if (((String)localObject).startsWith(".")) {
          paramReader = ((String)localObject).substring(1);
        }
        boolean bool = paramReader.startsWith("!");
        localObject = paramReader;
        if (bool) {
          localObject = paramReader.substring(1);
        }
        if (bool) {
          localArrayList2.add(localObject);
        } else {
          localArrayList1.add(localObject);
        }
      }
    }
    return new PublicSuffixList(DomainType.UNKNOWN, localArrayList1, localArrayList2);
  }
  
  public final List<PublicSuffixList> parseByType(Reader paramReader)
  {
    ArrayList localArrayList = new ArrayList(2);
    BufferedReader localBufferedReader = new BufferedReader(paramReader);
    new StringBuilder(256);
    Object localObject2 = null;
    Object localObject1 = null;
    paramReader = null;
    for (;;)
    {
      Object localObject4 = localBufferedReader.readLine();
      if (localObject4 == null) {
        break;
      }
      if (!((String)localObject4).isEmpty()) {
        if (((String)localObject4).startsWith("//"))
        {
          if (paramReader == null)
          {
            if (((String)localObject4).contains("===BEGIN ICANN DOMAINS===")) {
              paramReader = DomainType.ICANN;
            } else if (((String)localObject4).contains("===BEGIN PRIVATE DOMAINS===")) {
              paramReader = DomainType.PRIVATE;
            }
          }
          else if ((((String)localObject4).contains("===END ICANN DOMAINS===")) || (((String)localObject4).contains("===END PRIVATE DOMAINS===")))
          {
            if (localObject1 != null) {
              localArrayList.add(new PublicSuffixList(paramReader, (List)localObject1, (List)localObject2));
            }
            localObject2 = null;
            localObject1 = null;
            paramReader = null;
          }
        }
        else if (paramReader != null)
        {
          Object localObject3 = localObject4;
          if (((String)localObject4).startsWith(".")) {
            localObject3 = ((String)localObject4).substring(1);
          }
          boolean bool = ((String)localObject3).startsWith("!");
          localObject4 = localObject3;
          if (bool) {
            localObject4 = ((String)localObject3).substring(1);
          }
          if (bool)
          {
            localObject3 = localObject2;
            if (localObject2 == null) {
              localObject3 = new ArrayList();
            }
            ((List)localObject3).add(localObject4);
            localObject2 = localObject3;
          }
          else
          {
            localObject3 = localObject1;
            if (localObject1 == null) {
              localObject3 = new ArrayList();
            }
            ((List)localObject3).add(localObject4);
            localObject1 = localObject3;
          }
        }
      }
    }
    return localArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\util\PublicSuffixListParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */