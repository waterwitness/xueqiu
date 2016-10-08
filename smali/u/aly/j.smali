.class public final Lu/aly/j;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lcom/umeng/analytics/onlineconfig/c;
.implements Lu/aly/gz;


# instance fields
.field private a:Lu/aly/hb;

.field private b:Lu/aly/hc;

.field private c:Lcom/umeng/analytics/ReportPolicy$e;

.field private d:Lcom/umeng/analytics/g;

.field private e:Lu/aly/hg;

.field private f:Lu/aly/gc;

.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lu/aly/j;->a:Lu/aly/hb;

    .line 28
    iput-object v0, p0, Lu/aly/j;->b:Lu/aly/hc;

    .line 29
    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    .line 30
    iput-object v0, p0, Lu/aly/j;->d:Lcom/umeng/analytics/g;

    .line 32
    iput-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    .line 33
    iput-object v0, p0, Lu/aly/j;->f:Lu/aly/gc;

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/j;->g:I

    .line 40
    iput-object p1, p0, Lu/aly/j;->h:Landroid/content/Context;

    .line 42
    new-instance v0, Lu/aly/hb;

    invoke-direct {v0, p1}, Lu/aly/hb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/j;->a:Lu/aly/hb;

    .line 43
    invoke-static {p1}, Lu/aly/gt;->a(Landroid/content/Context;)Lu/aly/gc;

    move-result-object v0

    iput-object v0, p0, Lu/aly/j;->f:Lu/aly/gc;

    .line 44
    new-instance v0, Lu/aly/hg;

    invoke-direct {v0, p1}, Lu/aly/hg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    .line 45
    new-instance v0, Lu/aly/hc;

    invoke-direct {v0, p1}, Lu/aly/hc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/j;->b:Lu/aly/hc;

    .line 46
    iget-object v0, p0, Lu/aly/j;->b:Lu/aly/hc;

    iget-object v1, p0, Lu/aly/j;->e:Lu/aly/hg;

    .line 1074
    iput-object v1, v0, Lu/aly/hc;->a:Lu/aly/hg;

    .line 48
    invoke-static {p1}, Lcom/umeng/analytics/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/g;

    move-result-object v0

    iput-object v0, p0, Lu/aly/j;->d:Lcom/umeng/analytics/g;

    .line 49
    iget-object v0, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getReportPolicy(Landroid/content/Context;)[I

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Lu/aly/j;->a(II)V

    .line 51
    return-void
.end method

.method private static a([B)Lu/aly/dz;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p0, :cond_0

    .line 173
    :goto_0
    return-object v0

    .line 166
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/dz;

    invoke-direct {v1}, Lu/aly/dz;-><init>()V

    .line 167
    new-instance v2, Lu/aly/fe;

    invoke-direct {v2}, Lu/aly/fe;-><init>()V

    invoke-virtual {v2, v1, p0}, Lu/aly/fe;->a(Lu/aly/fa;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 305
    :pswitch_0
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$a;-><init>()V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    .line 309
    :goto_0
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report policy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/es;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void

    .line 287
    :pswitch_1
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$a;-><init>()V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    goto :goto_0

    .line 290
    :pswitch_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$b;

    iget-object v1, p0, Lu/aly/j;->e:Lu/aly/hg;

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(Lu/aly/hg;J)V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    goto :goto_0

    .line 293
    :pswitch_3
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    iget-object v1, p0, Lu/aly/j;->e:Lu/aly/hg;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$d;-><init>(Lu/aly/hg;)V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    goto :goto_0

    .line 296
    :pswitch_4
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$e;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$e;-><init>()V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    goto :goto_0

    .line 299
    :pswitch_5
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$f;

    iget-object v1, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    goto :goto_0

    .line 302
    :pswitch_6
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$c;

    iget-object v1, p0, Lu/aly/j;->a:Lu/aly/hb;

    invoke-direct {v0, v1, p2}, Lcom/umeng/analytics/ReportPolicy$c;-><init>(Lu/aly/hb;I)V

    iput-object v0, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lu/aly/dz;)[B
    .locals 1

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Lu/aly/fh;

    invoke-direct {v0}, Lu/aly/fh;-><init>()V

    invoke-virtual {v0, p0}, Lu/aly/fh;->a(Lu/aly/fa;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget-object v0, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "MobclickAgent"

    const-string v2, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0, v2}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v0, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/g;->b()[B

    move-result-object v0

    .line 116
    if-nez v0, :cond_2

    move-object v0, v1

    .line 119
    :goto_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lu/aly/j;->a:Lu/aly/hb;

    invoke-virtual {v2}, Lu/aly/hb;->a()I

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v0}, Lu/aly/j;->a([B)Lu/aly/dz;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_3
    if-nez v0, :cond_b

    new-instance v0, Lu/aly/dz;

    invoke-direct {v0}, Lu/aly/dz;-><init>()V

    move-object v4, v0

    .line 125
    :goto_2
    iget-object v2, p0, Lu/aly/j;->a:Lu/aly/hb;

    .line 2097
    iget-object v0, v2, Lu/aly/hb;->c:Landroid/content/Context;

    .line 3018
    const-string v5, "umeng_general_config"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2097
    const-string v5, "session_id"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2070
    if-eqz v5, :cond_5

    .line 2074
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2075
    :try_start_1
    iget-object v0, v2, Lu/aly/hb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2079
    iget-object v0, v2, Lu/aly/hb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2081
    iget-object v0, v2, Lu/aly/hb;->b:Lu/aly/i;

    if-eqz v0, :cond_4

    .line 2082
    iget-object v0, v2, Lu/aly/hb;->b:Lu/aly/i;

    .line 3347
    iput-object v0, v4, Lu/aly/dz;->e:Lu/aly/i;

    .line 2083
    const/4 v0, 0x0

    iput-object v0, v2, Lu/aly/hb;->b:Lu/aly/i;

    .line 2074
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    :try_start_2
    invoke-virtual {v2}, Lu/aly/hb;->b()Lu/aly/p;

    move-result-object v0

    .line 4275
    iput-object v0, v4, Lu/aly/dz;->b:Lu/aly/p;

    .line 2089
    invoke-virtual {v2}, Lu/aly/hb;->c()Lu/aly/ab;

    move-result-object v0

    .line 4299
    iput-object v0, v4, Lu/aly/dz;->c:Lu/aly/ab;

    .line 2090
    invoke-virtual {v2}, Lu/aly/hb;->d()Lu/aly/cl;

    move-result-object v0

    .line 4323
    iput-object v0, v4, Lu/aly/dz;->d:Lu/aly/cl;

    .line 2091
    invoke-virtual {v2}, Lu/aly/hb;->g()Lu/aly/v;

    move-result-object v0

    .line 5251
    iput-object v0, v4, Lu/aly/dz;->a:Lu/aly/v;

    .line 2092
    invoke-virtual {v2}, Lu/aly/hb;->e()Lu/aly/bn;

    move-result-object v0

    .line 5449
    iput-object v0, v4, Lu/aly/dz;->h:Lu/aly/bn;

    .line 2093
    invoke-virtual {v2}, Lu/aly/hb;->f()Lu/aly/bh;

    move-result-object v0

    .line 5473
    iput-object v0, v4, Lu/aly/dz;->i:Lu/aly/bh;

    .line 127
    :cond_5
    sget-boolean v0, Lu/aly/es;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lu/aly/dz;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6421
    iget-object v0, v4, Lu/aly/dz;->g:Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 135
    if-nez v2, :cond_7

    .line 136
    const-string v0, "MobclickAgent"

    const-string v2, "missing Activities or PageViews"

    invoke-static {v0, v2}, Lu/aly/es;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :cond_7
    :try_start_3
    invoke-static {v4}, Lu/aly/j;->a(Lu/aly/dz;)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 143
    :try_start_4
    sget-boolean v2, Lu/aly/es;->a:Z

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "MobclickAgent"

    invoke-virtual {v4}, Lu/aly/dz;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/aly/es;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 148
    :catch_0
    move-exception v2

    :goto_5
    :try_start_5
    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const-string v2, "MobclickAgent"

    const-string v3, "Fail to construct message ..."

    invoke-static {v2, v3, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    iget-object v0, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/g;->c()V

    move-object v0, v1

    .line 157
    goto/16 :goto_0

    .line 2075
    :cond_8
    :try_start_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ha;

    .line 2076
    invoke-interface {v0, v4, v5}, Lu/aly/ha;->a(Lu/aly/dz;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2074
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 129
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dn;

    .line 7323
    iget-object v6, v0, Lu/aly/dn;->e:Ljava/util/List;

    if-nez v6, :cond_a

    move v0, v3

    .line 130
    :goto_6
    if-lez v0, :cond_6

    .line 131
    const/4 v0, 0x1

    move v2, v0

    goto :goto_4

    .line 7323
    :cond_a
    iget-object v0, v0, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v0

    goto :goto_6

    .line 148
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :cond_b
    move-object v4, v0

    goto/16 :goto_2
.end method

.method private d()V
    .locals 14

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    invoke-virtual {v0}, Lu/aly/hg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v2, p0, Lu/aly/j;->a:Lu/aly/hb;

    new-instance v3, Lu/aly/i;

    iget-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    .line 8098
    invoke-virtual {v0}, Lu/aly/hg;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    :goto_0
    invoke-direct {v3, v0, v1}, Lu/aly/i;-><init>(J)V

    invoke-virtual {v2, v3}, Lu/aly/hb;->a(Lu/aly/i;)V

    .line 8230
    :cond_0
    iget-object v0, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/g;

    move-result-object v6

    .line 8232
    invoke-virtual {v6}, Lcom/umeng/analytics/g;->f()Z

    move-result v7

    .line 8235
    if-eqz v7, :cond_3

    .line 8236
    invoke-virtual {v6}, Lcom/umeng/analytics/g;->d()[B

    move-result-object v0

    .line 8253
    :goto_1
    iget-object v1, p0, Lu/aly/j;->b:Lu/aly/hc;

    invoke-virtual {v1, v0}, Lu/aly/hc;->a([B)I

    move-result v1

    .line 8255
    packed-switch v1, :pswitch_data_0

    .line 8274
    :cond_1
    :goto_2
    return-void

    .line 8098
    :cond_2
    iget-wide v0, v0, Lu/aly/hg;->f:J

    goto :goto_0

    .line 8238
    :cond_3
    iget-object v8, p0, Lu/aly/j;->f:Lu/aly/gc;

    .line 9050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 9051
    iget-wide v0, v8, Lu/aly/gc;->b:J

    sub-long v0, v10, v0

    iget-wide v2, v8, Lu/aly/gc;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 9052
    const/4 v0, 0x0

    .line 9054
    iget-object v1, v8, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v0

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9065
    if-eqz v5, :cond_5

    .line 9066
    invoke-virtual {v8}, Lu/aly/gc;->a()V

    .line 9067
    invoke-virtual {v8}, Lu/aly/gc;->c()V

    .line 9070
    :cond_5
    iput-wide v10, v8, Lu/aly/gc;->b:J

    .line 8239
    :cond_6
    invoke-direct {p0}, Lu/aly/j;->c()[B

    move-result-object v0

    .line 8241
    if-nez v0, :cond_13

    .line 8242
    const-string v0, "MobclickAgent"

    const-string v1, "message is null"

    invoke-static {v0, v1}, Lu/aly/es;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 9054
    :cond_7
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 9055
    invoke-virtual {v0}, Lu/aly/a;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 9056
    const/4 v0, 0x1

    move v5, v0

    .line 9057
    goto :goto_3

    .line 10039
    :cond_8
    iget-object v1, v0, Lu/aly/a;->c:Lu/aly/bb;

    .line 10041
    if-nez v1, :cond_d

    const/4 v2, 0x0

    move-object v4, v2

    .line 10042
    :goto_4
    if-nez v1, :cond_e

    const/4 v2, 0x0

    move v3, v2

    .line 10043
    :goto_5
    invoke-virtual {v0}, Lu/aly/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 11092
    if-nez v2, :cond_f

    .line 11093
    const/4 v2, 0x0

    .line 10045
    :cond_9
    :goto_6
    if-eqz v2, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 10046
    if-nez v1, :cond_a

    new-instance v1, Lu/aly/bb;

    invoke-direct {v1}, Lu/aly/bb;-><init>()V

    .line 11176
    :cond_a
    iput-object v2, v1, Lu/aly/bb;->a:Ljava/lang/String;

    .line 10049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 11200
    iput-wide v12, v1, Lu/aly/bb;->b:J

    .line 11201
    invoke-virtual {v1}, Lu/aly/bb;->a()V

    .line 10050
    add-int/lit8 v3, v3, 0x1

    .line 11223
    iput v3, v1, Lu/aly/bb;->c:I

    .line 11224
    invoke-virtual {v1}, Lu/aly/bb;->b()V

    .line 10052
    new-instance v3, Lu/aly/av;

    invoke-direct {v3}, Lu/aly/av;-><init>()V

    .line 10053
    iget-object v12, v0, Lu/aly/a;->a:Ljava/lang/String;

    .line 12187
    iput-object v12, v3, Lu/aly/av;->a:Ljava/lang/String;

    .line 12235
    iput-object v2, v3, Lu/aly/av;->c:Ljava/lang/String;

    .line 13211
    iput-object v4, v3, Lu/aly/av;->b:Ljava/lang/String;

    .line 14196
    iget-wide v12, v1, Lu/aly/bb;->b:J

    .line 14259
    iput-wide v12, v3, Lu/aly/av;->d:J

    .line 14260
    invoke-virtual {v3}, Lu/aly/av;->b()V

    .line 10058
    iget-object v2, v0, Lu/aly/a;->b:Ljava/util/List;

    if-nez v2, :cond_b

    .line 10059
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 10062
    :cond_b
    iget-object v2, v0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10064
    iget-object v2, v0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_c

    .line 10065
    iget-object v2, v0, Lu/aly/a;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10068
    :cond_c
    iput-object v1, v0, Lu/aly/a;->c:Lu/aly/bb;

    .line 10069
    const/4 v0, 0x1

    .line 9060
    :goto_7
    if-eqz v0, :cond_4

    .line 9061
    const/4 v0, 0x1

    move v5, v0

    goto/16 :goto_3

    .line 10172
    :cond_d
    iget-object v2, v1, Lu/aly/bb;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_4

    .line 10219
    :cond_e
    iget v2, v1, Lu/aly/bb;->c:I

    move v3, v2

    goto :goto_5

    .line 11096
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 11098
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_10

    .line 11099
    const/4 v2, 0x0

    goto :goto_6

    .line 11102
    :cond_10
    const-string v12, "0"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 11103
    const/4 v2, 0x0

    goto :goto_6

    .line 11106
    :cond_11
    const-string v12, "unknown"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 11107
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 10072
    :cond_12
    const/4 v0, 0x0

    goto :goto_7

    .line 8246
    :cond_13
    iget-object v1, p0, Lu/aly/j;->h:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/fb;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fb;

    move-result-object v0

    .line 8247
    invoke-virtual {v0}, Lu/aly/fb;->a()[B

    move-result-object v0

    .line 8248
    invoke-virtual {v6}, Lcom/umeng/analytics/g;->c()V

    goto/16 :goto_1

    .line 8257
    :pswitch_0
    iget-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    invoke-virtual {v0}, Lu/aly/hg;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8258
    iget-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    .line 15086
    iget-object v0, v0, Lu/aly/hg;->g:Landroid/content/Context;

    .line 16018
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15086
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8261
    :cond_14
    iget-object v0, p0, Lu/aly/j;->f:Lu/aly/gc;

    invoke-virtual {v0}, Lu/aly/gc;->b()V

    .line 8262
    iget-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    invoke-virtual {v0}, Lu/aly/hg;->b()V

    .line 8264
    if-eqz v7, :cond_1

    .line 8265
    invoke-virtual {v6}, Lcom/umeng/analytics/g;->e()V

    goto/16 :goto_2

    .line 8269
    :pswitch_1
    iget-object v0, p0, Lu/aly/j;->e:Lu/aly/hg;

    invoke-virtual {v0}, Lu/aly/hg;->b()V

    .line 8271
    if-eqz v7, :cond_1

    .line 8272
    invoke-virtual {v6}, Lcom/umeng/analytics/g;->e()V

    goto/16 :goto_2

    .line 8276
    :pswitch_2
    if-nez v7, :cond_15

    invoke-virtual {v6, v0}, Lcom/umeng/analytics/g;->b([B)V

    .line 8277
    :cond_15
    const-string v0, "MobclickAgent"

    const-string v1, "connection error"

    invoke-static {v0, v1}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 8255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/er;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lu/aly/j;->d()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-boolean v0, Lu/aly/es;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "network is unavailable"

    invoke-static {v0, v1}, Lu/aly/es;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 314
    long-to-int v0, p2

    invoke-static {p1, v0}, Lcom/umeng/analytics/AnalyticsConfig;->setReportPolicy(II)V

    .line 315
    long-to-int v0, p2

    invoke-direct {p0, p1, v0}, Lu/aly/j;->a(II)V

    .line 316
    return-void
.end method

.method public final a(Lu/aly/ha;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v2, p0, Lu/aly/j;->a:Lu/aly/hb;

    invoke-virtual {v2, p1}, Lu/aly/hb;->a(Lu/aly/ha;)V

    .line 73
    :cond_0
    instance-of v2, p1, Lu/aly/dn;

    .line 1187
    iget-object v3, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/er;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1188
    sget-boolean v2, Lu/aly/es;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "MobclickAgent"

    const-string v3, "network is unavailable"

    invoke-static {v2, v3}, Lu/aly/es;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .line 73
    :goto_0
    if-eqz v2, :cond_6

    .line 74
    invoke-direct {p0}, Lu/aly/j;->d()V

    .line 78
    :cond_2
    :goto_1
    return-void

    .line 1192
    :cond_3
    iget-object v3, p0, Lu/aly/j;->e:Lu/aly/hg;

    invoke-virtual {v3}, Lu/aly/hg;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    .line 1193
    goto :goto_0

    .line 1196
    :cond_4
    sget-boolean v3, Lu/aly/es;->a:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lu/aly/j;->h:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/er;->q(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v0

    .line 1198
    goto :goto_0

    .line 1202
    :cond_5
    iget-object v3, p0, Lu/aly/j;->c:Lcom/umeng/analytics/ReportPolicy$e;

    invoke-virtual {v3, v2}, Lcom/umeng/analytics/ReportPolicy$e;->a(Z)Z

    move-result v2

    goto :goto_0

    .line 1206
    :cond_6
    iget-object v2, p0, Lu/aly/j;->a:Lu/aly/hb;

    invoke-virtual {v2}, Lu/aly/hb;->a()I

    move-result v2

    iget v3, p0, Lu/aly/j;->g:I

    if-le v2, v3, :cond_7

    .line 75
    :goto_2
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lu/aly/j;->b()V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1206
    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lu/aly/j;->a:Lu/aly/hb;

    invoke-virtual {v0}, Lu/aly/hb;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lu/aly/j;->c()[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lu/aly/j;->d:Lcom/umeng/analytics/g;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/g;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lu/aly/j;->d:Lcom/umeng/analytics/g;

    invoke-virtual {v1}, Lcom/umeng/analytics/g;->c()V

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Lu/aly/ha;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lu/aly/j;->a:Lu/aly/hb;

    invoke-virtual {v0, p1}, Lu/aly/hb;->a(Lu/aly/ha;)V

    .line 85
    return-void
.end method
