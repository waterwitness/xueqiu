.class public final Lcom/b/a/a/h;
.super Ljava/lang/Object;
.source "URIUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 67
    .line 68
    const-string v7, "_data"

    .line 69
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v2, v0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 74
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    :goto_1
    if-eqz v6, :cond_1

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_1
    throw v0

    .line 77
    :cond_2
    if-eqz v1, :cond_3

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 80
    goto :goto_0

    .line 76
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method
