package android.support.v4.view;

import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;

class ad
  extends ac
{
  public void a(LayoutInflater paramLayoutInflater, aj paramaj)
  {
    if (paramaj != null) {}
    for (paramaj = new ai(paramaj);; paramaj = null)
    {
      paramLayoutInflater.setFactory2(paramaj);
      LayoutInflater.Factory localFactory = paramLayoutInflater.getFactory();
      if (!(localFactory instanceof LayoutInflater.Factory2)) {
        break;
      }
      ah.a(paramLayoutInflater, (LayoutInflater.Factory2)localFactory);
      return;
    }
    ah.a(paramLayoutInflater, paramaj);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */