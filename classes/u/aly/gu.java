package u.aly;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class gu
  extends a
{
  private static final Pattern d = Pattern.compile("UTDID\">([^<]+)");
  private Context e;
  
  public gu(Context paramContext)
  {
    super("utdid");
    this.e = paramContext;
  }
  
  private String c()
  {
    Object localObject1 = d();
    if ((localObject1 == null) || (!((File)localObject1).exists())) {
      return null;
    }
    for (;;)
    {
      try
      {
        FileInputStream localFileInputStream = new FileInputStream((File)localObject1);
        try
        {
          localObject1 = ex.a(localFileInputStream);
          if (localObject1 != null)
          {
            localObject1 = d.matcher((CharSequence)localObject1);
            if (((Matcher)localObject1).find())
            {
              localObject1 = ((Matcher)localObject1).group(1);
              return (String)localObject1;
            }
          }
        }
        finally
        {
          ex.c(localFileInputStream);
        }
        Object localObject3 = null;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
    }
  }
  
  private File d()
  {
    if (!er.a(this.e, "android.permission.WRITE_EXTERNAL_STORAGE")) {}
    while (!Environment.getExternalStorageState().equals("mounted")) {
      return null;
    }
    File localFile = Environment.getExternalStorageDirectory();
    try
    {
      localFile = new File(localFile.getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
      return localFile;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public final String b()
  {
    return c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */