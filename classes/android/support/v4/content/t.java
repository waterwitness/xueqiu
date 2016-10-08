package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

final class t
{
  final IntentFilter a;
  final BroadcastReceiver b;
  boolean c;
  
  t(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver)
  {
    this.a = paramIntentFilter;
    this.b = paramBroadcastReceiver;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("Receiver{");
    localStringBuilder.append(this.b);
    localStringBuilder.append(" filter=");
    localStringBuilder.append(this.a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */