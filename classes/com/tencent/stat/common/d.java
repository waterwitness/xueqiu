package com.tencent.stat.common;

final class d
  extends b
{
  private static final byte[] k;
  private static final byte[] l;
  final byte[] c;
  int d;
  int e;
  public final boolean f;
  public final boolean g;
  public final boolean h;
  final byte[] i;
  
  static
  {
    if (!StatBase64.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      k = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      l = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }
  
  public d(int paramInt)
  {
    this.a = null;
    boolean bool1;
    label33:
    label47:
    byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      this.f = bool1;
      if ((paramInt & 0x2) != 0) {
        break label101;
      }
      bool1 = true;
      this.g = bool1;
      if ((paramInt & 0x4) == 0) {
        break label106;
      }
      bool1 = bool2;
      this.h = bool1;
      if ((paramInt & 0x8) != 0) {
        break label111;
      }
      arrayOfByte = k;
      label63:
      this.i = arrayOfByte;
      this.c = new byte[2];
      this.d = 0;
      if (!this.g) {
        break label118;
      }
    }
    label101:
    label106:
    label111:
    label118:
    for (paramInt = 19;; paramInt = -1)
    {
      this.e = paramInt;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label33;
      bool1 = false;
      break label47;
      arrayOfByte = l;
      break label63;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */