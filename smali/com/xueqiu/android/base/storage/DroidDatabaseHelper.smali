.class public Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DroidDatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string v3, "snowball.db"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x51

    invoke-direct {p0, p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    iput-object v4, p0, Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 28
    const-string v0, "DroidDatabaseHelper"

    const-string v1, "DroidDatabaseHelper onCreate"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->createTable(Lcom/xueqiu/android/base/storage/SQLiteDatabase;)V

    .line 30
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "DroidDatabaseHelper"

    const-string v1, "DroidDatabaseHelper onUpgrade"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    invoke-direct {v1, p1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, v1, p2, p3}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->upgrade(Landroid/content/Context;Lcom/xueqiu/android/base/storage/SQLiteDatabase;II)V

    .line 37
    return-void
.end method
