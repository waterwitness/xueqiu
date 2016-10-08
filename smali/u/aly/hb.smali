.class public final Lu/aly/hb;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ha;",
            ">;"
        }
    .end annotation
.end field

.field b:Lu/aly/i;

.field c:Landroid/content/Context;

.field private d:Lu/aly/p;

.field private e:Lu/aly/ab;

.field private f:Lu/aly/cl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/hb;->a:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lu/aly/hb;->b:Lu/aly/i;

    .line 31
    iput-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    .line 32
    iput-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    .line 33
    iput-object v1, p0, Lu/aly/hb;->f:Lu/aly/cl;

    .line 35
    iput-object v1, p0, Lu/aly/hb;->c:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lu/aly/hb;->c:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    iget-object v1, p0, Lu/aly/hb;->b:Lu/aly/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_0
    monitor-exit p0

    return v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lu/aly/ha;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lu/aly/i;)V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lu/aly/hb;->b:Lu/aly/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lu/aly/p;
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->d:Lu/aly/p;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lu/aly/p;

    invoke-direct {v0}, Lu/aly/p;-><init>()V

    iput-object v0, p0, Lu/aly/hb;->d:Lu/aly/p;

    .line 107
    iget-object v0, p0, Lu/aly/hb;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    :try_start_1
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1262
    iput-object v2, v1, Lu/aly/p;->a:Ljava/lang/String;

    .line 1162
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1413
    iput-object v2, v1, Lu/aly/p;->g:Ljava/lang/String;

    .line 1164
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1165
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    sget-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 1437
    iput-object v2, v1, Lu/aly/p;->h:Ljava/lang/String;

    .line 1166
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    sget-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 1461
    iput-object v2, v1, Lu/aly/p;->i:Ljava/lang/String;

    .line 1169
    :cond_0
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    invoke-static {v0}, Lu/aly/er;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2333
    iput-object v2, v1, Lu/aly/p;->d:Ljava/lang/String;

    .line 1170
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    sget-object v2, Lu/aly/dm;->a:Lu/aly/dm;

    .line 2365
    iput-object v2, v1, Lu/aly/p;->e:Lu/aly/dm;

    .line 1171
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    const-string v2, "5.2.4"

    .line 2389
    iput-object v2, v1, Lu/aly/p;->f:Ljava/lang/String;

    .line 1172
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    invoke-static {v0}, Lu/aly/er;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3286
    iput-object v2, v1, Lu/aly/p;->b:Ljava/lang/String;

    .line 1173
    iget-object v1, p0, Lu/aly/hb;->d:Lu/aly/p;

    invoke-static {v0}, Lu/aly/er;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3310
    iput v0, v1, Lu/aly/p;->c:I

    .line 3311
    invoke-virtual {v1}, Lu/aly/p;->c()V

    .line 1175
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1176
    iget-object v0, p0, Lu/aly/hb;->d:Lu/aly/p;

    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    .line 3485
    iput v1, v0, Lu/aly/p;->j:I

    .line 3486
    invoke-virtual {v0}, Lu/aly/p;->h()V

    .line 1177
    iget-object v0, p0, Lu/aly/hb;->d:Lu/aly/p;

    const-string v1, "5.2.4.1"

    .line 4389
    iput-object v1, v0, Lu/aly/p;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lu/aly/hb;->d:Lu/aly/p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1180
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lu/aly/ab;
    .locals 5

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Lu/aly/ab;

    invoke-direct {v0}, Lu/aly/ab;-><init>()V

    iput-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    .line 116
    iget-object v0, p0, Lu/aly/hb;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5186
    :try_start_1
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    invoke-static {}, Lu/aly/er;->a()Ljava/lang/String;

    move-result-object v2

    .line 5438
    iput-object v2, v1, Lu/aly/ab;->f:Ljava/lang/String;

    .line 5187
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    invoke-static {v0}, Lu/aly/er;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6318
    iput-object v2, v1, Lu/aly/ab;->a:Ljava/lang/String;

    .line 5188
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    invoke-static {v0}, Lu/aly/er;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6342
    iput-object v2, v1, Lu/aly/ab;->b:Ljava/lang/String;

    .line 5189
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    invoke-static {v0}, Lu/aly/er;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6366
    iput-object v2, v1, Lu/aly/ab;->c:Ljava/lang/String;

    .line 5190
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6414
    iput-object v2, v1, Lu/aly/ab;->e:Ljava/lang/String;

    .line 5191
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    const-string v2, "Android"

    .line 6462
    iput-object v2, v1, Lu/aly/ab;->g:Ljava/lang/String;

    .line 5192
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 6486
    iput-object v2, v1, Lu/aly/ab;->h:Ljava/lang/String;

    .line 5194
    invoke-static {v0}, Lu/aly/er;->l(Landroid/content/Context;)[I

    move-result-object v0

    .line 5196
    if-eqz v0, :cond_0

    .line 5197
    iget-object v1, p0, Lu/aly/hb;->e:Lu/aly/ab;

    new-instance v2, Lu/aly/da;

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-direct {v2, v3, v0}, Lu/aly/da;-><init>(II)V

    .line 6510
    iput-object v2, v1, Lu/aly/ab;->i:Lu/aly/da;

    .line 5200
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 5204
    :cond_1
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 6580
    iput-object v1, v0, Lu/aly/ab;->l:Ljava/lang/String;

    .line 5205
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 6604
    iput-object v1, v0, Lu/aly/ab;->m:Ljava/lang/String;

    .line 5206
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-wide v2, Landroid/os/Build;->TIME:J

    .line 6628
    iput-wide v2, v0, Lu/aly/ab;->n:J

    .line 6629
    invoke-virtual {v0}, Lu/aly/ab;->q()V

    .line 5207
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6651
    iput-object v1, v0, Lu/aly/ab;->o:Ljava/lang/String;

    .line 5208
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 6675
    iput-object v1, v0, Lu/aly/ab;->p:Ljava/lang/String;

    .line 5209
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 6699
    iput-object v1, v0, Lu/aly/ab;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lu/aly/hb;->e:Lu/aly/ab;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5211
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lu/aly/cl;
    .locals 4

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->f:Lu/aly/cl;

    if-nez v0, :cond_2

    .line 125
    new-instance v0, Lu/aly/cl;

    invoke-direct {v0}, Lu/aly/cl;-><init>()V

    iput-object v0, p0, Lu/aly/hb;->f:Lu/aly/cl;

    .line 126
    iget-object v0, p0, Lu/aly/hb;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7217
    :try_start_1
    invoke-static {v0}, Lu/aly/er;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 7219
    const-string v2, "Wi-Fi"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7220
    iget-object v2, p0, Lu/aly/hb;->f:Lu/aly/cl;

    sget-object v3, Lu/aly/h;->c:Lu/aly/h;

    .line 7456
    iput-object v3, v2, Lu/aly/cl;->i:Lu/aly/h;

    .line 7227
    :goto_0
    const-string v2, ""

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7228
    iget-object v2, p0, Lu/aly/hb;->f:Lu/aly/cl;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 9480
    iput-object v1, v2, Lu/aly/cl;->j:Ljava/lang/String;

    .line 7231
    :cond_0
    iget-object v1, p0, Lu/aly/hb;->f:Lu/aly/cl;

    invoke-static {v0}, Lu/aly/er;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 10377
    iput-object v2, v1, Lu/aly/cl;->f:Ljava/lang/String;

    .line 7233
    invoke-static {v0}, Lu/aly/er;->i(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 7235
    iget-object v2, p0, Lu/aly/hb;->f:Lu/aly/cl;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 11307
    iput-object v3, v2, Lu/aly/cl;->c:Ljava/lang/String;

    .line 7236
    iget-object v2, p0, Lu/aly/hb;->f:Lu/aly/cl;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 12283
    iput-object v1, v2, Lu/aly/cl;->b:Ljava/lang/String;

    .line 7237
    iget-object v1, p0, Lu/aly/hb;->f:Lu/aly/cl;

    invoke-static {v0}, Lu/aly/er;->h(Landroid/content/Context;)I

    move-result v0

    .line 13260
    iput v0, v1, Lu/aly/cl;->a:I

    .line 13261
    invoke-virtual {v1}, Lu/aly/cl;->b()V

    .line 7239
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sAge:I

    if-nez v0, :cond_1

    .line 7240
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->sGender:Lcom/umeng/analytics/Gender;

    if-nez v0, :cond_1

    .line 7241
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->sId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7242
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->sSource:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7243
    :cond_1
    new-instance v0, Lu/aly/ef;

    invoke-direct {v0}, Lu/aly/ef;-><init>()V

    .line 7244
    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->sAge:I

    .line 14215
    iput v1, v0, Lu/aly/ef;->b:I

    .line 14216
    invoke-virtual {v0}, Lu/aly/ef;->c()V

    .line 7245
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->sGender:Lcom/umeng/analytics/Gender;

    invoke-static {v1}, Lcom/umeng/analytics/Gender;->transGender(Lcom/umeng/analytics/Gender;)Lu/aly/au;

    move-result-object v1

    .line 15191
    iput-object v1, v0, Lu/aly/ef;->a:Lu/aly/au;

    .line 7246
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->sId:Ljava/lang/String;

    .line 15238
    iput-object v1, v0, Lu/aly/ef;->c:Ljava/lang/String;

    .line 7247
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->sSource:Ljava/lang/String;

    .line 15262
    iput-object v1, v0, Lu/aly/ef;->d:Ljava/lang/String;

    .line 7249
    iget-object v1, p0, Lu/aly/hb;->f:Lu/aly/cl;

    .line 15504
    iput-object v0, v1, Lu/aly/cl;->k:Lu/aly/ef;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lu/aly/hb;->f:Lu/aly/cl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 7221
    :cond_3
    :try_start_3
    const-string v2, "2G/3G"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7222
    iget-object v2, p0, Lu/aly/hb;->f:Lu/aly/cl;

    sget-object v3, Lu/aly/h;->b:Lu/aly/h;

    .line 8456
    iput-object v3, v2, Lu/aly/cl;->i:Lu/aly/h;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 7252
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 7224
    :cond_4
    :try_start_5
    iget-object v2, p0, Lu/aly/hb;->f:Lu/aly/cl;

    sget-object v3, Lu/aly/h;->a:Lu/aly/h;

    .line 9456
    iput-object v3, v2, Lu/aly/cl;->i:Lu/aly/h;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public final e()Lu/aly/bn;
    .locals 1

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/gt;->b(Landroid/content/Context;)Lu/aly/gr;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/gr;->a()Lu/aly/bn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lu/aly/bh;
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/gt;->a(Landroid/content/Context;)Lu/aly/gc;

    move-result-object v0

    .line 16075
    iget-object v0, v0, Lu/aly/gc;->a:Lu/aly/bh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lu/aly/v;
    .locals 4

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lu/aly/hb;->c:Landroid/content/Context;

    .line 17018
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 16104
    new-instance v0, Lu/aly/v;

    invoke-direct {v0}, Lu/aly/v;-><init>()V

    .line 16106
    const-string v2, "failed_requests "

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 17202
    iput v2, v0, Lu/aly/v;->b:I

    .line 17203
    invoke-virtual {v0}, Lu/aly/v;->b()V

    .line 16107
    const-string v2, "last_request_spent_ms"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 17225
    iput v2, v0, Lu/aly/v;->c:I

    .line 17226
    invoke-virtual {v0}, Lu/aly/v;->d()V

    .line 16108
    const-string v2, "successful_request"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 18179
    iput v1, v0, Lu/aly/v;->a:I

    .line 18180
    invoke-virtual {v0}, Lu/aly/v;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    new-instance v0, Lu/aly/v;

    invoke-direct {v0}, Lu/aly/v;-><init>()V

    goto :goto_0
.end method
