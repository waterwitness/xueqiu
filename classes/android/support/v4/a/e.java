package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class e
  implements Parcelable
{
  public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator() {};
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;
  final ArrayList<String> j;
  final ArrayList<String> k;
  
  public e(Parcel paramParcel)
  {
    this.a = paramParcel.createIntArray();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.h = paramParcel.readInt();
    this.i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.j = paramParcel.createStringArrayList();
    this.k = paramParcel.createStringArrayList();
  }
  
  public e(b paramb)
  {
    c localc = paramb.c;
    int n;
    for (int m = 0; localc != null; m = n)
    {
      n = m;
      if (localc.i != null) {
        n = m + localc.i.size();
      }
      localc = localc.a;
    }
    this.a = new int[m + paramb.e * 7];
    if (!paramb.l) {
      throw new IllegalStateException("Not on back stack");
    }
    localc = paramb.c;
    m = 0;
    if (localc != null)
    {
      int[] arrayOfInt = this.a;
      n = m + 1;
      arrayOfInt[m] = localc.c;
      arrayOfInt = this.a;
      int i1 = n + 1;
      if (localc.d != null) {}
      for (m = localc.d.p;; m = -1)
      {
        arrayOfInt[n] = m;
        arrayOfInt = this.a;
        m = i1 + 1;
        arrayOfInt[i1] = localc.e;
        arrayOfInt = this.a;
        n = m + 1;
        arrayOfInt[m] = localc.f;
        arrayOfInt = this.a;
        m = n + 1;
        arrayOfInt[n] = localc.g;
        arrayOfInt = this.a;
        n = m + 1;
        arrayOfInt[m] = localc.h;
        if (localc.i == null) {
          break label318;
        }
        i1 = localc.i.size();
        arrayOfInt = this.a;
        m = n + 1;
        arrayOfInt[n] = i1;
        n = 0;
        while (n < i1)
        {
          this.a[m] = ((i)localc.i.get(n)).p;
          n += 1;
          m += 1;
        }
      }
      for (;;)
      {
        localc = localc.a;
        break;
        label318:
        arrayOfInt = this.a;
        m = n + 1;
        arrayOfInt[n] = 0;
      }
    }
    this.b = paramb.j;
    this.c = paramb.k;
    this.d = paramb.n;
    this.e = paramb.p;
    this.f = paramb.q;
    this.g = paramb.r;
    this.h = paramb.s;
    this.i = paramb.t;
    this.j = paramb.u;
    this.k = paramb.v;
  }
  
  public final b a(r paramr)
  {
    b localb = new b(paramr);
    int i1 = 0;
    int m = 0;
    while (m < this.a.length)
    {
      c localc = new c();
      Object localObject = this.a;
      int n = m + 1;
      localc.c = localObject[m];
      if (r.a) {
        Log.v("FragmentManager", "Instantiate " + localb + " op #" + i1 + " base fragment #" + this.a[n]);
      }
      localObject = this.a;
      m = n + 1;
      n = localObject[n];
      if (n >= 0) {}
      for (localc.d = ((i)paramr.f.get(n));; localc.d = null)
      {
        localObject = this.a;
        n = m + 1;
        localc.e = localObject[m];
        localObject = this.a;
        m = n + 1;
        localc.f = localObject[n];
        localObject = this.a;
        n = m + 1;
        localc.g = localObject[m];
        localObject = this.a;
        m = n + 1;
        localc.h = localObject[n];
        localObject = this.a;
        n = m + 1;
        int i3 = localObject[m];
        m = n;
        if (i3 <= 0) {
          break;
        }
        localc.i = new ArrayList(i3);
        int i2 = 0;
        for (;;)
        {
          m = n;
          if (i2 >= i3) {
            break;
          }
          if (r.a) {
            Log.v("FragmentManager", "Instantiate " + localb + " set remove fragment #" + this.a[n]);
          }
          localObject = (i)paramr.f.get(this.a[n]);
          localc.i.add(localObject);
          i2 += 1;
          n += 1;
        }
      }
      localb.a(localc);
      i1 += 1;
    }
    localb.j = this.b;
    localb.k = this.c;
    localb.n = this.d;
    localb.p = this.e;
    localb.l = true;
    localb.q = this.f;
    localb.r = this.g;
    localb.s = this.h;
    localb.t = this.i;
    localb.u = this.j;
    localb.v = this.k;
    localb.a(1);
    return localb;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    TextUtils.writeToParcel(this.g, paramParcel, 0);
    paramParcel.writeInt(this.h);
    TextUtils.writeToParcel(this.i, paramParcel, 0);
    paramParcel.writeStringList(this.j);
    paramParcel.writeStringList(this.k);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */