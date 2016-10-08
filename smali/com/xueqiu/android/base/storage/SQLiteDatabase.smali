.class public Lcom/xueqiu/android/base/storage/SQLiteDatabase;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# instance fields
.field cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field droidDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 40
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 204
    :cond_1
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    :cond_1
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    :cond_1
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_1
    return-void
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 146
    :goto_0
    return-wide v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 146
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lnet/sqlcipher/database/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 156
    :goto_0
    return-wide v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 156
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 59
    :cond_1
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->cipherDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->droidDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
