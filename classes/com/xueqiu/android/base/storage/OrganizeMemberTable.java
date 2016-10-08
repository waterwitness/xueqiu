package com.xueqiu.android.base.storage;

import android.provider.BaseColumns;

public class OrganizeMemberTable
  implements BaseColumns
{
  public static final String CREATE_TABLE = "CREATE TABLE sn_org_member(org_id INTEGER,member_id INTEGER, PRIMARY KEY(org_id, member_id))";
  public static final String MEMBER_ID = "member_id";
  public static final String ORG_ID = "org_id";
  public static final String[] TABLE_COLUMNS = { "org_id", "member_id" };
  public static final String TABLE_NAME = "sn_org_member";
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\OrganizeMemberTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */