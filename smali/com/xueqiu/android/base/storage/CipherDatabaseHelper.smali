.class public Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "CipherDatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 24
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string v4, "snowball.db"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x51

    new-instance v5, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper$1;

    invoke-direct {v5}, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V

    .line 21
    iput-object v3, p0, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 43
    const-string v0, "DroidDatabaseHelper"

    const-string v1, "CipherDatabaseHelper onCreate"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->createTable(Lcom/xueqiu/android/base/storage/SQLiteDatabase;)V

    .line 45
    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 49
    const-string v0, "DroidDatabaseHelper"

    const-string v1, "CipherDatabaseHelper onUpgrade"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    invoke-direct {v1, p1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-static {v0, v1, p2, p3}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->upgrade(Landroid/content/Context;Lcom/xueqiu/android/base/storage/SQLiteDatabase;II)V

    .line 51
    return-void
.end method
