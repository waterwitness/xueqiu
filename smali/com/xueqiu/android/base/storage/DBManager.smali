.class public Lcom/xueqiu/android/base/storage/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATABASE_NAME:Ljava/lang/String; = "snowball.db"

.field private static final TAG:Ljava/lang/String; = "DBManager"

.field private static libLoaded:Z

.field private static mInstance:Lcom/xueqiu/android/base/storage/DBManager;


# instance fields
.field private mCipherHelper:Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;

.field private sqlcipherKey:Ljava/lang/String;

.field private userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const-class v0, Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xueqiu/android/base/storage/DBManager;->$assertionsDisabled:Z

    .line 65
    sput-boolean v1, Lcom/xueqiu/android/base/storage/DBManager;->libLoaded:Z

    return-void

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->userId:J

    .line 53
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->cipherInit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private cipherInit(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    sget-boolean v0, Lcom/xueqiu/android/base/storage/DBManager;->libLoaded:Z

    if-nez v0, :cond_0

    .line 69
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xueqiu/android/base/storage/DBManager;->libLoaded:Z

    .line 73
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/base/storage/DBManager;->userId:J

    .line 75
    invoke-static {p1}, Lcom/xueqiu/android/base/util/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 78
    :cond_1
    invoke-static {p1}, Lcom/xueqiu/android/base/util/s;->b(Landroid/content/Context;)V

    .line 2028
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2029
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2030
    const-string v3, "com.xueqiu.keychain"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2031
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2032
    const-string v5, "com.xueqiu.sqlcipher"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2033
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2034
    const-string v4, "com.xueqiu.sqlcipher.version"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2035
    if-lez v3, :cond_2

    .line 2036
    invoke-static {v0}, Lcom/xueqiu/android/base/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_2
    iput-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    .line 82
    const-string v0, "snowball.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string v0, ""

    invoke-direct {p0, v3, v0}, Lcom/xueqiu/android/base/storage/DBManager;->readStoredUser(Ljava/io/File;Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 86
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 87
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_update_friends_time"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 89
    if-nez v3, :cond_6

    .line 90
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "delete old db file failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    .line 95
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 96
    invoke-virtual {p1, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 98
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 99
    if-nez v5, :cond_4

    .line 100
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "delete old unencrypted db file failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 2054
    :cond_6
    const-string v3, "com.xueqiu.keychain"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2055
    const-string v4, "com.xueqiu.sqlcipher.version"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 109
    if-gtz v2, :cond_8

    .line 110
    const-string v2, "snowball.db"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    invoke-static {p1}, Lcom/xueqiu/android/base/util/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/xueqiu/android/base/storage/DBManager;->readStoredUser(Ljava/io/File;Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 113
    const-string v3, "last_update_friends_time"

    invoke-static {v3, v8, v9, p1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putLong(Ljava/lang/String;JLandroid/content/Context;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 115
    if-nez v2, :cond_7

    .line 116
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "delete old db file failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_7
    invoke-static {p1}, Lcom/xueqiu/android/base/util/s;->b(Landroid/content/Context;)V

    .line 120
    invoke-static {p1}, Lcom/xueqiu/android/base/util/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    .line 123
    :cond_8
    new-instance v2, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

    iget-object v3, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/xueqiu/android/base/storage/DBManager;->userId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xueqiu/android/base/storage/DBManager;->mCipherHelper:Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

    .line 125
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    .line 128
    if-eqz v0, :cond_9

    .line 129
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 130
    const-string v3, "sn_user"

    .line 131
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/UserTable;->contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;

    move-result-object v0

    .line 130
    invoke-virtual {v2, v3, v1, v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 133
    :cond_9
    return-void
.end method

.method private static declared-synchronized close()V
    .locals 2

    .prologue
    .line 146
    const-class v1, Lcom/xueqiu/android/base/storage/DBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v0, v0, Lcom/xueqiu/android/base/storage/DBManager;->mHelper:Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v0, v0, Lcom/xueqiu/android/base/storage/DBManager;->mHelper:Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;->close()V

    .line 150
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v0, v0, Lcom/xueqiu/android/base/storage/DBManager;->mCipherHelper:Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    iget-object v0, v0, Lcom/xueqiu/android/base/storage/DBManager;->mCipherHelper:Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;->close()V

    .line 154
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_2
    monitor-exit v1

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private collapseTalk(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1414
    invoke-virtual {p3}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, p3

    .line 1422
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 1423
    invoke-virtual {p3, v2}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1427
    :cond_1
    return-void

    .line 1418
    :cond_2
    invoke-virtual {p3}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(Lcom/xueqiu/android/base/storage/SQLiteDatabase;J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_1

    .line 1420
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    :cond_4
    move v0, v2

    .line 1421
    :goto_1
    invoke-virtual {p3}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1422
    if-nez v0, :cond_6

    move v1, v2

    move-object v0, p3

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1420
    goto :goto_1

    :cond_6
    move-object v0, p3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/xueqiu/android/base/storage/DBManager;
    .locals 6

    .prologue
    .line 136
    const-class v1, Lcom/xueqiu/android/base/storage/DBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcom/xueqiu/android/base/storage/DBManager;

    invoke-direct {v0}, Lcom/xueqiu/android/base/storage/DBManager;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    .line 142
    :cond_0
    :goto_0
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 138
    :cond_1
    :try_start_1
    sget-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;

    iget-wide v2, v0, Lcom/xueqiu/android/base/storage/DBManager;->userId:J

    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->close()V

    .line 140
    new-instance v0, Lcom/xueqiu/android/base/storage/DBManager;

    invoke-direct {v0}, Lcom/xueqiu/android/base/storage/DBManager;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/storage/DBManager;->mInstance:Lcom/xueqiu/android/base/storage/DBManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mCipherHelper:Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 188
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mHelper:Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mCipherHelper:Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;

    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DBManager;->sqlcipherKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/storage/CipherDatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 196
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mHelper:Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/DroidDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 343
    .line 345
    :try_start_0
    const-string v1, "sn_user"

    sget-object v2, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "userId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 345
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 347
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/UserTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 351
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xueqiu/android/community/model/User;->setFollowMe(Z)V

    .line 352
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getPinyinScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xueqiu/android/community/model/User;->setPinyinScreenName(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getPinyinRemark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xueqiu/android/community/model/User;->setPinyinRemark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    :cond_0
    if-eqz v1, :cond_1

    .line 357
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)Z

    move-result v0

    return v0

    .line 356
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 356
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private insertStatus(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/Status;)Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertStatus(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/Status;I)Z

    move-result v0

    return v0
.end method

.method private insertStatus(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/Status;I)Z
    .locals 4

    .prologue
    .line 320
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)Z

    move-result v0

    .line 321
    const-string v1, "DBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert a User successful="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "+ screenName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/StatusTable;->contentValues(Lcom/xueqiu/android/community/model/Status;)Landroid/content/ContentValues;

    move-result-object v0

    .line 324
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 325
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    :cond_0
    const-string v1, "sn_status"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 328
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertStatus(Lcom/xueqiu/android/community/model/Status;)Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertStatus(Lcom/xueqiu/android/community/model/Status;I)Z

    move-result v0

    return v0
.end method

.method private insertStatus(Lcom/xueqiu/android/community/model/Status;I)Z
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 316
    invoke-direct {p0, v0, p1, p2}, Lcom/xueqiu/android/base/storage/DBManager;->insertStatus(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/Status;I)Z

    move-result v0

    return v0
.end method

.method private insertUser(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    .line 401
    if-nez v0, :cond_0

    move v0, v8

    .line 421
    :goto_0
    return v0

    .line 404
    :cond_0
    invoke-virtual {v0, p2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalkInfo(Lcom/xueqiu/android/community/model/User;)V

    .line 405
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 408
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 409
    const-string v1, "sn_user"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "screenName"

    aput-object v0, v2, v8

    const-string v3, "userId=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 411
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    const-string v1, "sn_user"

    const-string v2, "userId = ?"

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1, v1, v2, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_2
    const-string v0, "sn_user"

    .line 420
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/UserTable;->contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;

    move-result-object v1

    .line 419
    invoke-virtual {p1, v0, v5, v1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 421
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v9

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method private queryStatusById(J)Lcom/xueqiu/android/community/model/Status;
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 274
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 277
    :try_start_0
    const-string v1, "sn_status"

    sget-object v2, Lcom/xueqiu/android/base/storage/StatusTable;->TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 280
    :try_start_1
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/StatusTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUserId()J

    move-result-wide v2

    .line 283
    cmp-long v4, v2, v10

    if-lez v4, :cond_3

    .line 284
    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/Status;->setUser(Lcom/xueqiu/android/community/model/User;)V

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getReTweetStatusId()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getReTweetStatusId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryStatusById(J)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/Status;->setRetweetedStatus(Lcom/xueqiu/android/community/model/Status;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :cond_1
    if-eqz v1, :cond_2

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_2
    :goto_1
    return-object v0

    .line 286
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getScreenName()Ljava/lang/String;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByScreenName(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/Status;->setUser(Lcom/xueqiu/android/community/model/User;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    if-eqz v1, :cond_4

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 303
    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_5

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 299
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 297
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method private queryUserByUserId(Lcom/xueqiu/android/base/storage/SQLiteDatabase;J)Lcom/xueqiu/android/community/model/User;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 453
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getUser(Ljava/lang/Long;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    :try_start_0
    const-string v1, "sn_user"

    sget-object v2, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "userId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 460
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 459
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 461
    if-eqz v1, :cond_2

    .line 462
    :try_start_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/UserTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 467
    if-eqz v1, :cond_0

    .line 468
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 467
    :cond_2
    if-eqz v1, :cond_3

    .line 468
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v8

    .line 471
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 467
    if-eqz v1, :cond_3

    .line 468
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 467
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    .line 468
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 467
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 465
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private readStoredUser(Ljava/io/File;Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p2, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 163
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "userId"

    aput-object v1, v2, v8

    const-string v1, "screenName"

    aput-object v1, v2, v9

    const-string v1, "profileImageUrl"

    aput-object v1, v2, v10

    const-string v1, "step"

    aput-object v1, v2, v11

    .line 166
    const-string v1, "sn_user"

    const-string v3, "userId= ?"

    new-array v4, v9, [Ljava/lang/String;

    .line 167
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    .line 166
    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const/4 v1, -0x1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    :cond_0
    new-instance v5, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v5}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 175
    aget-object v1, v2, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 176
    aget-object v1, v2, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 177
    aget-object v1, v2, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 178
    aget-object v1, v2, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/User;->setStep(Ljava/lang/String;)V

    .line 180
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    return-object v5
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->recreateTables(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method public clearDraftBox()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 737
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 738
    const-string v1, "t_draft_table"

    invoke-virtual {v0, v1, v2, v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 739
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteDraft(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 727
    const-string v3, "t_draft_table"

    const-string v4, "draft_id=?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 728
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteStatus(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 333
    const-string v3, "sn_status"

    const-string v4, "status_id= ?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 334
    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAllDraft()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 748
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 749
    const-string v1, "t_draft_table"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "draft_id as _id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "text"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "img_name"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "timestamp"

    aput-object v5, v2, v4

    const-string v7, "draft_id desc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllOrganize()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1088
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 1089
    const-string v1, "sn_organize"

    sget-object v2, Lcom/xueqiu/android/message/model/IMGroup$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "joined=1 and truncated=0"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1092
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    if-eqz v0, :cond_1

    .line 1094
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    invoke-static {v0}, Lcom/xueqiu/android/message/model/IMGroup$Table;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1097
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_1
    return-object v1
.end method

.method public getAllUnreadCount(Z)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1246
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    .line 1247
    if-nez v1, :cond_0

    .line 1257
    :goto_0
    return v0

    .line 1250
    :cond_0
    invoke-virtual {v1, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v1

    .line 1252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 1253
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1254
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    move v1, v0

    .line 1256
    goto :goto_1

    :cond_1
    move v0, v1

    .line 1257
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getCurrentUser()Lcom/xueqiu/android/community/model/User;
    .locals 2

    .prologue
    .line 449
    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 449
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getDraftSize()I
    .locals 2

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getAllDraft()Landroid/database/Cursor;

    move-result-object v1

    .line 763
    if-eqz v1, :cond_0

    .line 764
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 765
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_0
    return v0
.end method

.method public getFollowEachOtherUsers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 524
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 527
    :try_start_0
    const-string v1, "sn_user"

    sget-object v2, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "follow_me = ? and following = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 532
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 535
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 536
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/UserTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    .line 537
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    if-eqz v1, :cond_0

    .line 546
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 549
    :cond_1
    :goto_2
    return-object v0

    .line 545
    :cond_2
    if-eqz v1, :cond_1

    .line 546
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 545
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 546
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 545
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 543
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 992
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getIMGroup(Ljava/lang/Long;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v8

    .line 993
    if-eqz v8, :cond_1

    move-object v5, v8

    .line 1009
    :cond_0
    :goto_0
    return-object v5

    .line 996
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 997
    const-string v1, "sn_organize"

    sget-object v2, Lcom/xueqiu/android/message/model/IMGroup$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 1000
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 997
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1001
    invoke-static {v1}, Lcom/xueqiu/android/message/model/IMGroup$Table;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    .line 1002
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/IMGroup;

    .line 1003
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1004
    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 1008
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setMaster(Lcom/xueqiu/android/community/model/User;)V

    move-object v5, v0

    .line 1009
    goto :goto_0
.end method

.method public getIMGroups(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1103
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 1104
    const-string v1, "sn_organize"

    sget-object v2, Lcom/xueqiu/android/message/model/IMGroup$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "empty_name=? and joined = 1 and truncated = 0"

    new-array v4, v6, [Ljava/lang/String;

    if-eqz p1, :cond_0

    move v6, v7

    .line 1106
    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 1104
    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    if-eqz v0, :cond_2

    .line 1109
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1110
    invoke-static {v0}, Lcom/xueqiu/android/message/model/IMGroup$Table;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1112
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_2
    return-object v1
.end method

.method public getIMGroupsByIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/xueqiu/android/base/storage/ResultSet",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1013
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getIMGroups(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v8

    .line 1015
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->missed()Ljava/util/Set;

    move-result-object v9

    .line 1016
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1017
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1018
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1022
    :cond_1
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    const-string v0, "id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v0, " in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1029
    const-string v6, "\'%d\'"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 1031
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v1, v0

    .line 1033
    goto :goto_1

    .line 1034
    :cond_3
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 1036
    const-string v1, "sn_organize"

    sget-object v2, Lcom/xueqiu/android/message/model/IMGroup$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1039
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1040
    invoke-static {v1}, Lcom/xueqiu/android/message/model/IMGroup$Table;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1042
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/IMGroup;

    .line 1043
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1044
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1045
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1039
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    :try_start_1
    const-string v2, "DBManager"

    const-string v3, "getImGroupsByIds failed. [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1051
    if-eqz v1, :cond_5

    .line 1052
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_5
    :goto_3
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1057
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/base/storage/DBManager;->getUsersByUserIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v0

    .line 1058
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v0

    .line 1059
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1060
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1061
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1051
    :cond_6
    if-eqz v1, :cond_5

    .line 1052
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1051
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 1052
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 1063
    :cond_8
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1064
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setMaster(Lcom/xueqiu/android/community/model/User;)V

    goto :goto_5

    .line 1067
    :cond_9
    new-instance v0, Lcom/xueqiu/android/base/storage/ResultSet;

    invoke-direct {v0, v8, v9}, Lcom/xueqiu/android/base/storage/ResultSet;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public getIMGroupsByKeyword(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1071
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 1072
    const-string v1, "%s = 1 and %s = 0 and %s like ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "joined"

    aput-object v3, v2, v8

    const-string v3, "truncated"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "name"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1076
    const-string v1, "sn_organize"

    sget-object v2, Lcom/xueqiu/android/message/model/IMGroup$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v7, "createdAt DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1079
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1081
    invoke-static {v0}, Lcom/xueqiu/android/message/model/IMGroup$Table;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1083
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1084
    return-object v1
.end method

.method public getLatestCollapsedTalk()Lcom/xueqiu/android/message/model/Talk;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1222
    :try_start_0
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v2

    .line 1223
    sget-object v1, Lcom/xueqiu/android/message/model/Talk;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 1226
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1227
    goto :goto_0

    .line 1228
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1229
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 1230
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 1231
    if-lez v1, :cond_1

    .line 1232
    const-string v2, "[%d\u6761\u672a\u8bfb\u6d88\u606f]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 1241
    :goto_1
    return-object v0

    .line 1234
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1239
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1241
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMessageDBSecret()[B
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 924
    const-string v9, "message_db_key"

    .line 925
    const-string v3, "name=?"

    .line 926
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    const-string v1, "secret"

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "secret"

    aput-object v4, v2, v6

    new-array v4, v7, [Ljava/lang/String;

    aput-object v9, v4, v6

    const-string v7, "id desc"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 928
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 929
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 930
    const-string v0, "secret"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 944
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 945
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 932
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 933
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 934
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 935
    invoke-static {v2}, Lcom/xueqiu/android/base/util/w;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 937
    const-string v3, "secret"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v3, "name"

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v3, "version"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v3

    const-string v4, "secret"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 941
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 944
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 945
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 944
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 945
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getUsersByKeyword(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 553
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sn_user"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "userId"

    aput-object v3, v2, v7

    const-string v3, "profileImageUrl"

    aput-object v3, v2, v8

    const-string v3, "screenName"

    aput-object v3, v2, v9

    const-string v3, "description"

    aput-object v3, v2, v10

    const-string v3, "remark"

    aput-object v3, v2, v11

    const-string v3, "%s = ? and %s = ? and (%s like ? or %s like ? or %s like ? or %s like ?)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "follow_me"

    aput-object v5, v4, v7

    const-string v5, "following"

    aput-object v5, v4, v8

    const-string v5, "pinyin_remark"

    aput-object v5, v4, v9

    const-string v5, "pinyin_screename"

    aput-object v5, v4, v10

    const-string v5, "remark"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "screenName"

    aput-object v6, v4, v5

    .line 555
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v7

    const-string v5, "1"

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 553
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    new-instance v2, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 561
    const-string v3, "userId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 562
    const-string v3, "profileImageUrl"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 563
    const-string v3, "screenName"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 564
    const-string v3, "description"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/User;->setDescription(Ljava/lang/String;)V

    .line 565
    const-string v3, "remark"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/User;->setRemark(Ljava/lang/String;)V

    .line 566
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 568
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 569
    return-object v1
.end method

.method public getUsersByUserIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/xueqiu/android/base/storage/ResultSet",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 475
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Lcom/xueqiu/android/base/storage/ResultSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/base/storage/ResultSet;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 519
    :goto_0
    return-object v0

    .line 478
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getUsers(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v0

    .line 479
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 480
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 482
    new-instance p1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/ResultSet;->missed()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 484
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    const-string v0, "%s in ("

    new-array v1, v7, [Ljava/lang/Object;

    const-string v4, "userId"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 489
    const-string v5, "\'%d\'"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 491
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 494
    goto :goto_1

    .line 495
    :cond_3
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 499
    :try_start_0
    const-string v1, "sn_user"

    sget-object v2, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 501
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 502
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/UserTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_4

    .line 504
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 501
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 510
    :catch_0
    move-exception v0

    .line 511
    :goto_3
    :try_start_2
    const-string v2, "DBManager"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    if-eqz v1, :cond_5

    .line 514
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_5
    :goto_4
    new-instance v0, Lcom/xueqiu/android/base/storage/ResultSet;

    invoke-direct {v0, v9, p1}, Lcom/xueqiu/android/base/storage/ResultSet;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 513
    :cond_6
    if-eqz v1, :cond_5

    .line 514
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 513
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_7

    .line 514
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 513
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 510
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3
.end method

.method public insertComment(Lcom/xueqiu/android/community/model/Comment;)Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertComment(Lcom/xueqiu/android/community/model/Comment;I)Z

    move-result v0

    return v0
.end method

.method public insertComment(Lcom/xueqiu/android/community/model/Comment;I)Z
    .locals 4

    .prologue
    .line 807
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    .line 810
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertStatus(Lcom/xueqiu/android/community/model/Status;)Z

    .line 813
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertComment(Lcom/xueqiu/android/community/model/Comment;)Z

    .line 817
    :cond_2
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/CommentTable;->contentValues(Lcom/xueqiu/android/community/model/Comment;)Landroid/content/ContentValues;

    move-result-object v0

    .line 818
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 819
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v1

    .line 822
    const-string v2, "sn_comment"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 823
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertComments(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 776
    const-string v0, "DBManager"

    const-string v1, "comment ========================"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 778
    const-string v0, "sn_comment"

    const-string v1, "type= ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 781
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 782
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 783
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 785
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v3

    .line 787
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/base/storage/DBManager;->insertComment(Lcom/xueqiu/android/community/model/Comment;)Z

    move-result v4

    .line 789
    const-string v5, "DBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert a rely comment successful="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "+ commentid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/xueqiu/android/base/storage/DBManager;->insertComment(Lcom/xueqiu/android/community/model/Comment;I)Z

    move-result v3

    .line 793
    const-string v4, "DBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insert a comment successful="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "+ commentid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 800
    :cond_2
    return-void

    .line 797
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v0
.end method

.method public insertDraft(Lcom/xueqiu/android/community/model/Draft;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 691
    if-nez p1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 692
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v1

    .line 693
    const-string v2, "t_draft_table"

    const-string v3, ""

    invoke-static {p1}, Lcom/xueqiu/android/base/storage/DraftTable;->contentValues(Lcom/xueqiu/android/community/model/Draft;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)Z

    move-result v0

    return v0
.end method

.method public insertPortFolio(Lcom/xueqiu/android/stock/model/OldPortFolio;)Z
    .locals 4

    .prologue
    .line 893
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/PortFolioTable;->contentValues(Lcom/xueqiu/android/stock/model/OldPortFolio;)Landroid/content/ContentValues;

    move-result-object v0

    .line 894
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v1

    .line 895
    const-string v2, "sn_portfolio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 896
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertPortfolios(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 876
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 877
    const-string v0, "sn_portfolio"

    invoke-virtual {v2, v0, v1, v1}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 880
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 881
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 882
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 883
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertPortFolio(Lcom/xueqiu/android/stock/model/OldPortFolio;)Z

    .line 881
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 890
    :cond_1
    return-void

    .line 887
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v0
.end method

.method public insertTimeline(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 209
    const-string v0, "sn_status"

    const-string v1, "type= ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 216
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v3

    .line 221
    invoke-direct {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->insertStatus(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/Status;)Z

    move-result v4

    .line 223
    const-string v5, "DBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert a retweet status successful="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "+ statusId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-direct {p0, v2, v0, p2}, Lcom/xueqiu/android/base/storage/DBManager;->insertStatus(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/Status;I)Z

    move-result v3

    .line 227
    const-string v4, "DBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insert a status successful="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "+ statusId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public insertUser(Lcom/xueqiu/android/community/model/User;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalkInfo(Lcom/xueqiu/android/community/model/User;)V

    .line 372
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 373
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 375
    :try_start_0
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 378
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 379
    const-string v1, "sn_user"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "screenName"

    aput-object v4, v2, v3

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 380
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 381
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 382
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 384
    :cond_1
    const-string v2, "sn_user"

    const-string v3, "userId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_3
    const-string v1, "sn_user"

    const/4 v2, 0x0

    .line 390
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/UserTable;->contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;

    move-result-object v3

    .line 389
    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 391
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    move v1, v8

    .line 395
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    return v1

    :cond_4
    move v1, v9

    .line 393
    goto :goto_0

    .line 395
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public insertUsers(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 578
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 580
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 582
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    move-result v3

    .line 583
    const-string v4, "DBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insert a user successful="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "+ userid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 590
    :cond_1
    return-void

    .line 587
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v0
.end method

.method public isFriend(J)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1310
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 1311
    const-string v1, "sn_user"

    sget-object v2, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "follow_me = ? and following = ? and userId = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v9

    const-string v6, "1"

    aput-object v6, v4, v8

    const/4 v6, 0x2

    .line 1314
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 1311
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1315
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1316
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1317
    if-ne v1, v8, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public markTalkRead(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    .line 1432
    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_0

    .line 1437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 1438
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderMessage(Lcom/xueqiu/android/message/model/Talk;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    .line 1439
    if-eqz v1, :cond_2

    .line 1440
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setReadAt(Ljava/util/Date;)V

    .line 1443
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    goto :goto_0
.end method

.method public markTalkTargetReads(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1448
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {p3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/base/storage/DBManager;->markTalkTargetReads([Ljava/lang/Long;[Ljava/lang/Boolean;[Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public markTalkTargetReads([Ljava/lang/Long;[Ljava/lang/Boolean;[Ljava/lang/Long;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1452
    sget-boolean v0, Lcom/xueqiu/android/base/storage/DBManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, p1

    array-length v2, p3

    if-ne v0, v2, :cond_0

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1453
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1454
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 1455
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1456
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1457
    aget-object v6, p3, v0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1458
    iget-object v8, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v3

    .line 1459
    if-eqz v3, :cond_2

    .line 1460
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 1462
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 1454
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :cond_3
    iget-object v4, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderMessage(Lcom/xueqiu/android/message/model/Talk;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v4

    .line 1465
    if-eqz v4, :cond_2

    .line 1466
    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    goto :goto_1

    .line 1471
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalks(Ljava/util/List;)V

    .line 1473
    return v1
.end method

.method public queryCommentById(J)Lcom/xueqiu/android/community/model/Comment;
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 827
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 828
    const-string v1, "sn_comment"

    sget-object v2, Lcom/xueqiu/android/base/storage/CommentTable;->TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "comment_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 830
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/CommentTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Comment;

    move-result-object v1

    .line 832
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    .line 833
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/Comment;->setUser(Lcom/xueqiu/android/community/model/User;)V

    .line 835
    :cond_0
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getStatusId()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 836
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getStatusId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryStatusById(J)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/Comment;->setStatus(Lcom/xueqiu/android/community/model/Status;)V

    .line 838
    :cond_1
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getReplyCommentId()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    .line 839
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getReplyCommentId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryCommentById(J)Lcom/xueqiu/android/community/model/Comment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/Comment;->setReplyComment(Lcom/xueqiu/android/community/model/Comment;)V

    .line 841
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 842
    return-object v1
.end method

.method public queryComments(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 846
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 847
    const-string v1, "sn_comment"

    sget-object v2, Lcom/xueqiu/android/base/storage/CommentTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "type= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 848
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "created_at desc"

    move-object v6, v5

    .line 847
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 851
    if-eqz v0, :cond_4

    .line 852
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 853
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 854
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/CommentTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Comment;

    move-result-object v2

    .line 855
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 856
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Comment;->setUser(Lcom/xueqiu/android/community/model/User;)V

    .line 858
    :cond_0
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getStatusId()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 859
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getStatusId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryStatusById(J)Lcom/xueqiu/android/community/model/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Comment;->setStatus(Lcom/xueqiu/android/community/model/Status;)V

    .line 861
    :cond_1
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getReplyCommentId()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 862
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getReplyCommentId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryCommentById(J)Lcom/xueqiu/android/community/model/Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Comment;->setReplyComment(Lcom/xueqiu/android/community/model/Comment;)V

    .line 864
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 867
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 869
    :cond_4
    return-object v1
.end method

.method public queryPortFolios()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 900
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 901
    const-string v1, "sn_portfolio"

    sget-object v2, Lcom/xueqiu/android/base/storage/PortFolioTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v7, " ROWID desc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 905
    if-eqz v0, :cond_1

    .line 906
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 907
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/PortFolioTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/stock/model/OldPortFolio;

    move-result-object v2

    .line 909
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 912
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 914
    :cond_1
    return-object v1
.end method

.method public queryTimeine(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "created_at desc"

    invoke-virtual {p0, p1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->queryTimeine(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryTimeine(ILjava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 244
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 245
    const-string v1, "sn_status"

    sget-object v2, Lcom/xueqiu/android/base/storage/StatusTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "type= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 246
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, p2

    .line 245
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    if-eqz v0, :cond_4

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/StatusTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUserId()J

    move-result-wide v4

    .line 254
    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 255
    invoke-virtual {p0, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Status;->setUser(Lcom/xueqiu/android/community/model/User;)V

    .line 262
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getReTweetStatusId()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getReTweetStatusId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryStatusById(J)Lcom/xueqiu/android/community/model/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Status;->setRetweetedStatus(Lcom/xueqiu/android/community/model/Status;)V

    .line 265
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getScreenName()Ljava/lang/String;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByScreenName(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Status;->setUser(Lcom/xueqiu/android/community/model/User;)V

    goto :goto_1

    .line 268
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_4
    return-object v1
.end method

.method public queryTodayTopicStatuses(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->queryTimeine(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryUserByScreenName(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 425
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 428
    :try_start_0
    const-string v1, "sn_user"

    sget-object v2, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v3, "screenName= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 430
    if-eqz v1, :cond_1

    .line 431
    :try_start_1
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/UserTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 436
    if-eqz v1, :cond_0

    .line 437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 436
    :cond_1
    if-eqz v1, :cond_2

    .line 437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    .line 440
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    if-eqz v1, :cond_2

    .line 437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 436
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 437
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 436
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 434
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v0

    .line 445
    invoke-direct {p0, v0, p1, p2}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(Lcom/xueqiu/android/base/storage/SQLiteDatabase;J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    return-object v0
.end method

.method public saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 955
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v2

    .line 956
    if-nez v2, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 959
    :cond_1
    invoke-virtual {v2, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalkInfo(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 960
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    new-array v4, v1, [Lcom/xueqiu/android/message/model/IMGroup;

    aput-object p1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheIMGroups(Ljava/util/Set;)Ljava/util/Set;

    .line 961
    invoke-static {p1}, Lcom/xueqiu/android/message/model/IMGroup$Table;->contentValues(Lcom/xueqiu/android/message/model/IMGroup;)Landroid/content/ContentValues;

    move-result-object v2

    .line 962
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v3

    .line 963
    const-string v4, "sn_organize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 964
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public saveIMGroups(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 968
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    .line 969
    if-nez v0, :cond_0

    move v0, v1

    .line 988
    :goto_0
    return v0

    .line 972
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalksInfo(Ljava/util/List;Ljava/util/List;)V

    .line 973
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheIMGroups(Ljava/util/Set;)Ljava/util/Set;

    .line 974
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 976
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 977
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 978
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 983
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_1
    move v0, v1

    .line 988
    goto :goto_0

    .line 980
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 985
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 986
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v0
.end method

.method public saveSimpleUsers(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 593
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v2

    .line 594
    if-nez v2, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {v2, p1, v11}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalksInfo(Ljava/util/List;Ljava/util/List;)V

    .line 598
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 600
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    move-object v10, v0

    .line 602
    const-string v3, "sn_user"

    sget-object v4, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    const-string v5, "userId= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 603
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 602
    invoke-virtual/range {v2 .. v9}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 605
    if-eqz v4, :cond_5

    .line 607
    :try_start_1
    invoke-static {v4}, Lcom/xueqiu/android/base/storage/UserTable;->parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 611
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 614
    :goto_2
    if-eqz v3, :cond_3

    .line 615
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setProfileLargeImageUrl(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setType(I)V

    .line 618
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setRemark(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 620
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setFollowMe(Z)V

    .line 621
    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    .line 622
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 623
    const-string v4, "sn_user"

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/xueqiu/android/base/storage/UserTable;->contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 630
    :catch_0
    move-exception v3

    .line 631
    :try_start_3
    const-string v4, "DBManager"

    const-string v5, "saveSimpleUsers"

    invoke-static {v4, v5, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 633
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 608
    :catch_1
    move-exception v3

    .line 609
    :try_start_4
    const-string v5, "DBManager"

    const-string v6, ""

    invoke-static {v5, v6, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 611
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v3, v11

    .line 612
    goto :goto_2

    .line 611
    :catchall_0
    move-exception v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 633
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 634
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v3

    .line 625
    :cond_3
    :try_start_6
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/xueqiu/android/base/storage/DatabaseCache;->cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 626
    const-string v3, "sn_user"

    const/4 v4, 0x0

    invoke-static {v10}, Lcom/xueqiu/android/base/storage/UserTable;->contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_1

    .line 629
    :cond_4
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 633
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_5
    move-object v3, v11

    goto/16 :goto_2
.end method

.method public updateTalkByMessages(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1361
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getReadableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v3

    .line 1362
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1363
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 1364
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 1365
    if-nez v1, :cond_1

    .line 1366
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(Lcom/xueqiu/android/message/model/Message;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 1368
    :cond_1
    if-nez v1, :cond_2

    .line 1369
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->createTalk()Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 1370
    invoke-virtual {v1, v11}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 1371
    invoke-virtual {v1, v10}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1373
    :cond_2
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getReadAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_5

    .line 1376
    invoke-virtual {v0, v10}, Lcom/xueqiu/android/message/model/Message;->setNotify(Z)V

    .line 1383
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_0

    .line 1384
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    if-eq v2, v13, :cond_3

    .line 1385
    invoke-direct {p0, v3, v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->collapseTalk(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/model/Talk;)V

    .line 1387
    :cond_3
    invoke-virtual {v1, v11}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1388
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->loadLastMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 1390
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_9

    .line 1391
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1392
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    invoke-direct {p0, v3, v6, v7}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(Lcom/xueqiu/android/base/storage/SQLiteDatabase;J)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    .line 1393
    if-eqz v2, :cond_4

    .line 1394
    const-string v6, "%s:%s"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v2, "\u6211"

    :goto_2
    aput-object v2, v7, v10

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 1406
    :cond_4
    :goto_3
    const-string v2, "DBManager"

    const-string v6, "update [talk:%s] [summary:%s] by [msg:%s]."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    aput-object v0, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    :cond_5
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1378
    invoke-virtual {v0, v10}, Lcom/xueqiu/android/message/model/Message;->setNotify(Z)V

    goto/16 :goto_1

    .line 1380
    :cond_6
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Message;->setNotify(Z)V

    goto/16 :goto_1

    .line 1394
    :cond_7
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1397
    :cond_8
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    .line 1400
    :cond_9
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    if-ne v2, v13, :cond_a

    .line 1401
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Message;->getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    .line 1403
    :cond_a
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    .line 1409
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DBManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalks(Ljava/util/List;)V

    .line 1410
    return-object p1
.end method

.method public updateUnfollowedUsers(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/base/storage/DatabaseCache;->invalidUsers(Ljava/util/Set;)V

    .line 641
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v3

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 644
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 645
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 648
    :cond_0
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 649
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 652
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 653
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 654
    const-string v5, "following"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v5, "sn_user"

    const-string v6, "userId in (?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v3, v5, v0, v6, v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 656
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    move v0, v1

    .line 664
    :goto_1
    return v0

    .line 661
    :cond_3
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 662
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_4
    move v0, v2

    .line 664
    goto :goto_1

    .line 661
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 662
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_5
    throw v0
.end method

.method public updateUserInfoById(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 668
    invoke-static {}, Lcom/xueqiu/android/base/storage/DatabaseCache;->getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    new-array v4, v0, [Ljava/lang/Long;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/storage/DatabaseCache;->invalidUsers(Ljava/util/Set;)V

    .line 669
    invoke-direct {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getWritableDatabase()Lcom/xueqiu/android/base/storage/SQLiteDatabase;

    move-result-object v2

    .line 671
    :try_start_0
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 672
    const-string v3, "sn_user"

    const-string v4, "userId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    .line 673
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 677
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    move v0, v1

    .line 681
    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v0
.end method
