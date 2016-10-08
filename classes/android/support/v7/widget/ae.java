package android.support.v7.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

public final class ae
{
  SparseArray<ArrayList<ao>> a = new SparseArray();
  int b = 0;
  private SparseIntArray c = new SparseIntArray();
  
  final void a()
  {
    this.b += 1;
  }
  
  public final void a(ao paramao)
  {
    int i = paramao.e;
    ArrayList localArrayList2 = (ArrayList)this.a.get(i);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList2 = new ArrayList();
      this.a.put(i, localArrayList2);
      localArrayList1 = localArrayList2;
      if (this.c.indexOfKey(i) < 0)
      {
        this.c.put(i, 5);
        localArrayList1 = localArrayList2;
      }
    }
    if (this.c.get(i) <= localArrayList1.size()) {
      return;
    }
    paramao.o();
    localArrayList1.add(paramao);
  }
  
  final void b()
  {
    this.b -= 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */