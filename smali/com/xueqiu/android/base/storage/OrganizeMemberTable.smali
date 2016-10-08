.class public Lcom/xueqiu/android/base/storage/OrganizeMemberTable;
.super Ljava/lang/Object;
.source "OrganizeMemberTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_org_member(org_id INTEGER,member_id INTEGER, PRIMARY KEY(org_id, member_id))"

.field public static final MEMBER_ID:Ljava/lang/String; = "member_id"

.field public static final ORG_ID:Ljava/lang/String; = "org_id"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_org_member"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "member_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/OrganizeMemberTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
